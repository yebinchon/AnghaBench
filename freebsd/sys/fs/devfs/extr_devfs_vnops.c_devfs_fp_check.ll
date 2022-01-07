; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_fp_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_fp_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.file* }
%struct.file = type { %struct.cdev*, i32 }
%struct.cdev = type { i64 }
%struct.cdevsw = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"devfs: un-referenced struct cdev *(%s)\00", align 1
@curthread = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.cdev**, %struct.cdevsw**, i32*)* @devfs_fp_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfs_fp_check(%struct.file* %0, %struct.cdev** %1, %struct.cdevsw** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.cdev**, align 8
  %8 = alloca %struct.cdevsw**, align 8
  %9 = alloca i32*, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store %struct.cdev** %1, %struct.cdev*** %7, align 8
  store %struct.cdevsw** %2, %struct.cdevsw*** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load %struct.file*, %struct.file** %6, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.cdev**, %struct.cdev*** %7, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = call %struct.cdevsw* @devvn_refthread(i32 %12, %struct.cdev** %13, i32* %14)
  %16 = load %struct.cdevsw**, %struct.cdevsw*** %8, align 8
  store %struct.cdevsw* %15, %struct.cdevsw** %16, align 8
  %17 = load %struct.cdev**, %struct.cdev*** %7, align 8
  %18 = load %struct.cdev*, %struct.cdev** %17, align 8
  %19 = load %struct.file*, %struct.file** %6, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 0
  %21 = load %struct.cdev*, %struct.cdev** %20, align 8
  %22 = icmp ne %struct.cdev* %18, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %4
  %24 = load %struct.cdevsw**, %struct.cdevsw*** %8, align 8
  %25 = load %struct.cdevsw*, %struct.cdevsw** %24, align 8
  %26 = icmp ne %struct.cdevsw* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load %struct.cdev**, %struct.cdev*** %7, align 8
  %29 = load %struct.cdev*, %struct.cdev** %28, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_relthread(%struct.cdev* %29, i32 %31)
  br label %33

33:                                               ; preds = %27, %23
  %34 = load i32, i32* @ENXIO, align 4
  store i32 %34, i32* %5, align 4
  br label %57

35:                                               ; preds = %4
  %36 = load %struct.cdev**, %struct.cdev*** %7, align 8
  %37 = load %struct.cdev*, %struct.cdev** %36, align 8
  %38 = getelementptr inbounds %struct.cdev, %struct.cdev* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = load %struct.cdev**, %struct.cdev*** %7, align 8
  %43 = load %struct.cdev*, %struct.cdev** %42, align 8
  %44 = call i32 @devtoname(%struct.cdev* %43)
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 @KASSERT(i32 %41, i8* %46)
  %48 = load %struct.cdevsw**, %struct.cdevsw*** %8, align 8
  %49 = load %struct.cdevsw*, %struct.cdevsw** %48, align 8
  %50 = icmp eq %struct.cdevsw* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %35
  %52 = load i32, i32* @ENXIO, align 4
  store i32 %52, i32* %5, align 4
  br label %57

53:                                               ; preds = %35
  %54 = load %struct.file*, %struct.file** %6, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store %struct.file* %54, %struct.file** %56, align 8
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %53, %51, %33
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local %struct.cdevsw* @devvn_refthread(i32, %struct.cdev**, i32*) #1

declare dso_local i32 @dev_relthread(%struct.cdev*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @devtoname(%struct.cdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
