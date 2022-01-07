; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_aircrack-ptw-lib.c_getdrv.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_aircrack-ptw-lib.c_getdrv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@n = common dso_local global i32 0, align 4
@eval = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, double*, double*)* @getdrv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getdrv(%struct.TYPE_3__* %0, i32 %1, double* %2, double* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store double* %2, double** %7, align 8
  store double* %3, double** %8, align 8
  %18 = load i32, i32* @n, align 4
  %19 = zext i32 %18 to i64
  store i32 0, i32* %11, align 4
  store double 0.000000e+00, double* %15, align 8
  store double 0.000000e+00, double* %16, align 8
  store double 0.000000e+00, double* %17, align 8
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %35, %4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @n, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = mul nsw i64 0, %19
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %26
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %11, align 4
  br label %35

35:                                               ; preds = %24
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  br label %20

38:                                               ; preds = %20
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @n, align 4
  %41 = sdiv i32 %39, %40
  %42 = sitofp i32 %41 to double
  store double %42, double* %12, align 8
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %190, %38
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %193

47:                                               ; preds = %43
  %48 = load i32*, i32** @eval, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %11, align 4
  %54 = mul nsw i32 %52, %53
  %55 = sitofp i32 %54 to double
  store double %55, double* %14, align 8
  %56 = load i32*, i32** @eval, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = sitofp i32 %60 to double
  %62 = fsub double 1.000000e+00, %61
  %63 = fdiv double %62, 2.550000e+02
  %64 = load i32, i32* %11, align 4
  %65 = sitofp i32 %64 to double
  %66 = fmul double %63, %65
  store double %66, double* %13, align 8
  %67 = load double*, double** %7, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds double, double* %67, i64 %69
  store double 0.000000e+00, double* %70, align 8
  %71 = load double*, double** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds double, double* %71, i64 %73
  store double 0.000000e+00, double* %74, align 8
  store double 0.000000e+00, double* %16, align 8
  store double 0.000000e+00, double* %17, align 8
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %108, %47
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @n, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %111

79:                                               ; preds = %75
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = mul nsw i64 %82, %19
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %83
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sitofp i32 %89 to double
  %91 = load double, double* %16, align 8
  %92 = fcmp ogt double %90, %91
  br i1 %92, label %93, label %107

93:                                               ; preds = %79
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = mul nsw i64 %96, %19
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %97
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = sitofp i32 %103 to double
  store double %104, double* %16, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sitofp i32 %105 to double
  store double %106, double* %17, align 8
  br label %107

107:                                              ; preds = %93, %79
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  br label %75

111:                                              ; preds = %75
  store i32 0, i32* %10, align 4
  br label %112

112:                                              ; preds = %186, %111
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @n, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %189

116:                                              ; preds = %112
  %117 = load i32, i32* %10, align 4
  %118 = sitofp i32 %117 to double
  %119 = load double, double* %17, align 8
  %120 = fcmp oeq double %118, %119
  br i1 %120, label %121, label %136

121:                                              ; preds = %116
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = mul nsw i64 %124, %19
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i64 %125
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = sitofp i32 %131 to double
  %133 = load double, double* %14, align 8
  %134 = fdiv double %132, %133
  %135 = fsub double 1.000000e+00, %134
  store double %135, double* %15, align 8
  br label %151

136:                                              ; preds = %116
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = mul nsw i64 %139, %19
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i64 %140
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = sitofp i32 %146 to double
  %148 = load double, double* %13, align 8
  %149 = fdiv double %147, %148
  %150 = fsub double 1.000000e+00, %149
  store double %150, double* %15, align 8
  br label %151

151:                                              ; preds = %136, %121
  %152 = load double, double* %15, align 8
  %153 = load double, double* %15, align 8
  %154 = fmul double %152, %153
  store double %154, double* %15, align 8
  %155 = load double, double* %15, align 8
  %156 = load double*, double** %8, align 8
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds double, double* %156, i64 %158
  %160 = load double, double* %159, align 8
  %161 = fadd double %160, %155
  store double %161, double* %159, align 8
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %163 = load i32, i32* %9, align 4
  %164 = sext i32 %163 to i64
  %165 = mul nsw i64 %164, %19
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i64 %165
  %167 = load i32, i32* %10, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = sitofp i32 %171 to double
  %173 = load double, double* %12, align 8
  %174 = fdiv double %172, %173
  %175 = fsub double 1.000000e+00, %174
  store double %175, double* %15, align 8
  %176 = load double, double* %15, align 8
  %177 = load double, double* %15, align 8
  %178 = fmul double %176, %177
  store double %178, double* %15, align 8
  %179 = load double, double* %15, align 8
  %180 = load double*, double** %7, align 8
  %181 = load i32, i32* %9, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds double, double* %180, i64 %182
  %184 = load double, double* %183, align 8
  %185 = fadd double %184, %179
  store double %185, double* %183, align 8
  br label %186

186:                                              ; preds = %151
  %187 = load i32, i32* %10, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %10, align 4
  br label %112

189:                                              ; preds = %112
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %9, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %9, align 4
  br label %43

193:                                              ; preds = %43
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
