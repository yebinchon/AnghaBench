; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_chipinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_chipinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_softc = type { i64, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@TI_EV_CODE_LINK_DOWN = common dso_local global i32 0, align 4
@TI_MISC_HOST_CTL = common dso_local global i32 0, align 4
@TI_MHC_LITTLEENDIAN_INIT = common dso_local global i32 0, align 4
@TI_CPU_STATE = common dso_local global i32 0, align 4
@TI_CPUSTATE_ROMFAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"board self-diagnostics failed!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@TI_CPUSTATE_HALT = common dso_local global i32 0, align 4
@TI_MHC_CHIP_REV_MASK = common dso_local global i32 0, align 4
@TI_HWREV_TIGON = common dso_local global i64 0, align 8
@TI_HWREV_TIGON_II = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"unsupported chip revision\0A\00", align 1
@TI_CPU_CTL_B = common dso_local global i32 0, align 4
@TI_MISC_LOCAL_CTL = common dso_local global i32 0, align 4
@TI_MLC_SRAM_BANK_512K = common dso_local global i32 0, align 4
@TI_MISC_CONF = common dso_local global i32 0, align 4
@TI_MCR_SRAM_SYNCHRONOUS = common dso_local global i32 0, align 4
@TI_PCI_STATE = common dso_local global i32 0, align 4
@TI_PCI_READ_CMD = common dso_local global i32 0, align 4
@TI_PCI_WRITE_CMD = common dso_local global i32 0, align 4
@TI_PCISTATE_USE_MEM_RD_MULT = common dso_local global i32 0, align 4
@TI_PCISTATE_WRITE_MAXDMA = common dso_local global i32 0, align 4
@TI_PCISTATE_READ_MAXDMA = common dso_local global i32 0, align 4
@TI_PCI_BIST = common dso_local global i32 0, align 4
@TI_PCI_CMDSTAT = common dso_local global i32 0, align 4
@PCIM_CMD_MWIEN = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"cache line size %d not supported; disabling PCI MWI\0A\00", align 1
@TI_PCISTATE_MINDMA = common dso_local global i32 0, align 4
@TI_OPMODE_JUMBO_HDRSPLIT = common dso_local global i32 0, align 4
@TI_GCR_OPMODE = common dso_local global i32 0, align 4
@TI_OPMODE_BYTESWAP_BD = common dso_local global i32 0, align 4
@TI_OPMODE_BYTESWAP_DATA = common dso_local global i32 0, align 4
@TI_OPMODE_WORDSWAP_BD = common dso_local global i32 0, align 4
@TI_OPMODE_WARN_ENB = common dso_local global i32 0, align 4
@TI_OPMODE_FATAL_ENB = common dso_local global i32 0, align 4
@TI_OPMODE_DONT_FRAG_JUMBO = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@TI_OPMODE_1_DMA_ACTIVE = common dso_local global i32 0, align 4
@TI_GCR_DMA_WRITECFG = common dso_local global i32 0, align 4
@TI_DMA_STATE_THRESH_8W = common dso_local global i32 0, align 4
@TI_GCR_DMA_READCFG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"bios thinks we're in a 64 bit slot, but we aren't\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TI_MHC_BIGENDIAN_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_softc*)* @ti_chipinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_chipinit(%struct.ti_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ti_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ti_softc* %0, %struct.ti_softc** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @TI_EV_CODE_LINK_DOWN, align 4
  %8 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %8, i32 0, i32 4
  store i32 %7, i32* %9, align 8
  %10 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %11 = load i32, i32* @TI_MISC_HOST_CTL, align 4
  %12 = load i32, i32* @TI_MHC_LITTLEENDIAN_INIT, align 4
  %13 = load i32, i32* @TI_MHC_LITTLEENDIAN_INIT, align 4
  %14 = shl i32 %13, 24
  %15 = or i32 %12, %14
  %16 = call i32 @CSR_WRITE_4(%struct.ti_softc* %10, i32 %11, i32 %15)
  %17 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %18 = load i32, i32* @TI_CPU_STATE, align 4
  %19 = call i32 @CSR_READ_4(%struct.ti_softc* %17, i32 %18)
  %20 = load i32, i32* @TI_CPUSTATE_ROMFAIL, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %25 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, i8*, ...) @device_printf(i32 %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENODEV, align 4
  store i32 %28, i32* %2, align 4
  br label %196

29:                                               ; preds = %1
  %30 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %31 = load i32, i32* @TI_CPU_STATE, align 4
  %32 = load i32, i32* @TI_CPUSTATE_HALT, align 4
  %33 = call i32 @TI_SETBIT(%struct.ti_softc* %30, i32 %31, i32 %32)
  %34 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %35 = load i32, i32* @TI_MISC_HOST_CTL, align 4
  %36 = call i32 @CSR_READ_4(%struct.ti_softc* %34, i32 %35)
  %37 = load i32, i32* @TI_MHC_CHIP_REV_MASK, align 4
  %38 = and i32 %36, %37
  switch i32 %38, label %47 [
    i32 129, label %39
    i32 128, label %43
  ]

39:                                               ; preds = %29
  %40 = load i64, i64* @TI_HWREV_TIGON, align 8
  %41 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %42 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  br label %53

43:                                               ; preds = %29
  %44 = load i64, i64* @TI_HWREV_TIGON_II, align 8
  %45 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %46 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %53

47:                                               ; preds = %29
  %48 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %49 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i8*, ...) @device_printf(i32 %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @ENODEV, align 4
  store i32 %52, i32* %2, align 4
  br label %196

53:                                               ; preds = %43, %39
  %54 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %55 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @TI_HWREV_TIGON_II, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %53
  %60 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %61 = load i32, i32* @TI_CPU_CTL_B, align 4
  %62 = load i32, i32* @TI_CPUSTATE_HALT, align 4
  %63 = call i32 @TI_SETBIT(%struct.ti_softc* %60, i32 %61, i32 %62)
  %64 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %65 = load i32, i32* @TI_MISC_LOCAL_CTL, align 4
  %66 = load i32, i32* @TI_MLC_SRAM_BANK_512K, align 4
  %67 = call i32 @TI_SETBIT(%struct.ti_softc* %64, i32 %65, i32 %66)
  %68 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %69 = load i32, i32* @TI_MISC_CONF, align 4
  %70 = load i32, i32* @TI_MCR_SRAM_SYNCHRONOUS, align 4
  %71 = call i32 @TI_SETBIT(%struct.ti_softc* %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %59, %53
  %73 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %74 = load i32, i32* @TI_PCI_STATE, align 4
  %75 = load i32, i32* @TI_PCI_READ_CMD, align 4
  %76 = load i32, i32* @TI_PCI_WRITE_CMD, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @CSR_WRITE_4(%struct.ti_softc* %73, i32 %74, i32 %77)
  %79 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %80 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @TI_HWREV_TIGON_II, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %72
  %85 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %86 = load i32, i32* @TI_PCI_STATE, align 4
  %87 = load i32, i32* @TI_PCISTATE_USE_MEM_RD_MULT, align 4
  %88 = call i32 @TI_SETBIT(%struct.ti_softc* %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %84, %72
  %90 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %91 = load i32, i32* @TI_PCI_STATE, align 4
  %92 = load i32, i32* @TI_PCISTATE_WRITE_MAXDMA, align 4
  %93 = load i32, i32* @TI_PCISTATE_READ_MAXDMA, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @TI_CLRBIT(%struct.ti_softc* %90, i32 %91, i32 %94)
  %96 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %97 = load i32, i32* @TI_PCI_BIST, align 4
  %98 = call i32 @CSR_READ_4(%struct.ti_softc* %96, i32 %97)
  %99 = and i32 %98, 255
  store i32 %99, i32* %4, align 4
  %100 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %101 = load i32, i32* @TI_PCI_CMDSTAT, align 4
  %102 = call i32 @CSR_READ_4(%struct.ti_softc* %100, i32 %101)
  %103 = load i32, i32* @PCIM_CMD_MWIEN, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %129

106:                                              ; preds = %89
  %107 = load i32, i32* %4, align 4
  switch i32 %107, label %109 [
    i32 1, label %108
    i32 4, label %108
    i32 8, label %108
    i32 16, label %108
    i32 32, label %108
    i32 64, label %108
  ]

108:                                              ; preds = %106, %106, %106, %106, %106, %106
  br label %128

109:                                              ; preds = %106
  %110 = load i32, i32* @bootverbose, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %114 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %4, align 4
  %117 = call i32 (i32, i8*, ...) @device_printf(i32 %115, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %112, %109
  %119 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %120 = load i32, i32* @TI_PCI_CMDSTAT, align 4
  %121 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %122 = load i32, i32* @TI_PCI_CMDSTAT, align 4
  %123 = call i32 @CSR_READ_4(%struct.ti_softc* %121, i32 %122)
  %124 = load i32, i32* @PCIM_CMD_MWIEN, align 4
  %125 = xor i32 %124, -1
  %126 = and i32 %123, %125
  %127 = call i32 @CSR_WRITE_4(%struct.ti_softc* %119, i32 %120, i32 %126)
  br label %128

128:                                              ; preds = %118, %108
  br label %129

129:                                              ; preds = %128, %89
  %130 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %131 = load i32, i32* @TI_PCI_STATE, align 4
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @TI_SETBIT(%struct.ti_softc* %130, i32 %131, i32 %132)
  %134 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %135 = load i32, i32* @TI_PCI_STATE, align 4
  %136 = load i32, i32* @TI_PCISTATE_MINDMA, align 4
  %137 = call i32 @TI_SETBIT(%struct.ti_softc* %134, i32 %135, i32 %136)
  %138 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %139 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %129
  %143 = load i32, i32* @TI_OPMODE_JUMBO_HDRSPLIT, align 4
  store i32 %143, i32* %6, align 4
  br label %145

144:                                              ; preds = %129
  store i32 0, i32* %6, align 4
  br label %145

145:                                              ; preds = %144, %142
  %146 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %147 = load i32, i32* @TI_GCR_OPMODE, align 4
  %148 = load i32, i32* @TI_OPMODE_BYTESWAP_BD, align 4
  %149 = load i32, i32* @TI_OPMODE_BYTESWAP_DATA, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @TI_OPMODE_WORDSWAP_BD, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @TI_OPMODE_WARN_ENB, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @TI_OPMODE_FATAL_ENB, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* @TI_OPMODE_DONT_FRAG_JUMBO, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* %6, align 4
  %160 = or i32 %158, %159
  %161 = call i32 @CSR_WRITE_4(%struct.ti_softc* %146, i32 %147, i32 %160)
  %162 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %163 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %162, i32 0, i32 3
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @IFCAP_TXCSUM, align 4
  %168 = load i32, i32* @IFCAP_RXCSUM, align 4
  %169 = or i32 %167, %168
  %170 = and i32 %166, %169
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %145
  %173 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %174 = load i32, i32* @TI_GCR_OPMODE, align 4
  %175 = load i32, i32* @TI_OPMODE_1_DMA_ACTIVE, align 4
  %176 = call i32 @TI_SETBIT(%struct.ti_softc* %173, i32 %174, i32 %175)
  br label %177

177:                                              ; preds = %172, %145
  %178 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %179 = load i32, i32* @TI_GCR_DMA_WRITECFG, align 4
  %180 = load i32, i32* @TI_DMA_STATE_THRESH_8W, align 4
  %181 = call i32 @CSR_WRITE_4(%struct.ti_softc* %178, i32 %179, i32 %180)
  %182 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %183 = load i32, i32* @TI_GCR_DMA_READCFG, align 4
  %184 = load i32, i32* @TI_DMA_STATE_THRESH_8W, align 4
  %185 = call i32 @CSR_WRITE_4(%struct.ti_softc* %182, i32 %183, i32 %184)
  %186 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %187 = call i64 @ti_64bitslot_war(%struct.ti_softc* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %177
  %190 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %191 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = call i32 (i32, i8*, ...) @device_printf(i32 %192, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %194 = load i32, i32* @EINVAL, align 4
  store i32 %194, i32* %2, align 4
  br label %196

195:                                              ; preds = %177
  store i32 0, i32* %2, align 4
  br label %196

196:                                              ; preds = %195, %189, %47, %23
  %197 = load i32, i32* %2, align 4
  ret i32 %197
}

declare dso_local i32 @CSR_WRITE_4(%struct.ti_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.ti_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @TI_SETBIT(%struct.ti_softc*, i32, i32) #1

declare dso_local i32 @TI_CLRBIT(%struct.ti_softc*, i32, i32) #1

declare dso_local i64 @ti_64bitslot_war(%struct.ti_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
