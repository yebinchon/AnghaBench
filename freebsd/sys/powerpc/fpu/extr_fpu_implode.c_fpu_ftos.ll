; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/fpu/extr_fpu_implode.c_fpu_ftos.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/fpu/extr_fpu_implode.c_fpu_ftos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpemu = type { i32, i32 }
%struct.fpn = type { i32, i32, i32* }

@FP_NMANT = common dso_local global i32 0, align 4
@SNG_FRACBITS = common dso_local global i32 0, align 4
@SNG_EXP_INFNAN = common dso_local global i32 0, align 4
@SNG_EXP_BIAS = common dso_local global i32 0, align 4
@FP_NG = common dso_local global i32 0, align 4
@FPSCR_FI = common dso_local global i32 0, align 4
@FPSCR_UX = common dso_local global i32 0, align 4
@SNG_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpu_ftos(%struct.fpemu* %0, %struct.fpn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fpemu*, align 8
  %5 = alloca %struct.fpn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fpemu* %0, %struct.fpemu** %4, align 8
  store %struct.fpn* %1, %struct.fpn** %5, align 8
  %8 = load %struct.fpn*, %struct.fpn** %5, align 8
  %9 = getelementptr inbounds %struct.fpn, %struct.fpn* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = shl i32 %10, 31
  store i32 %11, i32* %6, align 4
  %12 = load %struct.fpn*, %struct.fpn** %5, align 8
  %13 = call i64 @ISNAN(%struct.fpn* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.fpn*, %struct.fpn** %5, align 8
  %17 = load i32, i32* @FP_NMANT, align 4
  %18 = sub nsw i32 %17, 1
  %19 = load i32, i32* @SNG_FRACBITS, align 4
  %20 = sub nsw i32 %18, %19
  %21 = call i32 @fpu_shr(%struct.fpn* %16, i32 %20)
  %22 = load i32, i32* @SNG_EXP_INFNAN, align 4
  store i32 %22, i32* %7, align 4
  br label %157

23:                                               ; preds = %2
  %24 = load %struct.fpn*, %struct.fpn** %5, align 8
  %25 = call i64 @ISINF(%struct.fpn* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @SNG_EXP_INFNAN, align 4
  %30 = load i32, i32* @SNG_FRACBITS, align 4
  %31 = shl i32 %29, %30
  %32 = or i32 %28, %31
  store i32 %32, i32* %3, align 4
  br label %173

33:                                               ; preds = %23
  %34 = load %struct.fpn*, %struct.fpn** %5, align 8
  %35 = call i64 @ISZERO(%struct.fpn* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %173

39:                                               ; preds = %33
  %40 = load %struct.fpn*, %struct.fpn** %5, align 8
  %41 = getelementptr inbounds %struct.fpn, %struct.fpn* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SNG_EXP_BIAS, align 4
  %44 = add nsw i32 %42, %43
  store i32 %44, i32* %7, align 4
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %46, label %105

46:                                               ; preds = %39
  %47 = load %struct.fpn*, %struct.fpn** %5, align 8
  %48 = load i32, i32* @FP_NMANT, align 4
  %49 = load i32, i32* @FP_NG, align 4
  %50 = sub nsw i32 %48, %49
  %51 = load i32, i32* @SNG_FRACBITS, align 4
  %52 = sub nsw i32 %50, %51
  %53 = load i32, i32* %7, align 4
  %54 = sub nsw i32 %52, %53
  %55 = call i32 @fpu_shr(%struct.fpn* %47, i32 %54)
  %56 = load %struct.fpemu*, %struct.fpemu** %4, align 8
  %57 = load %struct.fpn*, %struct.fpn** %5, align 8
  %58 = call i64 @round(%struct.fpemu* %56, %struct.fpn* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %46
  %61 = load %struct.fpn*, %struct.fpn** %5, align 8
  %62 = getelementptr inbounds %struct.fpn, %struct.fpn* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @SNG_FRACBITS, align 4
  %67 = shl i32 1, %66
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %60
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @SNG_FRACBITS, align 4
  %72 = shl i32 1, %71
  %73 = or i32 %70, %72
  store i32 %73, i32* %3, align 4
  br label %173

74:                                               ; preds = %60, %46
  %75 = load %struct.fpemu*, %struct.fpemu** %4, align 8
  %76 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @FPSCR_FI, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %74
  %82 = load %struct.fpemu*, %struct.fpemu** %4, align 8
  %83 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @FPSCR_UX, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %81, %74
  %89 = load i32, i32* @FPSCR_UX, align 4
  %90 = load %struct.fpemu*, %struct.fpemu** %4, align 8
  %91 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %88, %81
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @SNG_FRACBITS, align 4
  %97 = shl i32 0, %96
  %98 = or i32 %95, %97
  %99 = load %struct.fpn*, %struct.fpn** %5, align 8
  %100 = getelementptr inbounds %struct.fpn, %struct.fpn* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 3
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %98, %103
  store i32 %104, i32* %3, align 4
  br label %173

105:                                              ; preds = %39
  %106 = load %struct.fpn*, %struct.fpn** %5, align 8
  %107 = load i32, i32* @FP_NMANT, align 4
  %108 = load i32, i32* @FP_NG, align 4
  %109 = sub nsw i32 %107, %108
  %110 = sub nsw i32 %109, 1
  %111 = load i32, i32* @SNG_FRACBITS, align 4
  %112 = sub nsw i32 %110, %111
  %113 = call i32 @fpu_shr(%struct.fpn* %106, i32 %112)
  %114 = load %struct.fpemu*, %struct.fpemu** %4, align 8
  %115 = load %struct.fpn*, %struct.fpn** %5, align 8
  %116 = call i64 @round(%struct.fpemu* %114, %struct.fpn* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %105
  %119 = load %struct.fpn*, %struct.fpn** %5, align 8
  %120 = getelementptr inbounds %struct.fpn, %struct.fpn* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 3
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @SNG_FRACBITS, align 4
  %125 = shl i32 2, %124
  %126 = icmp eq i32 %123, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %118
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %7, align 4
  br label %130

130:                                              ; preds = %127, %118, %105
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @SNG_EXP_INFNAN, align 4
  %133 = icmp sge i32 %131, %132
  br i1 %133, label %134, label %156

134:                                              ; preds = %130
  %135 = load %struct.fpemu*, %struct.fpemu** %4, align 8
  %136 = load i32, i32* %6, align 4
  %137 = call i64 @toinf(%struct.fpemu* %135, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %134
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* @SNG_EXP_INFNAN, align 4
  %142 = load i32, i32* @SNG_FRACBITS, align 4
  %143 = shl i32 %141, %142
  %144 = or i32 %140, %143
  store i32 %144, i32* %3, align 4
  br label %173

145:                                              ; preds = %134
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* @SNG_EXP_INFNAN, align 4
  %148 = sub nsw i32 %147, 1
  %149 = load i32, i32* @SNG_FRACBITS, align 4
  %150 = shl i32 %148, %149
  %151 = or i32 %146, %150
  %152 = load i32, i32* @SNG_FRACBITS, align 4
  %153 = shl i32 1, %152
  %154 = sub nsw i32 %153, 1
  %155 = or i32 %151, %154
  store i32 %155, i32* %3, align 4
  br label %173

156:                                              ; preds = %130
  br label %157

157:                                              ; preds = %156, %15
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* @SNG_FRACBITS, align 4
  %161 = shl i32 %159, %160
  %162 = or i32 %158, %161
  %163 = load %struct.fpn*, %struct.fpn** %5, align 8
  %164 = getelementptr inbounds %struct.fpn, %struct.fpn* %163, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 3
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @SNG_FRACBITS, align 4
  %169 = shl i32 1, %168
  %170 = sub nsw i32 %169, 1
  %171 = and i32 %167, %170
  %172 = or i32 %162, %171
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %157, %145, %139, %94, %69, %37, %27
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i64 @ISNAN(%struct.fpn*) #1

declare dso_local i32 @fpu_shr(%struct.fpn*, i32) #1

declare dso_local i64 @ISINF(%struct.fpn*) #1

declare dso_local i64 @ISZERO(%struct.fpn*) #1

declare dso_local i64 @round(%struct.fpemu*, %struct.fpn*) #1

declare dso_local i64 @toinf(%struct.fpemu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
