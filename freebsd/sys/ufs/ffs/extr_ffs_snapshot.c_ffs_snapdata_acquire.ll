; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_snapshot.c_ffs_snapdata_acquire.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_snapshot.c_ffs_snapdata_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snapdata = type { i32 }
%struct.vnode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snapdata* }

@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"leaked sn, lockmgr error %d\00", align 1
@LK_INTERLOCK = common dso_local global i32 0, align 4
@LK_SLEEPFAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snapdata* (%struct.vnode*)* @ffs_snapdata_acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snapdata* @ffs_snapdata_acquire(%struct.vnode* %0) #0 {
  %2 = alloca %struct.vnode*, align 8
  %3 = alloca %struct.snapdata*, align 8
  %4 = alloca %struct.snapdata*, align 8
  %5 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %2, align 8
  %6 = call %struct.snapdata* (...) @ffs_snapdata_alloc()
  store %struct.snapdata* %6, %struct.snapdata** %3, align 8
  br label %7

7:                                                ; preds = %51, %1
  %8 = load %struct.vnode*, %struct.vnode** %2, align 8
  %9 = call i32 @VI_LOCK(%struct.vnode* %8)
  %10 = load %struct.vnode*, %struct.vnode** %2, align 8
  %11 = getelementptr inbounds %struct.vnode, %struct.vnode* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.snapdata*, %struct.snapdata** %13, align 8
  store %struct.snapdata* %14, %struct.snapdata** %4, align 8
  %15 = load %struct.snapdata*, %struct.snapdata** %4, align 8
  %16 = icmp eq %struct.snapdata* %15, null
  br i1 %16, label %17, label %37

17:                                               ; preds = %7
  %18 = load %struct.snapdata*, %struct.snapdata** %3, align 8
  %19 = getelementptr inbounds %struct.snapdata, %struct.snapdata* %18, i32 0, i32 0
  %20 = load i32, i32* @LK_EXCLUSIVE, align 4
  %21 = load i32, i32* @LK_NOWAIT, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @lockmgr(i32* %19, i32 %22, i32* null)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %26, %17
  %30 = load %struct.snapdata*, %struct.snapdata** %3, align 8
  %31 = load %struct.vnode*, %struct.vnode** %2, align 8
  %32 = getelementptr inbounds %struct.vnode, %struct.vnode* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store %struct.snapdata* %30, %struct.snapdata** %34, align 8
  store %struct.snapdata* %30, %struct.snapdata** %4, align 8
  %35 = load %struct.vnode*, %struct.vnode** %2, align 8
  %36 = call i32 @VI_UNLOCK(%struct.vnode* %35)
  store %struct.snapdata* null, %struct.snapdata** %3, align 8
  br label %52

37:                                               ; preds = %7
  %38 = load %struct.snapdata*, %struct.snapdata** %4, align 8
  %39 = getelementptr inbounds %struct.snapdata, %struct.snapdata* %38, i32 0, i32 0
  %40 = load i32, i32* @LK_INTERLOCK, align 4
  %41 = load i32, i32* @LK_EXCLUSIVE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @LK_SLEEPFAIL, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.vnode*, %struct.vnode** %2, align 8
  %46 = call i32* @VI_MTX(%struct.vnode* %45)
  %47 = call i32 @lockmgr(i32* %39, i32 %44, i32* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %37
  br label %52

51:                                               ; preds = %37
  br label %7

52:                                               ; preds = %50, %29
  %53 = load %struct.snapdata*, %struct.snapdata** %3, align 8
  %54 = icmp ne %struct.snapdata* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load %struct.snapdata*, %struct.snapdata** %3, align 8
  %57 = call i32 @ffs_snapdata_free(%struct.snapdata* %56)
  br label %58

58:                                               ; preds = %55, %52
  %59 = load %struct.snapdata*, %struct.snapdata** %4, align 8
  ret %struct.snapdata* %59
}

declare dso_local %struct.snapdata* @ffs_snapdata_alloc(...) #1

declare dso_local i32 @VI_LOCK(%struct.vnode*) #1

declare dso_local i32 @lockmgr(i32*, i32, i32*) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @VI_UNLOCK(%struct.vnode*) #1

declare dso_local i32* @VI_MTX(%struct.vnode*) #1

declare dso_local i32 @ffs_snapdata_free(%struct.snapdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
