; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/fpu/extr_fpu_implode.c_fpu_ftod.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/fpu/extr_fpu_implode.c_fpu_ftod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpemu = type { i32, i32 }
%struct.fpn = type { i32, i32, i32* }

@FP_NMANT = common dso_local global i32 0, align 4
@DBL_FRACBITS = common dso_local global i32 0, align 4
@DBL_EXP_INFNAN = common dso_local global i32 0, align 4
@DBL_EXP_BIAS = common dso_local global i32 0, align 4
@FP_NG = common dso_local global i32 0, align 4
@FPSCR_FI = common dso_local global i32 0, align 4
@FPSCR_UX = common dso_local global i32 0, align 4
@FPSCR_OX = common dso_local global i32 0, align 4
@DBL_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpu_ftod(%struct.fpemu* %0, %struct.fpn* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fpemu*, align 8
  %6 = alloca %struct.fpn*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fpemu* %0, %struct.fpemu** %5, align 8
  store %struct.fpn* %1, %struct.fpn** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.fpn*, %struct.fpn** %6, align 8
  %11 = getelementptr inbounds %struct.fpn, %struct.fpn* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = shl i32 %12, 31
  store i32 %13, i32* %8, align 4
  %14 = load %struct.fpn*, %struct.fpn** %6, align 8
  %15 = call i64 @ISNAN(%struct.fpn* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load %struct.fpn*, %struct.fpn** %6, align 8
  %19 = load i32, i32* @FP_NMANT, align 4
  %20 = sub nsw i32 %19, 1
  %21 = load i32, i32* @DBL_FRACBITS, align 4
  %22 = sub nsw i32 %20, %21
  %23 = call i32 @fpu_shr(%struct.fpn* %18, i32 %22)
  %24 = load i32, i32* @DBL_EXP_INFNAN, align 4
  store i32 %24, i32* %9, align 4
  br label %171

25:                                               ; preds = %3
  %26 = load %struct.fpn*, %struct.fpn** %6, align 8
  %27 = call i64 @ISINF(%struct.fpn* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load i32, i32* @DBL_EXP_INFNAN, align 4
  %31 = load i32, i32* @DBL_FRACBITS, align 4
  %32 = and i32 %31, 31
  %33 = shl i32 %30, %32
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  br label %41

36:                                               ; preds = %25
  %37 = load %struct.fpn*, %struct.fpn** %6, align 8
  %38 = call i64 @ISZERO(%struct.fpn* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %40, %29
  %42 = load i32*, i32** %7, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 0, i32* %43, align 4
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %196

45:                                               ; preds = %36
  %46 = load %struct.fpn*, %struct.fpn** %6, align 8
  %47 = getelementptr inbounds %struct.fpn, %struct.fpn* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @DBL_EXP_BIAS, align 4
  %50 = add nsw i32 %48, %49
  store i32 %50, i32* %9, align 4
  %51 = icmp sle i32 %50, 0
  br i1 %51, label %52, label %105

52:                                               ; preds = %45
  %53 = load %struct.fpn*, %struct.fpn** %6, align 8
  %54 = load i32, i32* @FP_NMANT, align 4
  %55 = load i32, i32* @FP_NG, align 4
  %56 = sub nsw i32 %54, %55
  %57 = load i32, i32* @DBL_FRACBITS, align 4
  %58 = sub nsw i32 %56, %57
  %59 = load i32, i32* %9, align 4
  %60 = sub nsw i32 %58, %59
  %61 = call i32 @fpu_shr(%struct.fpn* %53, i32 %60)
  %62 = load %struct.fpemu*, %struct.fpemu** %5, align 8
  %63 = load %struct.fpn*, %struct.fpn** %6, align 8
  %64 = call i64 @round(%struct.fpemu* %62, %struct.fpn* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %52
  %67 = load %struct.fpn*, %struct.fpn** %6, align 8
  %68 = getelementptr inbounds %struct.fpn, %struct.fpn* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @DBL_FRACBITS, align 4
  %73 = and i32 %72, 31
  %74 = shl i32 1, %73
  %75 = icmp eq i32 %71, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %66
  %77 = load i32*, i32** %7, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  store i32 0, i32* %78, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @DBL_FRACBITS, align 4
  %81 = and i32 %80, 31
  %82 = shl i32 1, %81
  %83 = or i32 %79, %82
  store i32 %83, i32* %4, align 4
  br label %196

84:                                               ; preds = %66, %52
  %85 = load %struct.fpemu*, %struct.fpemu** %5, align 8
  %86 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @FPSCR_FI, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %84
  %92 = load %struct.fpemu*, %struct.fpemu** %5, align 8
  %93 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @FPSCR_UX, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %91, %84
  %99 = load i32, i32* @FPSCR_UX, align 4
  %100 = load %struct.fpemu*, %struct.fpemu** %5, align 8
  %101 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %98, %91
  store i32 0, i32* %9, align 4
  br label %171

105:                                              ; preds = %45
  %106 = load %struct.fpn*, %struct.fpn** %6, align 8
  %107 = load i32, i32* @FP_NMANT, align 4
  %108 = load i32, i32* @FP_NG, align 4
  %109 = sub nsw i32 %107, %108
  %110 = sub nsw i32 %109, 1
  %111 = load i32, i32* @DBL_FRACBITS, align 4
  %112 = sub nsw i32 %110, %111
  %113 = call i32 @fpu_shr(%struct.fpn* %106, i32 %112)
  %114 = load %struct.fpemu*, %struct.fpemu** %5, align 8
  %115 = load %struct.fpn*, %struct.fpn** %6, align 8
  %116 = call i64 @round(%struct.fpemu* %114, %struct.fpn* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %105
  %119 = load %struct.fpn*, %struct.fpn** %6, align 8
  %120 = getelementptr inbounds %struct.fpn, %struct.fpn* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 2
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @DBL_FRACBITS, align 4
  %125 = and i32 %124, 31
  %126 = shl i32 2, %125
  %127 = icmp eq i32 %123, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %118
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %9, align 4
  br label %131

131:                                              ; preds = %128, %118, %105
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* @DBL_EXP_INFNAN, align 4
  %134 = icmp sge i32 %132, %133
  br i1 %134, label %135, label %170

135:                                              ; preds = %131
  %136 = load i32, i32* @FPSCR_OX, align 4
  %137 = load i32, i32* @FPSCR_UX, align 4
  %138 = or i32 %136, %137
  %139 = load %struct.fpemu*, %struct.fpemu** %5, align 8
  %140 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 4
  %143 = load %struct.fpemu*, %struct.fpemu** %5, align 8
  %144 = load i32, i32* %8, align 4
  %145 = call i64 @toinf(%struct.fpemu* %143, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %135
  %148 = load i32*, i32** %7, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  store i32 0, i32* %149, align 4
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* @DBL_EXP_INFNAN, align 4
  %152 = load i32, i32* @DBL_FRACBITS, align 4
  %153 = and i32 %152, 31
  %154 = shl i32 %151, %153
  %155 = or i32 %150, %154
  store i32 %155, i32* %4, align 4
  br label %196

156:                                              ; preds = %135
  %157 = load i32*, i32** %7, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 1
  store i32 -1, i32* %158, align 4
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* @DBL_EXP_INFNAN, align 4
  %161 = load i32, i32* @DBL_FRACBITS, align 4
  %162 = and i32 %161, 31
  %163 = shl i32 %160, %162
  %164 = or i32 %159, %163
  %165 = load i32, i32* @DBL_FRACBITS, align 4
  %166 = and i32 %165, 31
  %167 = shl i32 1, %166
  %168 = sub nsw i32 %167, 1
  %169 = or i32 %164, %168
  store i32 %169, i32* %4, align 4
  br label %196

170:                                              ; preds = %131
  br label %171

171:                                              ; preds = %170, %104, %17
  %172 = load %struct.fpn*, %struct.fpn** %6, align 8
  %173 = getelementptr inbounds %struct.fpn, %struct.fpn* %172, i32 0, i32 2
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 3
  %176 = load i32, i32* %175, align 4
  %177 = load i32*, i32** %7, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 1
  store i32 %176, i32* %178, align 4
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* %9, align 4
  %181 = load i32, i32* @DBL_FRACBITS, align 4
  %182 = and i32 %181, 31
  %183 = shl i32 %180, %182
  %184 = or i32 %179, %183
  %185 = load %struct.fpn*, %struct.fpn** %6, align 8
  %186 = getelementptr inbounds %struct.fpn, %struct.fpn* %185, i32 0, i32 2
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 2
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @DBL_FRACBITS, align 4
  %191 = and i32 %190, 31
  %192 = shl i32 1, %191
  %193 = sub nsw i32 %192, 1
  %194 = and i32 %189, %193
  %195 = or i32 %184, %194
  store i32 %195, i32* %4, align 4
  br label %196

196:                                              ; preds = %171, %156, %147, %76, %41
  %197 = load i32, i32* %4, align 4
  ret i32 %197
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
