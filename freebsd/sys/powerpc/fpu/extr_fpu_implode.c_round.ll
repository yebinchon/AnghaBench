; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/fpu/extr_fpu_implode.c_round.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/fpu/extr_fpu_implode.c_round.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpemu = type { i32, i32 }
%struct.fpn = type { i32*, i32, i32 }

@FPU_DECL_CARRY = common dso_local global i32 0, align 4
@FP_NG = common dso_local global i32 0, align 4
@FPSCR_XX = common dso_local global i32 0, align 4
@FPSCR_FI = common dso_local global i32 0, align 4
@FPSCR_RN = common dso_local global i32 0, align 4
@FPSCR_FR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpemu*, %struct.fpn*)* @round to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @round(%struct.fpemu* %0, %struct.fpn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fpemu*, align 8
  %5 = alloca %struct.fpn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fpemu* %0, %struct.fpemu** %4, align 8
  store %struct.fpn* %1, %struct.fpn** %5, align 8
  %12 = load i32, i32* @FPU_DECL_CARRY, align 4
  %13 = load %struct.fpn*, %struct.fpn** %5, align 8
  %14 = getelementptr inbounds %struct.fpn, %struct.fpn* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load %struct.fpn*, %struct.fpn** %5, align 8
  %19 = getelementptr inbounds %struct.fpn, %struct.fpn* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load %struct.fpn*, %struct.fpn** %5, align 8
  %24 = getelementptr inbounds %struct.fpn, %struct.fpn* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load %struct.fpn*, %struct.fpn** %5, align 8
  %29 = getelementptr inbounds %struct.fpn, %struct.fpn* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %33, 3
  store i32 %34, i32* %10, align 4
  %35 = load %struct.fpn*, %struct.fpn** %5, align 8
  %36 = getelementptr inbounds %struct.fpn, %struct.fpn* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @FP_NG, align 4
  %40 = ashr i32 %38, %39
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @FP_NG, align 4
  %43 = sub nsw i32 32, %42
  %44 = shl i32 %41, %43
  %45 = or i32 %40, %44
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @FP_NG, align 4
  %48 = ashr i32 %46, %47
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @FP_NG, align 4
  %51 = sub nsw i32 32, %50
  %52 = shl i32 %49, %51
  %53 = or i32 %48, %52
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @FP_NG, align 4
  %56 = ashr i32 %54, %55
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @FP_NG, align 4
  %59 = sub nsw i32 32, %58
  %60 = shl i32 %57, %59
  %61 = or i32 %56, %60
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* @FP_NG, align 4
  %63 = load i32, i32* %6, align 4
  %64 = ashr i32 %63, %62
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %11, align 4
  %67 = or i32 %65, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %2
  br label %157

70:                                               ; preds = %2
  %71 = load i32, i32* @FPSCR_XX, align 4
  %72 = load i32, i32* @FPSCR_FI, align 4
  %73 = or i32 %71, %72
  %74 = load %struct.fpemu*, %struct.fpemu** %4, align 8
  %75 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load %struct.fpemu*, %struct.fpemu** %4, align 8
  %79 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @FPSCR_RN, align 4
  %82 = and i32 %80, %81
  switch i32 %82, label %84 [
    i32 130, label %83
    i32 128, label %104
    i32 131, label %105
    i32 129, label %112
  ]

83:                                               ; preds = %70
  br label %84

84:                                               ; preds = %70, %83
  %85 = load i32, i32* %10, align 4
  %86 = and i32 %85, 2
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %157

89:                                               ; preds = %84
  %90 = load i32, i32* %10, align 4
  %91 = and i32 %90, 1
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %89
  %94 = load %struct.fpn*, %struct.fpn** %5, align 8
  %95 = getelementptr inbounds %struct.fpn, %struct.fpn* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %93
  %99 = load i32, i32* %9, align 4
  %100 = and i32 %99, 1
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %98, %93, %89
  br label %119

103:                                              ; preds = %98
  br label %157

104:                                              ; preds = %70
  br label %157

105:                                              ; preds = %70
  %106 = load %struct.fpn*, %struct.fpn** %5, align 8
  %107 = getelementptr inbounds %struct.fpn, %struct.fpn* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %119

111:                                              ; preds = %105
  br label %157

112:                                              ; preds = %70
  %113 = load %struct.fpn*, %struct.fpn** %5, align 8
  %114 = getelementptr inbounds %struct.fpn, %struct.fpn* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %112
  br label %119

118:                                              ; preds = %112
  br label %157

119:                                              ; preds = %117, %110, %102
  %120 = load i32, i32* @FPSCR_FR, align 4
  %121 = load %struct.fpemu*, %struct.fpemu** %4, align 8
  %122 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @FPU_ADDS(i32 %125, i32 %126, i32 1)
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @FPU_ADDCS(i32 %128, i32 %129, i32 0)
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @FPU_ADDCS(i32 %131, i32 %132, i32 0)
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @FPU_ADDC(i32 %134, i32 %135, i32 0)
  %137 = load i32, i32* %6, align 4
  %138 = load %struct.fpn*, %struct.fpn** %5, align 8
  %139 = getelementptr inbounds %struct.fpn, %struct.fpn* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  store i32 %137, i32* %141, align 4
  %142 = load i32, i32* %7, align 4
  %143 = load %struct.fpn*, %struct.fpn** %5, align 8
  %144 = getelementptr inbounds %struct.fpn, %struct.fpn* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  store i32 %142, i32* %146, align 4
  %147 = load i32, i32* %8, align 4
  %148 = load %struct.fpn*, %struct.fpn** %5, align 8
  %149 = getelementptr inbounds %struct.fpn, %struct.fpn* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 2
  store i32 %147, i32* %151, align 4
  %152 = load i32, i32* %9, align 4
  %153 = load %struct.fpn*, %struct.fpn** %5, align 8
  %154 = getelementptr inbounds %struct.fpn, %struct.fpn* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 3
  store i32 %152, i32* %156, align 4
  store i32 1, i32* %3, align 4
  br label %178

157:                                              ; preds = %118, %111, %104, %103, %88, %69
  %158 = load i32, i32* %6, align 4
  %159 = load %struct.fpn*, %struct.fpn** %5, align 8
  %160 = getelementptr inbounds %struct.fpn, %struct.fpn* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  store i32 %158, i32* %162, align 4
  %163 = load i32, i32* %7, align 4
  %164 = load %struct.fpn*, %struct.fpn** %5, align 8
  %165 = getelementptr inbounds %struct.fpn, %struct.fpn* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 1
  store i32 %163, i32* %167, align 4
  %168 = load i32, i32* %8, align 4
  %169 = load %struct.fpn*, %struct.fpn** %5, align 8
  %170 = getelementptr inbounds %struct.fpn, %struct.fpn* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 2
  store i32 %168, i32* %172, align 4
  %173 = load i32, i32* %9, align 4
  %174 = load %struct.fpn*, %struct.fpn** %5, align 8
  %175 = getelementptr inbounds %struct.fpn, %struct.fpn* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 3
  store i32 %173, i32* %177, align 4
  store i32 0, i32* %3, align 4
  br label %178

178:                                              ; preds = %157, %119
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i32 @FPU_ADDS(i32, i32, i32) #1

declare dso_local i32 @FPU_ADDCS(i32, i32, i32) #1

declare dso_local i32 @FPU_ADDC(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
