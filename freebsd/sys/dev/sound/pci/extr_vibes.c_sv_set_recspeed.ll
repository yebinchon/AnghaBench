; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_vibes.c_sv_set_recspeed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_vibes.c_sv_set_recspeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32 }

@SV_F_SCALE = common dso_local global i32 0, align 4
@SV_F_REF = common dso_local global i32 0, align 4
@SV_REG_ADC_PLLM = common dso_local global i32 0, align 4
@SV_REG_ADC_PLLN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"svrchan_setspeed: %d -> PLLM 0x%02x PLLNR 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_info*, i32)* @sv_set_recspeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sv_set_recspeed(%struct.sc_info* %0, i32 %1) #0 {
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %21 = load i32, i32* @SV_F_SCALE, align 4
  %22 = load i32, i32* %4, align 4
  %23 = mul nsw i32 %21, %22
  store i32 %23, i32* %5, align 4
  store i32 2147483647, i32* %20, align 4
  %24 = load i32, i32* %5, align 4
  %25 = sdiv i32 80000000, %24
  store i32 %25, i32* %12, align 4
  store i32 1, i32* %7, align 4
  br label %26

26:                                               ; preds = %32, %2
  %27 = load i32, i32* %7, align 4
  %28 = shl i32 1, %27
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %26

35:                                               ; preds = %26
  %36 = load i32, i32* %5, align 4
  %37 = sdiv i32 150000000, %36
  store i32 %37, i32* %12, align 4
  store i32 1, i32* %8, align 4
  br label %38

38:                                               ; preds = %44, %35
  %39 = load i32, i32* %8, align 4
  %40 = shl i32 2, %39
  %41 = load i32, i32* %12, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %38

47:                                               ; preds = %38
  %48 = load i32, i32* %8, align 4
  %49 = icmp sgt i32 %48, 7
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 7, i32* %8, align 4
  br label %51

51:                                               ; preds = %50, %47
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %135, %51
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp sle i32 %54, %55
  br i1 %56, label %57, label %138

57:                                               ; preds = %53
  %58 = load i32, i32* %9, align 4
  %59 = shl i32 1, %58
  store i32 %59, i32* %11, align 4
  store i32 3, i32* %13, align 4
  br label %60

60:                                               ; preds = %131, %57
  %61 = load i32, i32* %13, align 4
  %62 = icmp slt i32 %61, 34
  br i1 %62, label %63, label %134

63:                                               ; preds = %60
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %13, align 4
  %66 = mul nsw i32 %64, %65
  %67 = load i32, i32* @SV_F_REF, align 4
  %68 = load i32, i32* %11, align 4
  %69 = sdiv i32 %67, %68
  %70 = sdiv i32 %66, %69
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp sgt i32 %71, 3
  br i1 %72, label %73, label %76

73:                                               ; preds = %63
  %74 = load i32, i32* %15, align 4
  %75 = sub nsw i32 %74, 1
  br label %77

76:                                               ; preds = %63
  br label %77

77:                                               ; preds = %76, %73
  %78 = phi i32 [ %75, %73 ], [ 3, %76 ]
  store i32 %78, i32* %17, align 4
  %79 = load i32, i32* %15, align 4
  %80 = icmp slt i32 %79, 129
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 %82, 1
  br label %85

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %84, %81
  %86 = phi i32 [ %83, %81 ], [ 129, %84 ]
  store i32 %86, i32* %18, align 4
  %87 = load i32, i32* %17, align 4
  store i32 %87, i32* %15, align 4
  br label %88

88:                                               ; preds = %127, %85
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %18, align 4
  %91 = icmp sle i32 %89, %90
  br i1 %91, label %92, label %130

92:                                               ; preds = %88
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* @SV_F_REF, align 4
  %95 = mul nsw i32 %93, %94
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %11, align 4
  %98 = mul nsw i32 %96, %97
  %99 = sdiv i32 %95, %98
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp sgt i32 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %92
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %5, align 4
  %106 = sub nsw i32 %104, %105
  store i32 %106, i32* %19, align 4
  br label %111

107:                                              ; preds = %92
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* %6, align 4
  %110 = sub nsw i32 %108, %109
  store i32 %110, i32* %19, align 4
  br label %111

111:                                              ; preds = %107, %103
  %112 = load i32, i32* %19, align 4
  %113 = load i32, i32* %20, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %126

115:                                              ; preds = %111
  %116 = load i32, i32* %9, align 4
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %15, align 4
  %118 = sub nsw i32 %117, 2
  store i32 %118, i32* %16, align 4
  %119 = load i32, i32* %13, align 4
  %120 = sub nsw i32 %119, 2
  store i32 %120, i32* %14, align 4
  %121 = load i32, i32* %19, align 4
  store i32 %121, i32* %20, align 4
  %122 = load i32, i32* %19, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %115
  br label %130

125:                                              ; preds = %115
  br label %126

126:                                              ; preds = %125, %111
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %15, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %15, align 4
  br label %88

130:                                              ; preds = %124, %88
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %13, align 4
  br label %60

134:                                              ; preds = %60
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %9, align 4
  br label %53

138:                                              ; preds = %53
  %139 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %140 = load i32, i32* @SV_REG_ADC_PLLM, align 4
  %141 = load i32, i32* %16, align 4
  %142 = call i32 @sv_indirect_set(%struct.sc_info* %139, i32 %140, i32 %141)
  %143 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %144 = load i32, i32* @SV_REG_ADC_PLLN, align 4
  %145 = load i32, i32* %14, align 4
  %146 = call i32 @SV_ADC_PLLN(i32 %145)
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @SV_ADC_PLLR(i32 %147)
  %149 = or i32 %146, %148
  %150 = call i32 @sv_indirect_set(%struct.sc_info* %143, i32 %144, i32 %149)
  %151 = load i32, i32* %4, align 4
  %152 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %153 = load i32, i32* @SV_REG_ADC_PLLM, align 4
  %154 = call i32 @sv_indirect_get(%struct.sc_info* %152, i32 %153)
  %155 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %156 = load i32, i32* @SV_REG_ADC_PLLN, align 4
  %157 = call i32 @sv_indirect_get(%struct.sc_info* %155, i32 %156)
  %158 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %151, i32 %154, i32 %157)
  %159 = call i32 @DEB(i32 %158)
  ret i32 0
}

declare dso_local i32 @sv_indirect_set(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @SV_ADC_PLLN(i32) #1

declare dso_local i32 @SV_ADC_PLLR(i32) #1

declare dso_local i32 @DEB(i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

declare dso_local i32 @sv_indirect_get(%struct.sc_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
