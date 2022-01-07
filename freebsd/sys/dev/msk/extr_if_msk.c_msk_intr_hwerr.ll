; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_intr_hwerr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_intr_hwerr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msk_softc = type { i32, i32**, i32 }

@B0_HWE_ISRC = common dso_local global i32 0, align 4
@Y2_IS_TIST_OV = common dso_local global i32 0, align 4
@GMAC_TI_ST_CTRL = common dso_local global i32 0, align 4
@GMT_ST_CLR_IRQ = common dso_local global i32 0, align 4
@Y2_IS_PCI_NEXP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"PCI Express protocol violation error\0A\00", align 1
@Y2_IS_MST_ERR = common dso_local global i32 0, align 4
@Y2_IS_IRQ_STAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"unexpected IRQ Status error\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"unexpected IRQ Master error\0A\00", align 1
@PCIR_STATUS = common dso_local global i32 0, align 4
@B2_TST_CTRL1 = common dso_local global i32 0, align 4
@TST_CFG_WRITE_ON = common dso_local global i32 0, align 4
@PCIM_STATUS_PERR = common dso_local global i32 0, align 4
@PCIM_STATUS_SERR = common dso_local global i32 0, align 4
@PCIM_STATUS_RMABORT = common dso_local global i32 0, align 4
@PCIM_STATUS_RTABORT = common dso_local global i32 0, align 4
@PCIM_STATUS_MDPERR = common dso_local global i32 0, align 4
@TST_CFG_WRITE_OFF = common dso_local global i32 0, align 4
@Y2_IS_PCI_EXP = common dso_local global i32 0, align 4
@PEX_UNC_ERR_STAT = common dso_local global i64 0, align 8
@PEX_UNSUP_REQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Uncorrectable PCI Express error\0A\00", align 1
@PEX_FATAL_ERRORS = common dso_local global i32 0, align 4
@PEX_POIS_TLP = common dso_local global i32 0, align 4
@PEX_HEADER_LOG = common dso_local global i64 0, align 8
@B0_HWE_IMSK = common dso_local global i32 0, align 4
@Y2_HWE_L1_MASK = common dso_local global i32 0, align 4
@MSK_PORT_A = common dso_local global i64 0, align 8
@Y2_HWE_L2_MASK = common dso_local global i32 0, align 4
@MSK_PORT_B = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msk_softc*)* @msk_intr_hwerr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msk_intr_hwerr(%struct.msk_softc* %0) #0 {
  %2 = alloca %struct.msk_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [4 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.msk_softc* %0, %struct.msk_softc** %2, align 8
  %8 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %9 = load i32, i32* @B0_HWE_ISRC, align 4
  %10 = call i32 @CSR_READ_4(%struct.msk_softc* %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @Y2_IS_TIST_OV, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %17 = load i32, i32* @GMAC_TI_ST_CTRL, align 4
  %18 = load i32, i32* @GMT_ST_CLR_IRQ, align 4
  %19 = call i32 @CSR_WRITE_1(%struct.msk_softc* %16, i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %15, %1
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @Y2_IS_PCI_NEXP, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %27 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @device_printf(i32 %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %25, %20
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @Y2_IS_MST_ERR, align 4
  %33 = load i32, i32* @Y2_IS_IRQ_STAT, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %82

37:                                               ; preds = %30
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @Y2_IS_MST_ERR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %44 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @device_printf(i32 %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %52

47:                                               ; preds = %37
  %48 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %49 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @device_printf(i32 %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %47, %42
  %53 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %54 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @PCIR_STATUS, align 4
  %57 = call i32 @pci_read_config(i32 %55, i32 %56, i32 2)
  store i32 %57, i32* %5, align 4
  %58 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %59 = load i32, i32* @B2_TST_CTRL1, align 4
  %60 = load i32, i32* @TST_CFG_WRITE_ON, align 4
  %61 = call i32 @CSR_WRITE_1(%struct.msk_softc* %58, i32 %59, i32 %60)
  %62 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %63 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @PCIR_STATUS, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @PCIM_STATUS_PERR, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @PCIM_STATUS_SERR, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @PCIM_STATUS_RMABORT, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @PCIM_STATUS_RTABORT, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @PCIM_STATUS_MDPERR, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @pci_write_config(i32 %64, i32 %65, i32 %76, i32 2)
  %78 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %79 = load i32, i32* @B2_TST_CTRL1, align 4
  %80 = load i32, i32* @TST_CFG_WRITE_OFF, align 4
  %81 = call i32 @CSR_WRITE_1(%struct.msk_softc* %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %52, %30
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* @Y2_IS_PCI_EXP, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %162

87:                                               ; preds = %82
  %88 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %89 = load i64, i64* @PEX_UNC_ERR_STAT, align 8
  %90 = call i32 @CSR_PCI_READ_4(%struct.msk_softc* %88, i64 %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @PEX_UNSUP_REQ, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %87
  %96 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %97 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @device_printf(i32 %98, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %100

100:                                              ; preds = %95, %87
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @PEX_FATAL_ERRORS, align 4
  %103 = load i32, i32* @PEX_POIS_TLP, align 4
  %104 = or i32 %102, %103
  %105 = and i32 %101, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %150

107:                                              ; preds = %100
  store i32 0, i32* %7, align 4
  br label %108

108:                                              ; preds = %122, %107
  %109 = load i32, i32* %7, align 4
  %110 = icmp slt i32 %109, 4
  br i1 %110, label %111, label %125

111:                                              ; preds = %108
  %112 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %113 = load i64, i64* @PEX_HEADER_LOG, align 8
  %114 = load i32, i32* %7, align 4
  %115 = mul nsw i32 %114, 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %113, %116
  %118 = call i32 @CSR_PCI_READ_4(%struct.msk_softc* %112, i64 %117)
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %120
  store i32 %118, i32* %121, align 4
  br label %122

122:                                              ; preds = %111
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %108

125:                                              ; preds = %108
  %126 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %127 = load i32, i32* %126, align 16
  %128 = icmp eq i32 %127, 1929396225
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %131, 127
  br i1 %132, label %149, label %133

133:                                              ; preds = %129, %125
  %134 = load i32, i32* @Y2_IS_PCI_EXP, align 4
  %135 = xor i32 %134, -1
  %136 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %137 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = and i32 %138, %135
  store i32 %139, i32* %137, align 8
  %140 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %141 = load i32, i32* @B0_HWE_IMSK, align 4
  %142 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %143 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @CSR_WRITE_4(%struct.msk_softc* %140, i32 %141, i32 %144)
  %146 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %147 = load i32, i32* @B0_HWE_IMSK, align 4
  %148 = call i32 @CSR_READ_4(%struct.msk_softc* %146, i32 %147)
  br label %149

149:                                              ; preds = %133, %129
  br label %150

150:                                              ; preds = %149, %100
  %151 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %152 = load i32, i32* @B2_TST_CTRL1, align 4
  %153 = load i32, i32* @TST_CFG_WRITE_ON, align 4
  %154 = call i32 @CSR_WRITE_1(%struct.msk_softc* %151, i32 %152, i32 %153)
  %155 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %156 = load i64, i64* @PEX_UNC_ERR_STAT, align 8
  %157 = call i32 @CSR_PCI_WRITE_4(%struct.msk_softc* %155, i64 %156, i32 -1)
  %158 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %159 = load i32, i32* @B2_TST_CTRL1, align 4
  %160 = load i32, i32* @TST_CFG_WRITE_OFF, align 4
  %161 = call i32 @CSR_WRITE_1(%struct.msk_softc* %158, i32 %159, i32 %160)
  br label %162

162:                                              ; preds = %150, %82
  %163 = load i32, i32* %3, align 4
  %164 = load i32, i32* @Y2_HWE_L1_MASK, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %184

167:                                              ; preds = %162
  %168 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %169 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %168, i32 0, i32 1
  %170 = load i32**, i32*** %169, align 8
  %171 = load i64, i64* @MSK_PORT_A, align 8
  %172 = getelementptr inbounds i32*, i32** %170, i64 %171
  %173 = load i32*, i32** %172, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %175, label %184

175:                                              ; preds = %167
  %176 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %177 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %176, i32 0, i32 1
  %178 = load i32**, i32*** %177, align 8
  %179 = load i64, i64* @MSK_PORT_A, align 8
  %180 = getelementptr inbounds i32*, i32** %178, i64 %179
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %3, align 4
  %183 = call i32 @msk_handle_hwerr(i32* %181, i32 %182)
  br label %184

184:                                              ; preds = %175, %167, %162
  %185 = load i32, i32* %3, align 4
  %186 = load i32, i32* @Y2_HWE_L2_MASK, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %207

189:                                              ; preds = %184
  %190 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %191 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %190, i32 0, i32 1
  %192 = load i32**, i32*** %191, align 8
  %193 = load i64, i64* @MSK_PORT_B, align 8
  %194 = getelementptr inbounds i32*, i32** %192, i64 %193
  %195 = load i32*, i32** %194, align 8
  %196 = icmp ne i32* %195, null
  br i1 %196, label %197, label %207

197:                                              ; preds = %189
  %198 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %199 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %198, i32 0, i32 1
  %200 = load i32**, i32*** %199, align 8
  %201 = load i64, i64* @MSK_PORT_B, align 8
  %202 = getelementptr inbounds i32*, i32** %200, i64 %201
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %3, align 4
  %205 = ashr i32 %204, 8
  %206 = call i32 @msk_handle_hwerr(i32* %203, i32 %205)
  br label %207

207:                                              ; preds = %197, %189, %184
  ret void
}

declare dso_local i32 @CSR_READ_4(%struct.msk_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_1(%struct.msk_softc*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @CSR_PCI_READ_4(%struct.msk_softc*, i64) #1

declare dso_local i32 @CSR_WRITE_4(%struct.msk_softc*, i32, i32) #1

declare dso_local i32 @CSR_PCI_WRITE_4(%struct.msk_softc*, i64, i32) #1

declare dso_local i32 @msk_handle_hwerr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
