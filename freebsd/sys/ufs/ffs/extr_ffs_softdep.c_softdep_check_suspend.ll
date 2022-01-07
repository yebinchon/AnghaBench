; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_softdep.c_softdep_check_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_softdep.c_softdep_check_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i64, i32 }
%struct.vnode = type { %struct.bufobj }
%struct.bufobj = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@PUSER = common dso_local global i32 0, align 4
@PDROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"secwr\00", align 1
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @softdep_check_suspend(%struct.mount* %0, %struct.vnode* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.mount*, align 8
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.bufobj*, align 8
  %14 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %7, align 8
  store %struct.vnode* %1, %struct.vnode** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.vnode*, %struct.vnode** %8, align 8
  %18 = getelementptr inbounds %struct.vnode, %struct.vnode* %17, i32 0, i32 0
  store %struct.bufobj* %18, %struct.bufobj** %13, align 8
  %19 = load %struct.bufobj*, %struct.bufobj** %13, align 8
  %20 = call i32 @ASSERT_BO_WLOCKED(%struct.bufobj* %19)
  %21 = load %struct.mount*, %struct.mount** %7, align 8
  %22 = call i32 @MNT_ILOCK(%struct.mount* %21)
  br label %23

23:                                               ; preds = %28, %6
  %24 = load %struct.mount*, %struct.mount** %7, align 8
  %25 = getelementptr inbounds %struct.mount, %struct.mount* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = load %struct.bufobj*, %struct.bufobj** %13, align 8
  %30 = call i32 @BO_UNLOCK(%struct.bufobj* %29)
  %31 = load %struct.mount*, %struct.mount** %7, align 8
  %32 = getelementptr inbounds %struct.mount, %struct.mount* %31, i32 0, i32 0
  %33 = load %struct.mount*, %struct.mount** %7, align 8
  %34 = call i32 @MNT_MTX(%struct.mount* %33)
  %35 = load i32, i32* @PUSER, align 4
  %36 = sub nsw i32 %35, 1
  %37 = load i32, i32* @PDROP, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @msleep(i64* %32, i32 %34, i32 %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0)
  %40 = load %struct.bufobj*, %struct.bufobj** %13, align 8
  %41 = call i32 @BO_LOCK(%struct.bufobj* %40)
  %42 = load %struct.mount*, %struct.mount** %7, align 8
  %43 = call i32 @MNT_ILOCK(%struct.mount* %42)
  br label %23

44:                                               ; preds = %23
  store i32 0, i32* %14, align 4
  %45 = load %struct.bufobj*, %struct.bufobj** %13, align 8
  %46 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %69, label %49

49:                                               ; preds = %44
  %50 = load %struct.bufobj*, %struct.bufobj** %13, align 8
  %51 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %69, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %55
  %59 = load %struct.mount*, %struct.mount** %7, align 8
  %60 = getelementptr inbounds %struct.mount, %struct.mount* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.mount*, %struct.mount** %7, align 8
  %66 = getelementptr inbounds %struct.mount, %struct.mount* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %64, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %63, %58, %55, %49, %44
  %70 = load i32, i32* @EAGAIN, align 4
  store i32 %70, i32* %14, align 4
  br label %71

71:                                               ; preds = %69, %63
  %72 = load %struct.bufobj*, %struct.bufobj** %13, align 8
  %73 = call i32 @BO_UNLOCK(%struct.bufobj* %72)
  %74 = load i32, i32* %14, align 4
  ret i32 %74
}

declare dso_local i32 @ASSERT_BO_WLOCKED(%struct.bufobj*) #1

declare dso_local i32 @MNT_ILOCK(%struct.mount*) #1

declare dso_local i32 @BO_UNLOCK(%struct.bufobj*) #1

declare dso_local i32 @msleep(i64*, i32, i32, i8*, i32) #1

declare dso_local i32 @MNT_MTX(%struct.mount*) #1

declare dso_local i32 @BO_LOCK(%struct.bufobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
