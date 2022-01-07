; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvdimm/extr_nvdimm_spa.c_nvdimm_spa_mmap_single.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvdimm/extr_nvdimm_spa.c_nvdimm_spa_mmap_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.nvdimm_spa_dev* }
%struct.nvdimm_spa_dev = type { i64, i32* }

@ENXIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i64*, i64, i32**, i32)* @nvdimm_spa_mmap_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvdimm_spa_mmap_single(%struct.cdev* %0, i64* %1, i64 %2, i32** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nvdimm_spa_dev*, align 8
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32** %3, i32*** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.cdev*, %struct.cdev** %7, align 8
  %14 = getelementptr inbounds %struct.cdev, %struct.cdev* %13, i32 0, i32 0
  %15 = load %struct.nvdimm_spa_dev*, %struct.nvdimm_spa_dev** %14, align 8
  store %struct.nvdimm_spa_dev* %15, %struct.nvdimm_spa_dev** %12, align 8
  %16 = load %struct.nvdimm_spa_dev*, %struct.nvdimm_spa_dev** %12, align 8
  %17 = getelementptr inbounds %struct.nvdimm_spa_dev, %struct.nvdimm_spa_dev* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %6, align 4
  br label %57

22:                                               ; preds = %5
  %23 = load i64*, i64** %8, align 8
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.nvdimm_spa_dev*, %struct.nvdimm_spa_dev** %12, align 8
  %26 = getelementptr inbounds %struct.nvdimm_spa_dev, %struct.nvdimm_spa_dev* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %24, %27
  br i1 %28, label %46, label %29

29:                                               ; preds = %22
  %30 = load i64*, i64** %8, align 8
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %9, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i64*, i64** %8, align 8
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %33, %35
  br i1 %36, label %46, label %37

37:                                               ; preds = %29
  %38 = load i64*, i64** %8, align 8
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %9, align 8
  %41 = add nsw i64 %39, %40
  %42 = load %struct.nvdimm_spa_dev*, %struct.nvdimm_spa_dev** %12, align 8
  %43 = getelementptr inbounds %struct.nvdimm_spa_dev, %struct.nvdimm_spa_dev* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %41, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %37, %29, %22
  %47 = load i32, i32* @EINVAL, align 4
  store i32 %47, i32* %6, align 4
  br label %57

48:                                               ; preds = %37
  %49 = load %struct.nvdimm_spa_dev*, %struct.nvdimm_spa_dev** %12, align 8
  %50 = getelementptr inbounds %struct.nvdimm_spa_dev, %struct.nvdimm_spa_dev* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @vm_object_reference(i32* %51)
  %53 = load %struct.nvdimm_spa_dev*, %struct.nvdimm_spa_dev** %12, align 8
  %54 = getelementptr inbounds %struct.nvdimm_spa_dev, %struct.nvdimm_spa_dev* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32**, i32*** %10, align 8
  store i32* %55, i32** %56, align 8
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %48, %46, %20
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @vm_object_reference(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
