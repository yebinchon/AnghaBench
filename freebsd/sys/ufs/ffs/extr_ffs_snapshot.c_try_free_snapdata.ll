; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_snapshot.c_try_free_snapdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_snapshot.c_try_free_snapdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snapdata* }
%struct.snapdata = type { i32, i64, i32*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"try_free_snapdata\00", align 1
@VV_COPYONWRITE = common dso_local global i32 0, align 4
@LK_DRAIN = common dso_local global i32 0, align 4
@LK_INTERLOCK = common dso_local global i32 0, align 4
@LK_RELEASE = common dso_local global i32 0, align 4
@M_UFSMNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnode*)* @try_free_snapdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @try_free_snapdata(%struct.vnode* %0) #0 {
  %2 = alloca %struct.vnode*, align 8
  %3 = alloca %struct.snapdata*, align 8
  %4 = alloca i32*, align 8
  store %struct.vnode* %0, %struct.vnode** %2, align 8
  %5 = load %struct.vnode*, %struct.vnode** %2, align 8
  %6 = call i32 @ASSERT_VI_LOCKED(%struct.vnode* %5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.vnode*, %struct.vnode** %2, align 8
  %8 = getelementptr inbounds %struct.vnode, %struct.vnode* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.snapdata*, %struct.snapdata** %10, align 8
  store %struct.snapdata* %11, %struct.snapdata** %3, align 8
  %12 = load %struct.snapdata*, %struct.snapdata** %3, align 8
  %13 = icmp eq %struct.snapdata* %12, null
  br i1 %13, label %26, label %14

14:                                               ; preds = %1
  %15 = load %struct.snapdata*, %struct.snapdata** %3, align 8
  %16 = getelementptr inbounds %struct.snapdata, %struct.snapdata* %15, i32 0, i32 3
  %17 = call i32* @TAILQ_FIRST(i32* %16)
  %18 = icmp ne i32* %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  %20 = load %struct.vnode*, %struct.vnode** %2, align 8
  %21 = getelementptr inbounds %struct.vnode, %struct.vnode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @VV_COPYONWRITE, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19, %14, %1
  %27 = load %struct.vnode*, %struct.vnode** %2, align 8
  %28 = call i32 @VI_UNLOCK(%struct.vnode* %27)
  br label %68

29:                                               ; preds = %19
  %30 = load %struct.vnode*, %struct.vnode** %2, align 8
  %31 = getelementptr inbounds %struct.vnode, %struct.vnode* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store %struct.snapdata* null, %struct.snapdata** %33, align 8
  %34 = load i32, i32* @VV_COPYONWRITE, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.vnode*, %struct.vnode** %2, align 8
  %37 = getelementptr inbounds %struct.vnode, %struct.vnode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.snapdata*, %struct.snapdata** %3, align 8
  %41 = getelementptr inbounds %struct.snapdata, %struct.snapdata* %40, i32 0, i32 0
  %42 = load i32, i32* @LK_DRAIN, align 4
  %43 = load i32, i32* @LK_INTERLOCK, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.vnode*, %struct.vnode** %2, align 8
  %46 = call i32* @VI_MTX(%struct.vnode* %45)
  %47 = call i32 @lockmgr(i32* %41, i32 %44, i32* %46)
  %48 = load %struct.snapdata*, %struct.snapdata** %3, align 8
  %49 = getelementptr inbounds %struct.snapdata, %struct.snapdata* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %4, align 8
  %51 = load %struct.snapdata*, %struct.snapdata** %3, align 8
  %52 = getelementptr inbounds %struct.snapdata, %struct.snapdata* %51, i32 0, i32 2
  store i32* null, i32** %52, align 8
  %53 = load %struct.snapdata*, %struct.snapdata** %3, align 8
  %54 = getelementptr inbounds %struct.snapdata, %struct.snapdata* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load %struct.snapdata*, %struct.snapdata** %3, align 8
  %56 = getelementptr inbounds %struct.snapdata, %struct.snapdata* %55, i32 0, i32 0
  %57 = load i32, i32* @LK_RELEASE, align 4
  %58 = call i32 @lockmgr(i32* %56, i32 %57, i32* null)
  %59 = load i32*, i32** %4, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %29
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* @M_UFSMNT, align 4
  %64 = call i32 @free(i32* %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %29
  %66 = load %struct.snapdata*, %struct.snapdata** %3, align 8
  %67 = call i32 @ffs_snapdata_free(%struct.snapdata* %66)
  br label %68

68:                                               ; preds = %65, %26
  ret void
}

declare dso_local i32 @ASSERT_VI_LOCKED(%struct.vnode*, i8*) #1

declare dso_local i32* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @VI_UNLOCK(%struct.vnode*) #1

declare dso_local i32 @lockmgr(i32*, i32, i32*) #1

declare dso_local i32* @VI_MTX(%struct.vnode*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @ffs_snapdata_free(%struct.snapdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
