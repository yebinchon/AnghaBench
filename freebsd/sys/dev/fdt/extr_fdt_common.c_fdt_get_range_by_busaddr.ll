; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdt/extr_fdt_common.c_fdt_get_range_by_busaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdt/extr_fdt_common.c_fdt_get_range_by_busaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ULONG_MAX = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64*, i64*)* @fdt_get_range_by_busaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdt_get_range_by_busaddr(i64 %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca [32 x i32], align 16
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = load i64*, i64** %8, align 8
  store i64 0, i64* %27, align 8
  %28 = load i64, i64* @ULONG_MAX, align 8
  %29 = load i64*, i64** %9, align 8
  store i64 %28, i64* %29, align 8
  store i32 0, i32* %5, align 4
  br label %157

30:                                               ; preds = %4
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @fdt_addrsize_cells(i64 %31, i32* %12, i32* %13)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @ENXIO, align 4
  store i32 %35, i32* %5, align 4
  br label %157

36:                                               ; preds = %30
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @fdt_parent_addr_cells(i64 %37)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp sgt i32 %39, 2
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @ERANGE, align 4
  store i32 %42, i32* %5, align 4
  br label %157

43:                                               ; preds = %36
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @OF_getproplen(i64 %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %45, i32* %21, align 4
  %46 = load i32, i32* %21, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 -1, i32* %5, align 4
  br label %157

49:                                               ; preds = %43
  %50 = load i32, i32* %21, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp ugt i64 %51, 128
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @ENOMEM, align 4
  store i32 %54, i32* %5, align 4
  br label %157

55:                                               ; preds = %49
  %56 = load i32, i32* %21, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load i64, i64* %6, align 8
  %60 = call i64 @OF_parent(i64 %59)
  %61 = load i64, i64* %7, align 8
  %62 = load i64*, i64** %8, align 8
  %63 = load i64*, i64** %9, align 8
  %64 = call i32 @fdt_get_range_by_busaddr(i64 %60, i64 %61, i64* %62, i64* %63)
  store i32 %64, i32* %5, align 4
  br label %157

65:                                               ; preds = %55
  %66 = load i64, i64* %6, align 8
  %67 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  %68 = call i64 @OF_getprop(i64 %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %67, i32 128)
  %69 = icmp sle i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @EINVAL, align 4
  store i32 %71, i32* %5, align 4
  br label %157

72:                                               ; preds = %65
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %14, align 4
  %75 = add nsw i32 %73, %74
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %75, %76
  store i32 %77, i32* %22, align 4
  %78 = load i32, i32* %21, align 4
  %79 = sext i32 %78 to i64
  %80 = load i32, i32* %22, align 4
  %81 = sext i32 %80 to i64
  %82 = mul i64 %81, 4
  %83 = udiv i64 %79, %82
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %23, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp sgt i32 %85, 2
  br i1 %86, label %93, label %87

87:                                               ; preds = %72
  %88 = load i32, i32* %12, align 4
  %89 = icmp sgt i32 %88, 2
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %13, align 4
  %92 = icmp sgt i32 %91, 2
  br i1 %92, label %93, label %95

93:                                               ; preds = %90, %87, %72
  %94 = load i32, i32* @ERANGE, align 4
  store i32 %94, i32* %5, align 4
  br label %157

95:                                               ; preds = %90
  %96 = load i64*, i64** %8, align 8
  store i64 0, i64* %96, align 8
  %97 = load i64*, i64** %9, align 8
  store i64 0, i64* %97, align 8
  store i32 0, i32* %20, align 4
  br label %98

98:                                               ; preds = %152, %95
  %99 = load i32, i32* %20, align 4
  %100 = load i32, i32* %23, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %155

102:                                              ; preds = %98
  %103 = load i32, i32* %20, align 4
  %104 = load i32, i32* %22, align 4
  %105 = mul nsw i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 %106
  store i32* %107, i32** %11, align 8
  %108 = load i32*, i32** %11, align 8
  %109 = bitcast i32* %108 to i8*
  %110 = load i32, i32* %12, align 4
  %111 = call i64 @fdt_data_get(i8* %109, i32 %110)
  store i64 %111, i64* %15, align 8
  %112 = load i64, i64* %15, align 8
  %113 = load i64, i64* %7, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %102
  br label %152

116:                                              ; preds = %102
  %117 = load i32, i32* %12, align 4
  %118 = load i32*, i32** %11, align 8
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  store i32* %120, i32** %11, align 8
  %121 = load i32*, i32** %11, align 8
  %122 = bitcast i32* %121 to i8*
  %123 = load i32, i32* %14, align 4
  %124 = call i64 @fdt_data_get(i8* %122, i32 %123)
  store i64 %124, i64* %16, align 8
  %125 = load i32, i32* %14, align 4
  %126 = load i32*, i32** %11, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  store i32* %128, i32** %11, align 8
  %129 = load i64, i64* %6, align 8
  %130 = call i64 @OF_parent(i64 %129)
  %131 = load i64, i64* %16, align 8
  %132 = call i32 @fdt_get_range_by_busaddr(i64 %130, i64 %131, i64* %17, i64* %18)
  store i32 %132, i32* %19, align 4
  %133 = load i32, i32* %19, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %116
  %136 = load i32, i32* %19, align 4
  store i32 %136, i32* %5, align 4
  br label %157

137:                                              ; preds = %116
  %138 = load i32, i32* %19, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load i64, i64* %17, align 8
  %142 = load i64*, i64** %8, align 8
  store i64 %141, i64* %142, align 8
  br label %146

143:                                              ; preds = %137
  %144 = load i64, i64* %16, align 8
  %145 = load i64*, i64** %8, align 8
  store i64 %144, i64* %145, align 8
  br label %146

146:                                              ; preds = %143, %140
  %147 = load i32*, i32** %11, align 8
  %148 = bitcast i32* %147 to i8*
  %149 = load i32, i32* %13, align 4
  %150 = call i64 @fdt_data_get(i8* %148, i32 %149)
  %151 = load i64*, i64** %9, align 8
  store i64 %150, i64* %151, align 8
  store i32 0, i32* %5, align 4
  br label %157

152:                                              ; preds = %115
  %153 = load i32, i32* %20, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %20, align 4
  br label %98

155:                                              ; preds = %98
  %156 = load i32, i32* @EINVAL, align 4
  store i32 %156, i32* %5, align 4
  br label %157

157:                                              ; preds = %155, %146, %135, %93, %70, %58, %53, %48, %41, %34, %26
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local i64 @fdt_addrsize_cells(i64, i32*, i32*) #1

declare dso_local i32 @fdt_parent_addr_cells(i64) #1

declare dso_local i32 @OF_getproplen(i64, i8*) #1

declare dso_local i64 @OF_parent(i64) #1

declare dso_local i64 @OF_getprop(i64, i8*, i32*, i32) #1

declare dso_local i64 @fdt_data_get(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
