; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_host_timing.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_host_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MMC_CAP_HSPEED = common dso_local global i32 0, align 4
@MMC_CAP_UHS_SDR12 = common dso_local global i32 0, align 4
@MMC_CAP_UHS_SDR25 = common dso_local global i32 0, align 4
@MMC_CAP_UHS_DDR50 = common dso_local global i32 0, align 4
@MMC_CAP_UHS_SDR50 = common dso_local global i32 0, align 4
@MMC_CAP_UHS_SDR104 = common dso_local global i32 0, align 4
@MMC_CAP_MMC_DDR52 = common dso_local global i32 0, align 4
@MMC_CAP_MMC_HS200 = common dso_local global i32 0, align 4
@MMC_CAP_MMC_HS400 = common dso_local global i32 0, align 4
@MMC_CAP_MMC_ENH_STROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @mmc_host_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_host_timing(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
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
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @mmcbr_get_caps(i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  switch i32 %29, label %145 [
    i32 133, label %30
    i32 138, label %31
    i32 130, label %42
    i32 129, label %53
    i32 132, label %64
    i32 128, label %75
    i32 131, label %86
    i32 137, label %97
    i32 136, label %108
    i32 135, label %119
    i32 134, label %130
  ]

30:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %146

31:                                               ; preds = %2
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @MMC_CAP_HSPEED, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @MMC_CAP_HSPEED, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 1, i32* %7, align 4
  br label %39

38:                                               ; preds = %31
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %38, %37
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %146

42:                                               ; preds = %2
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @MMC_CAP_UHS_SDR12, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @MMC_CAP_UHS_SDR12, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 1, i32* %9, align 4
  br label %50

49:                                               ; preds = %42
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %49, %48
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %3, align 4
  br label %146

53:                                               ; preds = %2
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @MMC_CAP_UHS_SDR25, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @MMC_CAP_UHS_SDR25, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 1, i32* %11, align 4
  br label %61

60:                                               ; preds = %53
  store i32 0, i32* %11, align 4
  br label %61

61:                                               ; preds = %60, %59
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %3, align 4
  br label %146

64:                                               ; preds = %2
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @MMC_CAP_UHS_DDR50, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* @MMC_CAP_UHS_DDR50, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  store i32 1, i32* %13, align 4
  br label %72

71:                                               ; preds = %64
  store i32 0, i32* %13, align 4
  br label %72

72:                                               ; preds = %71, %70
  %73 = load i32, i32* %13, align 4
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  store i32 %74, i32* %3, align 4
  br label %146

75:                                               ; preds = %2
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @MMC_CAP_UHS_SDR50, align 4
  %78 = and i32 %76, %77
  %79 = load i32, i32* @MMC_CAP_UHS_SDR50, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  store i32 1, i32* %15, align 4
  br label %83

82:                                               ; preds = %75
  store i32 0, i32* %15, align 4
  br label %83

83:                                               ; preds = %82, %81
  %84 = load i32, i32* %15, align 4
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %16, align 4
  store i32 %85, i32* %3, align 4
  br label %146

86:                                               ; preds = %2
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @MMC_CAP_UHS_SDR104, align 4
  %89 = and i32 %87, %88
  %90 = load i32, i32* @MMC_CAP_UHS_SDR104, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  store i32 1, i32* %17, align 4
  br label %94

93:                                               ; preds = %86
  store i32 0, i32* %17, align 4
  br label %94

94:                                               ; preds = %93, %92
  %95 = load i32, i32* %17, align 4
  store i32 %95, i32* %18, align 4
  %96 = load i32, i32* %18, align 4
  store i32 %96, i32* %3, align 4
  br label %146

97:                                               ; preds = %2
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @MMC_CAP_MMC_DDR52, align 4
  %100 = and i32 %98, %99
  %101 = load i32, i32* @MMC_CAP_MMC_DDR52, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  store i32 1, i32* %19, align 4
  br label %105

104:                                              ; preds = %97
  store i32 0, i32* %19, align 4
  br label %105

105:                                              ; preds = %104, %103
  %106 = load i32, i32* %19, align 4
  store i32 %106, i32* %20, align 4
  %107 = load i32, i32* %20, align 4
  store i32 %107, i32* %3, align 4
  br label %146

108:                                              ; preds = %2
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @MMC_CAP_MMC_HS200, align 4
  %111 = and i32 %109, %110
  %112 = load i32, i32* @MMC_CAP_MMC_HS200, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  store i32 1, i32* %21, align 4
  br label %116

115:                                              ; preds = %108
  store i32 0, i32* %21, align 4
  br label %116

116:                                              ; preds = %115, %114
  %117 = load i32, i32* %21, align 4
  store i32 %117, i32* %22, align 4
  %118 = load i32, i32* %22, align 4
  store i32 %118, i32* %3, align 4
  br label %146

119:                                              ; preds = %2
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @MMC_CAP_MMC_HS400, align 4
  %122 = and i32 %120, %121
  %123 = load i32, i32* @MMC_CAP_MMC_HS400, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  store i32 1, i32* %23, align 4
  br label %127

126:                                              ; preds = %119
  store i32 0, i32* %23, align 4
  br label %127

127:                                              ; preds = %126, %125
  %128 = load i32, i32* %23, align 4
  store i32 %128, i32* %24, align 4
  %129 = load i32, i32* %24, align 4
  store i32 %129, i32* %3, align 4
  br label %146

130:                                              ; preds = %2
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* @MMC_CAP_MMC_HS400, align 4
  %133 = load i32, i32* @MMC_CAP_MMC_ENH_STROBE, align 4
  %134 = or i32 %132, %133
  %135 = and i32 %131, %134
  %136 = load i32, i32* @MMC_CAP_MMC_HS400, align 4
  %137 = load i32, i32* @MMC_CAP_MMC_ENH_STROBE, align 4
  %138 = or i32 %136, %137
  %139 = icmp eq i32 %135, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %130
  store i32 1, i32* %25, align 4
  br label %142

141:                                              ; preds = %130
  store i32 0, i32* %25, align 4
  br label %142

142:                                              ; preds = %141, %140
  %143 = load i32, i32* %25, align 4
  store i32 %143, i32* %26, align 4
  %144 = load i32, i32* %26, align 4
  store i32 %144, i32* %3, align 4
  br label %146

145:                                              ; preds = %2
  store i32 0, i32* %3, align 4
  br label %146

146:                                              ; preds = %145, %142, %127, %116, %105, %94, %83, %72, %61, %50, %39, %30
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32 @mmcbr_get_caps(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
