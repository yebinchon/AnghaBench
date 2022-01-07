; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/nvmem/extr_nvmem.c_nvmem_write_cell_by_idx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/nvmem/extr_nvmem.c_nvmem_write_cell_by_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"read-only\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [61 x i8] c"nvmem_get_cell_by_idx: Cannot parse reg property of cell %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"nvmem_get_cell_by_idx: Cannot find the nvmem device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvmem_write_cell_by_idx(i32 %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca [2 x i64], align 16
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @nvmem_get_cell_node(i32 %15, i32 %16, i32* %10)
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %14, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %14, align 4
  store i32 %21, i32* %5, align 4
  br label %77

22:                                               ; preds = %4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @OF_parent(i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i64 @OF_hasprop(i32 %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %5, align 4
  br label %77

30:                                               ; preds = %22
  %31 = load i32, i32* %10, align 4
  %32 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 0
  %33 = call i32 @OF_getencprop(i32 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64* %32, i32 16)
  %34 = sext i32 %33 to i64
  %35 = icmp ne i64 %34, 16
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load i64, i64* @bootverbose, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32, i32* @ENXIO, align 4
  store i32 %43, i32* %5, align 4
  br label %77

44:                                               ; preds = %30
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %45, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %5, align 4
  br label %77

51:                                               ; preds = %44
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @OF_xref_from_node(i32 %52)
  %54 = call i32* @OF_device_from_xref(i32 %53)
  store i32* %54, i32** %12, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load i64, i64* @bootverbose, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %57
  %63 = load i32, i32* @ENXIO, align 4
  store i32 %63, i32* %5, align 4
  br label %77

64:                                               ; preds = %51
  %65 = load i32*, i32** %12, align 8
  %66 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 0
  %67 = load i64, i64* %66, align 16
  %68 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 1
  %69 = load i64, i64* %68, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 @NVMEM_WRITE(i32* %65, i64 %67, i64 %69, i8* %70)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %64
  %75 = load i32, i32* %14, align 4
  store i32 %75, i32* %5, align 4
  br label %77

76:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %76, %74, %62, %49, %42, %28, %20
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @nvmem_get_cell_node(i32, i32, i32*) #1

declare dso_local i32 @OF_parent(i32) #1

declare dso_local i64 @OF_hasprop(i32, i8*) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i64*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @OF_device_from_xref(i32) #1

declare dso_local i32 @OF_xref_from_node(i32) #1

declare dso_local i32 @NVMEM_WRITE(i32*, i64, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
