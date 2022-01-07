; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/nvmem/extr_nvmem.c_nvmem_read_cell_by_idx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/nvmem/extr_nvmem.c_nvmem_read_cell_by_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"nvmem_get_cell_by_name: Cannot parse reg property of cell %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"nvmem_get_cell_by_idx: Cannot find the nvmem device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvmem_read_cell_by_idx(i32 %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca [2 x i64], align 16
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @nvmem_get_cell_node(i32 %14, i32 %15, i32* %10)
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %13, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %13, align 4
  store i32 %20, i32* %5, align 4
  br label %69

21:                                               ; preds = %4
  %22 = load i32, i32* %10, align 4
  %23 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  %24 = call i32 @OF_getencprop(i32 %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* %23, i32 16)
  %25 = sext i32 %24 to i64
  %26 = icmp ne i64 %25, 16
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load i64, i64* @bootverbose, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32, i32* @ENOENT, align 4
  store i32 %34, i32* %5, align 4
  br label %69

35:                                               ; preds = %21
  %36 = load i64, i64* %9, align 8
  %37 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %36, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %5, align 4
  br label %69

42:                                               ; preds = %35
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @OF_parent(i32 %43)
  %45 = call i32 @OF_xref_from_node(i32 %44)
  %46 = call i32* @OF_device_from_xref(i32 %45)
  store i32* %46, i32** %11, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load i64, i64* @bootverbose, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %49
  %55 = load i32, i32* @ENXIO, align 4
  store i32 %55, i32* %5, align 4
  br label %69

56:                                               ; preds = %42
  %57 = load i32*, i32** %11, align 8
  %58 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  %59 = load i64, i64* %58, align 16
  %60 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 1
  %61 = load i64, i64* %60, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @NVMEM_READ(i32* %57, i64 %59, i64 %61, i8* %62)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = load i32, i32* %13, align 4
  store i32 %67, i32* %5, align 4
  br label %69

68:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %68, %66, %54, %40, %33, %19
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @nvmem_get_cell_node(i32, i32, i32*) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i64*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @OF_device_from_xref(i32) #1

declare dso_local i32 @OF_xref_from_node(i32) #1

declare dso_local i32 @OF_parent(i32) #1

declare dso_local i32 @NVMEM_READ(i32*, i64, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
