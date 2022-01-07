; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_mc5.c_init_mask_data_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_mc5.c_init_mask_data_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mc5 = type { i32, i64, i32* }

@A_MC5_DB_SERVER_INDEX = common dso_local global i32 0, align 4
@MC5_MODE_144_BIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mc5*, i64, i64, i64, i32)* @init_mask_data_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_mask_data_array(%struct.mc5* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mc5*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mc5* %0, %struct.mc5** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.mc5*, %struct.mc5** %7, align 8
  %17 = getelementptr inbounds %struct.mc5, %struct.mc5* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %13, align 8
  %19 = load %struct.mc5*, %struct.mc5** %7, align 8
  %20 = getelementptr inbounds %struct.mc5, %struct.mc5* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %14, align 4
  %22 = load i32*, i32** %13, align 8
  %23 = load i32, i32* @A_MC5_DB_SERVER_INDEX, align 4
  %24 = call i32 @t3_read_reg(i32* %22, i32 %23)
  store i32 %24, i32* %15, align 4
  %25 = load %struct.mc5*, %struct.mc5** %7, align 8
  %26 = getelementptr inbounds %struct.mc5, %struct.mc5* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MC5_MODE_144_BIT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %5
  %31 = load i32, i32* %14, align 4
  %32 = mul i32 %31, 2
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %15, align 4
  %34 = mul i32 %33, 2
  store i32 %34, i32* %15, align 4
  br label %35

35:                                               ; preds = %30, %5
  %36 = load i32*, i32** %13, align 8
  %37 = call i32 @dbgi_wr_data3(i32* %36, i32 0, i32 0, i32 0)
  store i32 0, i32* %12, align 4
  br label %38

38:                                               ; preds = %55, %35
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %38
  %43 = load i32*, i32** %13, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %11, align 4
  %47 = shl i32 %45, %46
  %48 = zext i32 %47 to i64
  %49 = add nsw i64 %44, %48
  %50 = load i64, i64* %10, align 8
  %51 = call i64 @mc5_write(i32* %43, i64 %49, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  store i32 -1, i32* %6, align 4
  br label %128

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %12, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %12, align 4
  br label %38

58:                                               ; preds = %38
  store i32 0, i32* %12, align 4
  br label %59

59:                                               ; preds = %94, %58
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %97

63:                                               ; preds = %59
  %64 = load i32*, i32** %13, align 8
  %65 = call i32 @dbgi_wr_data3(i32* %64, i32 1073741823, i32 -524288, i32 255)
  %66 = load i32*, i32** %13, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %11, align 4
  %70 = shl i32 %68, %69
  %71 = zext i32 %70 to i64
  %72 = add nsw i64 %67, %71
  %73 = load i64, i64* %10, align 8
  %74 = call i64 @mc5_write(i32* %66, i64 %72, i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %63
  store i32 -1, i32* %6, align 4
  br label %128

77:                                               ; preds = %63
  %78 = load i32, i32* %12, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %12, align 4
  %80 = load i32*, i32** %13, align 8
  %81 = call i32 @dbgi_wr_data3(i32* %80, i32 -1, i32 -1, i32 255)
  %82 = load i32*, i32** %13, align 8
  %83 = load i64, i64* %8, align 8
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %11, align 4
  %86 = shl i32 %84, %85
  %87 = zext i32 %86 to i64
  %88 = add nsw i64 %83, %87
  %89 = load i64, i64* %10, align 8
  %90 = call i64 @mc5_write(i32* %82, i64 %88, i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %77
  store i32 -1, i32* %6, align 4
  br label %128

93:                                               ; preds = %77
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %12, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %12, align 4
  br label %59

97:                                               ; preds = %59
  %98 = load i32*, i32** %13, align 8
  %99 = load %struct.mc5*, %struct.mc5** %7, align 8
  %100 = getelementptr inbounds %struct.mc5, %struct.mc5* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @MC5_MODE_144_BIT, align 8
  %103 = icmp eq i64 %101, %102
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32 -7, i32 -3
  %106 = call i32 @dbgi_wr_data3(i32* %98, i32 %105, i32 -1, i32 255)
  br label %107

107:                                              ; preds = %124, %97
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %14, align 4
  %110 = icmp ult i32 %108, %109
  br i1 %110, label %111, label %127

111:                                              ; preds = %107
  %112 = load i32*, i32** %13, align 8
  %113 = load i64, i64* %8, align 8
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %11, align 4
  %116 = shl i32 %114, %115
  %117 = zext i32 %116 to i64
  %118 = add nsw i64 %113, %117
  %119 = load i64, i64* %10, align 8
  %120 = call i64 @mc5_write(i32* %112, i64 %118, i64 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %111
  store i32 -1, i32* %6, align 4
  br label %128

123:                                              ; preds = %111
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %12, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %12, align 4
  br label %107

127:                                              ; preds = %107
  store i32 0, i32* %6, align 4
  br label %128

128:                                              ; preds = %127, %122, %92, %76, %53
  %129 = load i32, i32* %6, align 4
  ret i32 %129
}

declare dso_local i32 @t3_read_reg(i32*, i32) #1

declare dso_local i32 @dbgi_wr_data3(i32*, i32, i32, i32) #1

declare dso_local i64 @mc5_write(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
