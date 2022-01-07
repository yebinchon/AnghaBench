; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_csa.c_csa_initialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_csa.c_csa_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@BA0_CLKCR1 = common dso_local global i32 0, align 4
@BA0_SERMC1 = common dso_local global i32 0, align 4
@BA0_SERACC = common dso_local global i32 0, align 4
@SERACC_HSP = common dso_local global i32 0, align 4
@SERACC_CODEC_TYPE_1_03 = common dso_local global i32 0, align 4
@BA0_ACCTL = common dso_local global i32 0, align 4
@ACCTL_RSTN = common dso_local global i32 0, align 4
@ACCTL_ESYN = common dso_local global i32 0, align 4
@SERMC1_PTC_AC97 = common dso_local global i32 0, align 4
@BA0_PLLCC = common dso_local global i32 0, align 4
@PLLCC_LPF_1050_2780_KHZ = common dso_local global i32 0, align 4
@PLLCC_CDR_73_104_MHZ = common dso_local global i32 0, align 4
@BA0_PLLM = common dso_local global i32 0, align 4
@BA0_CLKCR2 = common dso_local global i32 0, align 4
@CLKCR2_PDIVS_8 = common dso_local global i32 0, align 4
@CLKCR1_PLLP = common dso_local global i32 0, align 4
@CLKCR1_SWCE = common dso_local global i32 0, align 4
@BA0_SERC1 = common dso_local global i32 0, align 4
@SERC1_SO1F_AC97 = common dso_local global i32 0, align 4
@SERC1_SO1EN = common dso_local global i32 0, align 4
@BA0_SERC2 = common dso_local global i32 0, align 4
@SERC2_SI1F_AC97 = common dso_local global i32 0, align 4
@SERMC1_MSPE = common dso_local global i32 0, align 4
@BA0_ACSTS = common dso_local global i32 0, align 4
@ACSTS_CRDY = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ACCTL_VFRM = common dso_local global i32 0, align 4
@BA0_ACISV = common dso_local global i32 0, align 4
@ACISV_ISV3 = common dso_local global i32 0, align 4
@ACISV_ISV4 = common dso_local global i32 0, align 4
@BA0_ACOSV = common dso_local global i32 0, align 4
@ACOSV_SLV3 = common dso_local global i32 0, align 4
@ACOSV_SLV4 = common dso_local global i32 0, align 4
@BA0_AC97_POWERDOWN = common dso_local global i32 0, align 4
@BA0_HICR = common dso_local global i32 0, align 4
@BA0_SERBSP = common dso_local global i32 0, align 4
@HICR_CHGM = common dso_local global i32 0, align 4
@HICR_IEV = common dso_local global i32 0, align 4
@SERACC_CODEC_TYPE_2_0 = common dso_local global i32 0, align 4
@clkcr1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @csa_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csa_initialize(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32* %9, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = load i32, i32* @BA0_CLKCR1, align 4
  %12 = call i32 @csa_writeio(i32* %10, i32 %11, i32 0)
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* @BA0_SERMC1, align 4
  %15 = call i32 @csa_writeio(i32* %13, i32 %14, i32 0)
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* @BA0_SERACC, align 4
  %18 = load i32, i32* @SERACC_HSP, align 4
  %19 = load i32, i32* @SERACC_CODEC_TYPE_1_03, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @csa_writeio(i32* %16, i32 %17, i32 %20)
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* @BA0_ACCTL, align 4
  %24 = call i32 @csa_writeio(i32* %22, i32 %23, i32 1)
  %25 = call i32 @DELAY(i32 50)
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* @BA0_ACCTL, align 4
  %28 = call i32 @csa_writeio(i32* %26, i32 %27, i32 0)
  %29 = call i32 @DELAY(i32 50)
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* @BA0_ACCTL, align 4
  %32 = load i32, i32* @ACCTL_RSTN, align 4
  %33 = call i32 @csa_writeio(i32* %30, i32 %31, i32 %32)
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* @BA0_ACCTL, align 4
  %36 = load i32, i32* @ACCTL_ESYN, align 4
  %37 = load i32, i32* @ACCTL_RSTN, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @csa_writeio(i32* %34, i32 %35, i32 %38)
  %40 = call i32 @DELAY(i32 50000)
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* @BA0_SERMC1, align 4
  %43 = load i32, i32* @SERMC1_PTC_AC97, align 4
  %44 = call i32 @csa_writeio(i32* %41, i32 %42, i32 %43)
  %45 = call i32 @DELAY(i32 700000)
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* @BA0_PLLCC, align 4
  %48 = load i32, i32* @PLLCC_LPF_1050_2780_KHZ, align 4
  %49 = load i32, i32* @PLLCC_CDR_73_104_MHZ, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @csa_writeio(i32* %46, i32 %47, i32 %50)
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* @BA0_PLLM, align 4
  %54 = call i32 @csa_writeio(i32* %52, i32 %53, i32 58)
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* @BA0_CLKCR2, align 4
  %57 = load i32, i32* @CLKCR2_PDIVS_8, align 4
  %58 = call i32 @csa_writeio(i32* %55, i32 %56, i32 %57)
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* @BA0_CLKCR1, align 4
  %61 = load i32, i32* @CLKCR1_PLLP, align 4
  %62 = call i32 @csa_writeio(i32* %59, i32 %60, i32 %61)
  %63 = call i32 @DELAY(i32 5000)
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* @BA0_CLKCR1, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* @BA0_CLKCR1, align 4
  %68 = call i32 @csa_readio(i32* %66, i32 %67)
  %69 = load i32, i32* @CLKCR1_SWCE, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @csa_writeio(i32* %64, i32 %65, i32 %70)
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @csa_clearserialfifos(i32* %72)
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* @BA0_SERC1, align 4
  %76 = load i32, i32* @SERC1_SO1F_AC97, align 4
  %77 = load i32, i32* @SERC1_SO1EN, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @csa_writeio(i32* %74, i32 %75, i32 %78)
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* @BA0_SERC2, align 4
  %82 = load i32, i32* @SERC2_SI1F_AC97, align 4
  %83 = load i32, i32* @SERC1_SO1EN, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @csa_writeio(i32* %80, i32 %81, i32 %84)
  %86 = load i32*, i32** %7, align 8
  %87 = load i32, i32* @BA0_SERMC1, align 4
  %88 = load i32, i32* @SERMC1_PTC_AC97, align 4
  %89 = load i32, i32* @SERMC1_MSPE, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @csa_writeio(i32* %86, i32 %87, i32 %90)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %106, %1
  %93 = load i32, i32* %4, align 4
  %94 = icmp slt i32 %93, 1000
  br i1 %94, label %95, label %109

95:                                               ; preds = %92
  %96 = call i32 @DELAY(i32 125)
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* @BA0_ACSTS, align 4
  %99 = call i32 @csa_readio(i32* %97, i32 %98)
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @ACSTS_CRDY, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  br label %109

105:                                              ; preds = %95
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %4, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %4, align 4
  br label %92

109:                                              ; preds = %104, %92
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @ACSTS_CRDY, align 4
  %112 = and i32 %110, %111
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load i32, i32* @ENXIO, align 4
  store i32 %115, i32* %2, align 4
  br label %166

116:                                              ; preds = %109
  %117 = load i32*, i32** %7, align 8
  %118 = load i32, i32* @BA0_ACCTL, align 4
  %119 = load i32, i32* @ACCTL_VFRM, align 4
  %120 = load i32, i32* @ACCTL_ESYN, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @ACCTL_RSTN, align 4
  %123 = or i32 %121, %122
  %124 = call i32 @csa_writeio(i32* %117, i32 %118, i32 %123)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %144, %116
  %126 = load i32, i32* %4, align 4
  %127 = icmp slt i32 %126, 2000
  br i1 %127, label %128, label %147

128:                                              ; preds = %125
  %129 = call i32 @DELAY(i32 1000)
  %130 = load i32*, i32** %7, align 8
  %131 = load i32, i32* @BA0_ACISV, align 4
  %132 = call i32 @csa_readio(i32* %130, i32 %131)
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* @ACISV_ISV3, align 4
  %135 = load i32, i32* @ACISV_ISV4, align 4
  %136 = or i32 %134, %135
  %137 = and i32 %133, %136
  %138 = load i32, i32* @ACISV_ISV3, align 4
  %139 = load i32, i32* @ACISV_ISV4, align 4
  %140 = or i32 %138, %139
  %141 = icmp eq i32 %137, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %128
  br label %147

143:                                              ; preds = %128
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %4, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %4, align 4
  br label %125

147:                                              ; preds = %142, %125
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* @ACISV_ISV3, align 4
  %150 = load i32, i32* @ACISV_ISV4, align 4
  %151 = or i32 %149, %150
  %152 = and i32 %148, %151
  %153 = load i32, i32* @ACISV_ISV3, align 4
  %154 = load i32, i32* @ACISV_ISV4, align 4
  %155 = or i32 %153, %154
  %156 = icmp ne i32 %152, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %147
  %158 = load i32, i32* @ENXIO, align 4
  store i32 %158, i32* %2, align 4
  br label %166

159:                                              ; preds = %147
  %160 = load i32*, i32** %7, align 8
  %161 = load i32, i32* @BA0_ACOSV, align 4
  %162 = load i32, i32* @ACOSV_SLV3, align 4
  %163 = load i32, i32* @ACOSV_SLV4, align 4
  %164 = or i32 %162, %163
  %165 = call i32 @csa_writeio(i32* %160, i32 %161, i32 %164)
  store i32 0, i32* %2, align 4
  br label %166

166:                                              ; preds = %159, %157, %114
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local i32 @csa_writeio(i32*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @csa_readio(i32*, i32) #1

declare dso_local i32 @csa_clearserialfifos(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
