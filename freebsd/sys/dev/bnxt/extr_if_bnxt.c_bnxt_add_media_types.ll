; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_add_media_types.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_add_media_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32, i32, i32, %struct.bnxt_link_info }
%struct.bnxt_link_info = type { i32 }

@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_AUTO = common dso_local global i32 0, align 4
@BNXT_FLAG_NPAR = common dso_local global i32 0, align 4
@SPEEDS_100GB = common dso_local global i32 0, align 4
@IFM_100G_CR4 = common dso_local global i32 0, align 4
@SPEEDS_50GB = common dso_local global i32 0, align 4
@IFM_50G_CR2 = common dso_local global i32 0, align 4
@SPEEDS_40GB = common dso_local global i32 0, align 4
@IFM_40G_CR4 = common dso_local global i32 0, align 4
@SPEEDS_25GB = common dso_local global i32 0, align 4
@IFM_25G_CR = common dso_local global i32 0, align 4
@SPEEDS_10GB = common dso_local global i32 0, align 4
@IFM_10G_CR1 = common dso_local global i32 0, align 4
@SPEEDS_1GB = common dso_local global i32 0, align 4
@IFM_1000_T = common dso_local global i32 0, align 4
@IFM_100G_LR4 = common dso_local global i32 0, align 4
@IFM_40G_LR4 = common dso_local global i32 0, align 4
@IFM_25G_LR = common dso_local global i32 0, align 4
@IFM_10G_LR = common dso_local global i32 0, align 4
@IFM_1000_LX = common dso_local global i32 0, align 4
@IFM_100G_SR4 = common dso_local global i32 0, align 4
@IFM_40G_SR4 = common dso_local global i32 0, align 4
@IFM_25G_SR = common dso_local global i32 0, align 4
@IFM_10G_SR = common dso_local global i32 0, align 4
@IFM_1000_SX = common dso_local global i32 0, align 4
@IFM_100G_KR4 = common dso_local global i32 0, align 4
@IFM_50G_KR2 = common dso_local global i32 0, align 4
@IFM_40G_KR4 = common dso_local global i32 0, align 4
@IFM_25G_KR = common dso_local global i32 0, align 4
@SPEEDS_20GB = common dso_local global i32 0, align 4
@IFM_20G_KR2 = common dso_local global i32 0, align 4
@IFM_10G_KR = common dso_local global i32 0, align 4
@IFM_1000_KX = common dso_local global i32 0, align 4
@IFM_25G_ACC = common dso_local global i32 0, align 4
@IFM_10G_AOC = common dso_local global i32 0, align 4
@SPEEDS_1GBHD = common dso_local global i32 0, align 4
@IFM_1000_CX = common dso_local global i32 0, align 4
@IFM_10G_T = common dso_local global i32 0, align 4
@SPEEDS_2_5GB = common dso_local global i32 0, align 4
@IFM_2500_T = common dso_local global i32 0, align 4
@SPEEDS_100MB = common dso_local global i32 0, align 4
@IFM_100_T = common dso_local global i32 0, align 4
@SPEEDS_10MB = common dso_local global i32 0, align 4
@IFM_10_T = common dso_local global i32 0, align 4
@IFM_2500_KX = common dso_local global i32 0, align 4
@IFM_1000_SGMII = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Unknown phy type\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"phy type %d not supported by driver\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt_softc*)* @bnxt_add_media_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_add_media_types(%struct.bnxt_softc* %0) #0 {
  %2 = alloca %struct.bnxt_softc*, align 8
  %3 = alloca %struct.bnxt_link_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %2, align 8
  %6 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %7 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %6, i32 0, i32 3
  store %struct.bnxt_link_info* %7, %struct.bnxt_link_info** %3, align 8
  %8 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %9 = call i32 @get_phy_type(%struct.bnxt_softc* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %11 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %14 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IFM_ETHER, align 4
  %17 = load i32, i32* @IFM_AUTO, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @ifmedia_add(i32 %15, i32 %18, i32 0, i32* null)
  %20 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %21 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @BNXT_FLAG_NPAR, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %190

27:                                               ; preds = %1
  %28 = load i32, i32* %5, align 4
  switch i32 %28, label %183 [
    i32 155, label %29
    i32 142, label %29
    i32 147, label %29
    i32 145, label %29
    i32 146, label %29
    i32 138, label %29
    i32 153, label %54
    i32 140, label %54
    i32 133, label %54
    i32 152, label %75
    i32 151, label %75
    i32 139, label %75
    i32 132, label %75
    i32 141, label %75
    i32 154, label %75
    i32 144, label %75
    i32 149, label %75
    i32 135, label %96
    i32 136, label %96
    i32 137, label %96
    i32 143, label %125
    i32 150, label %134
    i32 148, label %139
    i32 131, label %139
    i32 130, label %139
    i32 134, label %160
    i32 129, label %173
    i32 128, label %178
  ]

29:                                               ; preds = %27, %27, %27, %27, %27, %27
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @SPEEDS_100GB, align 4
  %32 = load i32, i32* @IFM_100G_CR4, align 4
  %33 = call i32 @BNXT_IFMEDIA_ADD(i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @SPEEDS_50GB, align 4
  %36 = load i32, i32* @IFM_50G_CR2, align 4
  %37 = call i32 @BNXT_IFMEDIA_ADD(i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @SPEEDS_40GB, align 4
  %40 = load i32, i32* @IFM_40G_CR4, align 4
  %41 = call i32 @BNXT_IFMEDIA_ADD(i32 %38, i32 %39, i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @SPEEDS_25GB, align 4
  %44 = load i32, i32* @IFM_25G_CR, align 4
  %45 = call i32 @BNXT_IFMEDIA_ADD(i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @SPEEDS_10GB, align 4
  %48 = load i32, i32* @IFM_10G_CR1, align 4
  %49 = call i32 @BNXT_IFMEDIA_ADD(i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @SPEEDS_1GB, align 4
  %52 = load i32, i32* @IFM_1000_T, align 4
  %53 = call i32 @BNXT_IFMEDIA_ADD(i32 %50, i32 %51, i32 %52)
  br label %189

54:                                               ; preds = %27, %27, %27
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @SPEEDS_100GB, align 4
  %57 = load i32, i32* @IFM_100G_LR4, align 4
  %58 = call i32 @BNXT_IFMEDIA_ADD(i32 %55, i32 %56, i32 %57)
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @SPEEDS_40GB, align 4
  %61 = load i32, i32* @IFM_40G_LR4, align 4
  %62 = call i32 @BNXT_IFMEDIA_ADD(i32 %59, i32 %60, i32 %61)
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @SPEEDS_25GB, align 4
  %65 = load i32, i32* @IFM_25G_LR, align 4
  %66 = call i32 @BNXT_IFMEDIA_ADD(i32 %63, i32 %64, i32 %65)
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @SPEEDS_10GB, align 4
  %69 = load i32, i32* @IFM_10G_LR, align 4
  %70 = call i32 @BNXT_IFMEDIA_ADD(i32 %67, i32 %68, i32 %69)
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @SPEEDS_1GB, align 4
  %73 = load i32, i32* @IFM_1000_LX, align 4
  %74 = call i32 @BNXT_IFMEDIA_ADD(i32 %71, i32 %72, i32 %73)
  br label %189

75:                                               ; preds = %27, %27, %27, %27, %27, %27, %27, %27
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @SPEEDS_100GB, align 4
  %78 = load i32, i32* @IFM_100G_SR4, align 4
  %79 = call i32 @BNXT_IFMEDIA_ADD(i32 %76, i32 %77, i32 %78)
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @SPEEDS_40GB, align 4
  %82 = load i32, i32* @IFM_40G_SR4, align 4
  %83 = call i32 @BNXT_IFMEDIA_ADD(i32 %80, i32 %81, i32 %82)
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @SPEEDS_25GB, align 4
  %86 = load i32, i32* @IFM_25G_SR, align 4
  %87 = call i32 @BNXT_IFMEDIA_ADD(i32 %84, i32 %85, i32 %86)
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @SPEEDS_10GB, align 4
  %90 = load i32, i32* @IFM_10G_SR, align 4
  %91 = call i32 @BNXT_IFMEDIA_ADD(i32 %88, i32 %89, i32 %90)
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @SPEEDS_1GB, align 4
  %94 = load i32, i32* @IFM_1000_SX, align 4
  %95 = call i32 @BNXT_IFMEDIA_ADD(i32 %92, i32 %93, i32 %94)
  br label %189

96:                                               ; preds = %27, %27, %27
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @SPEEDS_100GB, align 4
  %99 = load i32, i32* @IFM_100G_KR4, align 4
  %100 = call i32 @BNXT_IFMEDIA_ADD(i32 %97, i32 %98, i32 %99)
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @SPEEDS_50GB, align 4
  %103 = load i32, i32* @IFM_50G_KR2, align 4
  %104 = call i32 @BNXT_IFMEDIA_ADD(i32 %101, i32 %102, i32 %103)
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @SPEEDS_40GB, align 4
  %107 = load i32, i32* @IFM_40G_KR4, align 4
  %108 = call i32 @BNXT_IFMEDIA_ADD(i32 %105, i32 %106, i32 %107)
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @SPEEDS_25GB, align 4
  %111 = load i32, i32* @IFM_25G_KR, align 4
  %112 = call i32 @BNXT_IFMEDIA_ADD(i32 %109, i32 %110, i32 %111)
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* @SPEEDS_20GB, align 4
  %115 = load i32, i32* @IFM_20G_KR2, align 4
  %116 = call i32 @BNXT_IFMEDIA_ADD(i32 %113, i32 %114, i32 %115)
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* @SPEEDS_10GB, align 4
  %119 = load i32, i32* @IFM_10G_KR, align 4
  %120 = call i32 @BNXT_IFMEDIA_ADD(i32 %117, i32 %118, i32 %119)
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* @SPEEDS_1GB, align 4
  %123 = load i32, i32* @IFM_1000_KX, align 4
  %124 = call i32 @BNXT_IFMEDIA_ADD(i32 %121, i32 %122, i32 %123)
  br label %189

125:                                              ; preds = %27
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* @SPEEDS_25GB, align 4
  %128 = load i32, i32* @IFM_25G_ACC, align 4
  %129 = call i32 @BNXT_IFMEDIA_ADD(i32 %126, i32 %127, i32 %128)
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* @SPEEDS_10GB, align 4
  %132 = load i32, i32* @IFM_10G_AOC, align 4
  %133 = call i32 @BNXT_IFMEDIA_ADD(i32 %130, i32 %131, i32 %132)
  br label %189

134:                                              ; preds = %27
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* @SPEEDS_1GBHD, align 4
  %137 = load i32, i32* @IFM_1000_CX, align 4
  %138 = call i32 @BNXT_IFMEDIA_ADD(i32 %135, i32 %136, i32 %137)
  br label %189

139:                                              ; preds = %27, %27, %27
  %140 = load i32, i32* %4, align 4
  %141 = load i32, i32* @SPEEDS_10GB, align 4
  %142 = load i32, i32* @IFM_10G_T, align 4
  %143 = call i32 @BNXT_IFMEDIA_ADD(i32 %140, i32 %141, i32 %142)
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* @SPEEDS_2_5GB, align 4
  %146 = load i32, i32* @IFM_2500_T, align 4
  %147 = call i32 @BNXT_IFMEDIA_ADD(i32 %144, i32 %145, i32 %146)
  %148 = load i32, i32* %4, align 4
  %149 = load i32, i32* @SPEEDS_1GB, align 4
  %150 = load i32, i32* @IFM_1000_T, align 4
  %151 = call i32 @BNXT_IFMEDIA_ADD(i32 %148, i32 %149, i32 %150)
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* @SPEEDS_100MB, align 4
  %154 = load i32, i32* @IFM_100_T, align 4
  %155 = call i32 @BNXT_IFMEDIA_ADD(i32 %152, i32 %153, i32 %154)
  %156 = load i32, i32* %4, align 4
  %157 = load i32, i32* @SPEEDS_10MB, align 4
  %158 = load i32, i32* @IFM_10_T, align 4
  %159 = call i32 @BNXT_IFMEDIA_ADD(i32 %156, i32 %157, i32 %158)
  br label %189

160:                                              ; preds = %27
  %161 = load i32, i32* %4, align 4
  %162 = load i32, i32* @SPEEDS_10GB, align 4
  %163 = load i32, i32* @IFM_10G_KR, align 4
  %164 = call i32 @BNXT_IFMEDIA_ADD(i32 %161, i32 %162, i32 %163)
  %165 = load i32, i32* %4, align 4
  %166 = load i32, i32* @SPEEDS_2_5GB, align 4
  %167 = load i32, i32* @IFM_2500_KX, align 4
  %168 = call i32 @BNXT_IFMEDIA_ADD(i32 %165, i32 %166, i32 %167)
  %169 = load i32, i32* %4, align 4
  %170 = load i32, i32* @SPEEDS_1GB, align 4
  %171 = load i32, i32* @IFM_1000_KX, align 4
  %172 = call i32 @BNXT_IFMEDIA_ADD(i32 %169, i32 %170, i32 %171)
  br label %189

173:                                              ; preds = %27
  %174 = load i32, i32* %4, align 4
  %175 = load i32, i32* @SPEEDS_1GB, align 4
  %176 = load i32, i32* @IFM_1000_SGMII, align 4
  %177 = call i32 @BNXT_IFMEDIA_ADD(i32 %174, i32 %175, i32 %176)
  br label %189

178:                                              ; preds = %27
  %179 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %180 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (i32, i8*, ...) @device_printf(i32 %181, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %189

183:                                              ; preds = %27
  %184 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %185 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %5, align 4
  %188 = call i32 (i32, i8*, ...) @device_printf(i32 %186, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %187)
  br label %189

189:                                              ; preds = %183, %178, %173, %160, %139, %134, %125, %96, %75, %54, %29
  br label %190

190:                                              ; preds = %189, %26
  ret void
}

declare dso_local i32 @get_phy_type(%struct.bnxt_softc*) #1

declare dso_local i32 @ifmedia_add(i32, i32, i32, i32*) #1

declare dso_local i32 @BNXT_IFMEDIA_ADD(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
