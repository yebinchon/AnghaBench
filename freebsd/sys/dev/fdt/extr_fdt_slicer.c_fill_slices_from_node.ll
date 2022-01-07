; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdt/extr_fdt_slicer.c_fill_slices_from_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdt/extr_fdt_slicer.c_fill_slices_from_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flash_slice = type { i8*, i32, i64, i64 }

@FLASH_SLICES_FLAG_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@FLASH_SLICES_MAX_NUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"not enough buffer for slice i=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"error during processing reg property, i=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"slice i=%d with no size\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"slice i=%d with no name\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"read-only\00", align 1
@FLASH_SLICES_FLAG_RO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.flash_slice*, i32*)* @fill_slices_from_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_slices_from_node(i64 %0, %struct.flash_slice* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.flash_slice*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.flash_slice* %1, %struct.flash_slice** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %12, align 4
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @OF_child(i64 %14)
  store i64 %15, i64* %8, align 8
  br label %16

16:                                               ; preds = %94, %3
  %17 = load i64, i64* %8, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %97

19:                                               ; preds = %16
  %20 = load i32, i32* @FLASH_SLICES_FLAG_NONE, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i64, i64* %8, align 8
  %22 = call i64 @OF_hasprop(i64 %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %94

25:                                               ; preds = %19
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @FLASH_SLICES_MAX_NUM, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @debugf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %97

32:                                               ; preds = %25
  %33 = load i64, i64* %8, align 8
  %34 = call i64 @fdt_regsize(i64 %33, i64* %9, i64* %10)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @debugf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  br label %94

39:                                               ; preds = %32
  %40 = load i64, i64* %10, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @debugf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  br label %94

45:                                               ; preds = %39
  %46 = load i64, i64* %8, align 8
  %47 = call i64 @OF_getprop_alloc(i64 %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %7)
  store i64 %47, i64* %13, align 8
  %48 = load i64, i64* %13, align 8
  %49 = icmp sle i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load i64, i64* %8, align 8
  %52 = call i64 @OF_getprop_alloc(i64 %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %7)
  store i64 %52, i64* %13, align 8
  %53 = load i64, i64* %13, align 8
  %54 = icmp sle i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @debugf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %56)
  store i8* null, i8** %7, align 8
  br label %58

58:                                               ; preds = %55, %50
  br label %59

59:                                               ; preds = %58, %45
  %60 = load i64, i64* %8, align 8
  %61 = call i64 @OF_hasprop(i64 %60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i32, i32* @FLASH_SLICES_FLAG_RO, align 4
  %65 = load i32, i32* %11, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %63, %59
  %68 = load i64, i64* %9, align 8
  %69 = load %struct.flash_slice*, %struct.flash_slice** %5, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.flash_slice, %struct.flash_slice* %69, i64 %71
  %73 = getelementptr inbounds %struct.flash_slice, %struct.flash_slice* %72, i32 0, i32 3
  store i64 %68, i64* %73, align 8
  %74 = load i64, i64* %10, align 8
  %75 = load %struct.flash_slice*, %struct.flash_slice** %5, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.flash_slice, %struct.flash_slice* %75, i64 %77
  %79 = getelementptr inbounds %struct.flash_slice, %struct.flash_slice* %78, i32 0, i32 2
  store i64 %74, i64* %79, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = load %struct.flash_slice*, %struct.flash_slice** %5, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.flash_slice, %struct.flash_slice* %81, i64 %83
  %85 = getelementptr inbounds %struct.flash_slice, %struct.flash_slice* %84, i32 0, i32 0
  store i8* %80, i8** %85, align 8
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.flash_slice*, %struct.flash_slice** %5, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.flash_slice, %struct.flash_slice* %87, i64 %89
  %91 = getelementptr inbounds %struct.flash_slice, %struct.flash_slice* %90, i32 0, i32 1
  store i32 %86, i32* %91, align 8
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %12, align 4
  br label %94

94:                                               ; preds = %67, %42, %36, %24
  %95 = load i64, i64* %8, align 8
  %96 = call i64 @OF_peer(i64 %95)
  store i64 %96, i64* %8, align 8
  br label %16

97:                                               ; preds = %29, %16
  %98 = load i32, i32* %12, align 4
  %99 = load i32*, i32** %6, align 8
  store i32 %98, i32* %99, align 4
  ret i32 0
}

declare dso_local i64 @OF_child(i64) #1

declare dso_local i64 @OF_hasprop(i64, i8*) #1

declare dso_local i32 @debugf(i8*, i32) #1

declare dso_local i64 @fdt_regsize(i64, i64*, i64*) #1

declare dso_local i64 @OF_getprop_alloc(i64, i8*, i8**) #1

declare dso_local i64 @OF_peer(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
