; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_manage.c_e1000_mng_host_if_write_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_manage.c_e1000_mng_host_if_write_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"e1000_mng_host_if_write_generic\00", align 1
@E1000_HI_MAX_MNG_DATA_LENGTH = common dso_local global i64 0, align 8
@E1000_ERR_PARAM = common dso_local global i32 0, align 4
@E1000_HOST_IF = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_mng_host_if_write_generic(%struct.e1000_hw* %0, i64* %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.e1000_hw*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %19 = load i64*, i64** %8, align 8
  store i64* %19, i64** %13, align 8
  store i64 0, i64* %14, align 8
  %20 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %21 = load i64, i64* %9, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %5
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* %9, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i64, i64* @E1000_HI_MAX_MNG_DATA_LENGTH, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23, %5
  %30 = load i32, i32* @E1000_ERR_PARAM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %165

32:                                               ; preds = %23
  store i64* %14, i64** %12, align 8
  %33 = load i64, i64* %10, align 8
  %34 = and i64 %33, 3
  store i64 %34, i64* %18, align 8
  %35 = load i64, i64* %10, align 8
  %36 = ashr i64 %35, 2
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %18, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %78

39:                                               ; preds = %32
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %41 = load i32, i32* @E1000_HOST_IF, align 4
  %42 = load i64, i64* %10, align 8
  %43 = call i64 @E1000_READ_REG_ARRAY_DWORD(%struct.e1000_hw* %40, i32 %41, i64 %42)
  store i64 %43, i64* %14, align 8
  %44 = load i64, i64* %18, align 8
  store i64 %44, i64* %17, align 8
  br label %45

45:                                               ; preds = %62, %39
  %46 = load i64, i64* %17, align 8
  %47 = icmp ult i64 %46, 8
  br i1 %47, label %48, label %65

48:                                               ; preds = %45
  %49 = load i64*, i64** %13, align 8
  %50 = getelementptr inbounds i64, i64* %49, i32 1
  store i64* %50, i64** %13, align 8
  %51 = load i64, i64* %49, align 8
  %52 = load i64*, i64** %12, align 8
  %53 = load i64, i64* %17, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  store i64 %51, i64* %54, align 8
  %55 = load i64*, i64** %12, align 8
  %56 = load i64, i64* %17, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load i64*, i64** %11, align 8
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, %58
  store i64 %61, i64* %59, align 8
  br label %62

62:                                               ; preds = %48
  %63 = load i64, i64* %17, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %17, align 8
  br label %45

65:                                               ; preds = %45
  %66 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %67 = load i32, i32* @E1000_HOST_IF, align 4
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* %14, align 8
  %70 = call i32 @E1000_WRITE_REG_ARRAY_DWORD(%struct.e1000_hw* %66, i32 %67, i64 %68, i64 %69)
  %71 = load i64, i64* %17, align 8
  %72 = load i64, i64* %18, align 8
  %73 = sub nsw i64 %71, %72
  %74 = load i64, i64* %9, align 8
  %75 = sub nsw i64 %74, %73
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* %10, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %10, align 8
  br label %78

78:                                               ; preds = %65, %32
  %79 = load i64, i64* %9, align 8
  %80 = and i64 %79, 3
  store i64 %80, i64* %15, align 8
  %81 = load i64, i64* %15, align 8
  %82 = load i64, i64* %9, align 8
  %83 = sub nsw i64 %82, %81
  store i64 %83, i64* %9, align 8
  %84 = load i64, i64* %9, align 8
  %85 = ashr i64 %84, 2
  store i64 %85, i64* %9, align 8
  store i64 0, i64* %16, align 8
  br label %86

86:                                               ; preds = %119, %78
  %87 = load i64, i64* %16, align 8
  %88 = load i64, i64* %9, align 8
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %90, label %122

90:                                               ; preds = %86
  store i64 0, i64* %17, align 8
  br label %91

91:                                               ; preds = %108, %90
  %92 = load i64, i64* %17, align 8
  %93 = icmp ult i64 %92, 8
  br i1 %93, label %94, label %111

94:                                               ; preds = %91
  %95 = load i64*, i64** %13, align 8
  %96 = getelementptr inbounds i64, i64* %95, i32 1
  store i64* %96, i64** %13, align 8
  %97 = load i64, i64* %95, align 8
  %98 = load i64*, i64** %12, align 8
  %99 = load i64, i64* %17, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  store i64 %97, i64* %100, align 8
  %101 = load i64*, i64** %12, align 8
  %102 = load i64, i64* %17, align 8
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = load i64*, i64** %11, align 8
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %106, %104
  store i64 %107, i64* %105, align 8
  br label %108

108:                                              ; preds = %94
  %109 = load i64, i64* %17, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %17, align 8
  br label %91

111:                                              ; preds = %91
  %112 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %113 = load i32, i32* @E1000_HOST_IF, align 4
  %114 = load i64, i64* %10, align 8
  %115 = load i64, i64* %16, align 8
  %116 = add nsw i64 %114, %115
  %117 = load i64, i64* %14, align 8
  %118 = call i32 @E1000_WRITE_REG_ARRAY_DWORD(%struct.e1000_hw* %112, i32 %113, i64 %116, i64 %117)
  br label %119

119:                                              ; preds = %111
  %120 = load i64, i64* %16, align 8
  %121 = add nsw i64 %120, 1
  store i64 %121, i64* %16, align 8
  br label %86

122:                                              ; preds = %86
  %123 = load i64, i64* %15, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %163

125:                                              ; preds = %122
  store i64 0, i64* %17, align 8
  br label %126

126:                                              ; preds = %152, %125
  %127 = load i64, i64* %17, align 8
  %128 = icmp ult i64 %127, 8
  br i1 %128, label %129, label %155

129:                                              ; preds = %126
  %130 = load i64, i64* %17, align 8
  %131 = load i64, i64* %15, align 8
  %132 = icmp slt i64 %130, %131
  br i1 %132, label %133, label %140

133:                                              ; preds = %129
  %134 = load i64*, i64** %13, align 8
  %135 = getelementptr inbounds i64, i64* %134, i32 1
  store i64* %135, i64** %13, align 8
  %136 = load i64, i64* %134, align 8
  %137 = load i64*, i64** %12, align 8
  %138 = load i64, i64* %17, align 8
  %139 = getelementptr inbounds i64, i64* %137, i64 %138
  store i64 %136, i64* %139, align 8
  br label %144

140:                                              ; preds = %129
  %141 = load i64*, i64** %12, align 8
  %142 = load i64, i64* %17, align 8
  %143 = getelementptr inbounds i64, i64* %141, i64 %142
  store i64 0, i64* %143, align 8
  br label %144

144:                                              ; preds = %140, %133
  %145 = load i64*, i64** %12, align 8
  %146 = load i64, i64* %17, align 8
  %147 = getelementptr inbounds i64, i64* %145, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = load i64*, i64** %11, align 8
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %150, %148
  store i64 %151, i64* %149, align 8
  br label %152

152:                                              ; preds = %144
  %153 = load i64, i64* %17, align 8
  %154 = add nsw i64 %153, 1
  store i64 %154, i64* %17, align 8
  br label %126

155:                                              ; preds = %126
  %156 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %157 = load i32, i32* @E1000_HOST_IF, align 4
  %158 = load i64, i64* %10, align 8
  %159 = load i64, i64* %16, align 8
  %160 = add nsw i64 %158, %159
  %161 = load i64, i64* %14, align 8
  %162 = call i32 @E1000_WRITE_REG_ARRAY_DWORD(%struct.e1000_hw* %156, i32 %157, i64 %160, i64 %161)
  br label %163

163:                                              ; preds = %155, %122
  %164 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %164, i32* %6, align 4
  br label %165

165:                                              ; preds = %163, %29
  %166 = load i32, i32* %6, align 4
  ret i32 %166
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @E1000_READ_REG_ARRAY_DWORD(%struct.e1000_hw*, i32, i64) #1

declare dso_local i32 @E1000_WRITE_REG_ARRAY_DWORD(%struct.e1000_hw*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
