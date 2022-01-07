; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdt/extr_fdt_common.c_fdt_get_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdt/extr_fdt_common.c_fdt_get_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FDT_RANGES_SIZE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ULONG_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdt_get_range(i32 %0, i32 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %22 = load i32, i32* @FDT_RANGES_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %10, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %11, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @fdt_addrsize_cells(i32 %26, i32* %13, i32* %14)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %124

31:                                               ; preds = %4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @fdt_parent_addr_cells(i32 %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp sgt i32 %34, 2
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @ERANGE, align 4
  store i32 %37, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %124

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @OF_getproplen(i32 %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %40, i32* %20, align 4
  %41 = load i32, i32* %20, align 4
  %42 = sext i32 %41 to i64
  %43 = mul nuw i64 4, %23
  %44 = icmp ugt i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @ENOMEM, align 4
  store i32 %46, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %124

47:                                               ; preds = %38
  %48 = load i32, i32* %20, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i64*, i64** %8, align 8
  store i64 0, i64* %51, align 8
  %52 = load i64, i64* @ULONG_MAX, align 8
  %53 = load i64*, i64** %9, align 8
  store i64 %52, i64* %53, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %124

54:                                               ; preds = %47
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %20, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* @ERANGE, align 4
  store i32 %59, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %124

60:                                               ; preds = %54
  %61 = load i32, i32* %6, align 4
  %62 = mul nuw i64 4, %23
  %63 = trunc i64 %62 to i32
  %64 = call i64 @OF_getprop(i32 %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %25, i32 %63)
  %65 = icmp sle i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* @EINVAL, align 4
  store i32 %67, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %124

68:                                               ; preds = %60
  %69 = load i32, i32* %15, align 4
  %70 = icmp sgt i32 %69, 2
  br i1 %70, label %77, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %13, align 4
  %73 = icmp sgt i32 %72, 2
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %14, align 4
  %76 = icmp sgt i32 %75, 2
  br i1 %76, label %77, label %79

77:                                               ; preds = %74, %71, %68
  %78 = load i32, i32* @ERANGE, align 4
  store i32 %78, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %124

79:                                               ; preds = %74
  %80 = load i64*, i64** %8, align 8
  store i64 0, i64* %80, align 8
  %81 = load i64*, i64** %9, align 8
  store i64 0, i64* %81, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %25, i64 %83
  store i32* %84, i32** %12, align 8
  %85 = load i32*, i32** %12, align 8
  %86 = bitcast i32* %85 to i8*
  %87 = load i32, i32* %13, align 4
  %88 = call i64 @fdt_data_get(i8* %86, i32 %87)
  %89 = load i64*, i64** %8, align 8
  store i64 %88, i64* %89, align 8
  %90 = load i32, i32* %13, align 4
  %91 = load i32*, i32** %12, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32* %93, i32** %12, align 8
  %94 = load i32*, i32** %12, align 8
  %95 = bitcast i32* %94 to i8*
  %96 = load i32, i32* %15, align 4
  %97 = call i64 @fdt_data_get(i8* %95, i32 %96)
  store i64 %97, i64* %16, align 8
  %98 = load i32, i32* %15, align 4
  %99 = load i32*, i32** %12, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  store i32* %101, i32** %12, align 8
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @OF_parent(i32 %102)
  %104 = load i64, i64* %16, align 8
  %105 = call i32 @fdt_get_range_by_busaddr(i32 %103, i64 %104, i64* %17, i64* %18)
  store i32 %105, i32* %19, align 4
  %106 = load i32, i32* %19, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %79
  %109 = load i64, i64* %17, align 8
  %110 = load i64*, i64** %8, align 8
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, %109
  store i64 %112, i64* %110, align 8
  br label %118

113:                                              ; preds = %79
  %114 = load i64, i64* %16, align 8
  %115 = load i64*, i64** %8, align 8
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %116, %114
  store i64 %117, i64* %115, align 8
  br label %118

118:                                              ; preds = %113, %108
  %119 = load i32*, i32** %12, align 8
  %120 = bitcast i32* %119 to i8*
  %121 = load i32, i32* %14, align 4
  %122 = call i64 @fdt_data_get(i8* %120, i32 %121)
  %123 = load i64*, i64** %9, align 8
  store i64 %122, i64* %123, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %124

124:                                              ; preds = %118, %77, %66, %58, %50, %45, %36, %29
  %125 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %125)
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @fdt_addrsize_cells(i32, i32*, i32*) #2

declare dso_local i32 @fdt_parent_addr_cells(i32) #2

declare dso_local i32 @OF_getproplen(i32, i8*) #2

declare dso_local i64 @OF_getprop(i32, i8*, i32*, i32) #2

declare dso_local i64 @fdt_data_get(i8*, i32) #2

declare dso_local i32 @fdt_get_range_by_busaddr(i32, i64, i64*, i64*) #2

declare dso_local i32 @OF_parent(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
