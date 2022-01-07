; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_filt_vfsread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_filt_vfsread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.knote = type { i32, i64, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.vnode = type { i64 }
%struct.vattr = type { i64 }

@NOTE_REVOKE = common dso_local global i64 0, align 8
@VBAD = common dso_local global i64 0, align 8
@EV_EOF = common dso_local global i32 0, align 4
@EV_ONESHOT = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_4__* null, align 8
@NOTE_FILE_POLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, i64)* @filt_vfsread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filt_vfsread(%struct.knote* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.knote*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.vattr, align 8
  %8 = alloca i32, align 4
  store %struct.knote* %0, %struct.knote** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.knote*, %struct.knote** %4, align 8
  %10 = getelementptr inbounds %struct.knote, %struct.knote* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.vnode*
  store %struct.vnode* %12, %struct.vnode** %6, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @NOTE_REVOKE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %25, label %16

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %16
  %20 = load %struct.vnode*, %struct.vnode** %6, align 8
  %21 = getelementptr inbounds %struct.vnode, %struct.vnode* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VBAD, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %19, %2
  %26 = load %struct.vnode*, %struct.vnode** %6, align 8
  %27 = call i32 @VI_LOCK(%struct.vnode* %26)
  %28 = load i32, i32* @EV_EOF, align 4
  %29 = load i32, i32* @EV_ONESHOT, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.knote*, %struct.knote** %4, align 8
  %32 = getelementptr inbounds %struct.knote, %struct.knote* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.vnode*, %struct.vnode** %6, align 8
  %36 = call i32 @VI_UNLOCK(%struct.vnode* %35)
  store i32 1, i32* %3, align 4
  br label %75

37:                                               ; preds = %19, %16
  %38 = load %struct.vnode*, %struct.vnode** %6, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curthread, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @VOP_GETATTR(%struct.vnode* %38, %struct.vattr* %7, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %75

45:                                               ; preds = %37
  %46 = load %struct.vnode*, %struct.vnode** %6, align 8
  %47 = call i32 @VI_LOCK(%struct.vnode* %46)
  %48 = getelementptr inbounds %struct.vattr, %struct.vattr* %7, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.knote*, %struct.knote** %4, align 8
  %51 = getelementptr inbounds %struct.knote, %struct.knote* %50, i32 0, i32 3
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %49, %54
  %56 = load %struct.knote*, %struct.knote** %4, align 8
  %57 = getelementptr inbounds %struct.knote, %struct.knote* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load %struct.knote*, %struct.knote** %4, align 8
  %59 = getelementptr inbounds %struct.knote, %struct.knote* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @NOTE_FILE_POLL, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %45
  %65 = load %struct.knote*, %struct.knote** %4, align 8
  %66 = getelementptr inbounds %struct.knote, %struct.knote* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br label %69

69:                                               ; preds = %64, %45
  %70 = phi i1 [ true, %45 ], [ %68, %64 ]
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %8, align 4
  %72 = load %struct.vnode*, %struct.vnode** %6, align 8
  %73 = call i32 @VI_UNLOCK(%struct.vnode* %72)
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %69, %44, %25
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @VI_LOCK(%struct.vnode*) #1

declare dso_local i32 @VI_UNLOCK(%struct.vnode*) #1

declare dso_local i64 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
