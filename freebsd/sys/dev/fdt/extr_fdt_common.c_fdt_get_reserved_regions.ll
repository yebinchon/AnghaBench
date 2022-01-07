; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdt/extr_fdt_common.c_fdt_get_reserved_regions.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdt/extr_fdt_common.c_fdt_get_reserved_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_region = type { i32, i32 }

@FDT_REG_CELLS = common dso_local global i32 0, align 4
@FDT_MEM_REGIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"/memory\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"memreserve\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdt_get_reserved_regions(%struct.mem_region* %0, i32* %1) #0 {
  %3 = alloca %struct.mem_region*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mem_region* %0, %struct.mem_region** %3, align 8
  store i32* %1, i32** %4, align 8
  %17 = load i32, i32* @FDT_REG_CELLS, align 4
  %18 = load i32, i32* @FDT_MEM_REGIONS, align 4
  %19 = mul nsw i32 %17, %18
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %5, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %6, align 8
  %23 = call i32 @OF_finddevice(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %9, align 4
  %24 = call i32 @OF_finddevice(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %14, align 4
  br label %104

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @OF_parent(i32 %30)
  %32 = call i32 @fdt_addrsize_cells(i32 %31, i32* %10, i32* %11)
  store i32 %32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %104

35:                                               ; preds = %29
  %36 = load i32, i32* %10, align 4
  %37 = icmp sgt i32 %36, 2
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @ERANGE, align 4
  store i32 %39, i32* %14, align 4
  br label %104

40:                                               ; preds = %35
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = mul i64 4, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @OF_getproplen(i32 %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp sle i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %40
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = mul nuw i64 4, %20
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %51, %40
  %57 = load i32, i32* @ERANGE, align 4
  store i32 %57, i32* %14, align 4
  br label %104

58:                                               ; preds = %51
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i64 @OF_getprop(i32 %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* %22, i32 %60)
  %62 = icmp sle i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* @ENXIO, align 4
  store i32 %64, i32* %14, align 4
  br label %104

65:                                               ; preds = %58
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %15, align 4
  %68 = sdiv i32 %66, %67
  store i32 %68, i32* %16, align 4
  store i32* %22, i32** %7, align 8
  store i32 0, i32* %12, align 4
  br label %69

69:                                               ; preds = %98, %65
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %16, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %101

73:                                               ; preds = %69
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.mem_region*, %struct.mem_region** %3, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %77, i64 %79
  %81 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %80, i32 0, i32 1
  %82 = load %struct.mem_region*, %struct.mem_region** %3, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %82, i64 %84
  %86 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %85, i32 0, i32 0
  %87 = call i32 @fdt_data_to_res(i32* %74, i32 %75, i32 %76, i32* %81, i32* %86)
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %73
  br label %104

91:                                               ; preds = %73
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %92, %93
  %95 = load i32*, i32** %7, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32* %97, i32** %7, align 8
  br label %98

98:                                               ; preds = %91
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %12, align 4
  br label %69

101:                                              ; preds = %69
  %102 = load i32, i32* %12, align 4
  %103 = load i32*, i32** %4, align 8
  store i32 %102, i32* %103, align 4
  store i32 0, i32* %14, align 4
  br label %104

104:                                              ; preds = %101, %90, %63, %56, %38, %34, %27
  %105 = load i32, i32* %14, align 4
  %106 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %106)
  ret i32 %105
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @OF_finddevice(i8*) #2

declare dso_local i32 @fdt_addrsize_cells(i32, i32*, i32*) #2

declare dso_local i32 @OF_parent(i32) #2

declare dso_local i32 @OF_getproplen(i32, i8*) #2

declare dso_local i64 @OF_getprop(i32, i8*, i32*, i32) #2

declare dso_local i32 @fdt_data_to_res(i32*, i32, i32, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
