; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_schizo.c_schizo_pci_bus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_schizo.c_schizo_pci_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.schizo_softc = type { i32, i32, i32, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@STX_PCI_AFAR = common dso_local global i32 0, align 4
@STX_PCI_AFSR = common dso_local global i32 0, align 4
@STX_PCI_CTRL = common dso_local global i32 0, align 4
@STX_PCI_IOMMU = common dso_local global i32 0, align 4
@SCHIZO_FLAGS_XMODE = common dso_local global i32 0, align 4
@XMS_PCI_X_ERR_STAT = common dso_local global i32 0, align 4
@STX_CS_DEVICE = common dso_local global i32 0, align 4
@STX_CS_FUNC = common dso_local global i32 0, align 4
@PCIR_STATUS = common dso_local global i32 0, align 4
@STX_PCI_CTRL_MMU_ERR = common dso_local global i32 0, align 4
@TOM_PCI_IOMMU_ERR = common dso_local global i32 0, align 4
@PCIM_STATUS_STABORT = common dso_local global i32 0, align 4
@TOM_PCI_IOMMU_ERRMASK = common dso_local global i32 0, align 4
@TOM_PCI_IOMMU_INVALID_ERR = common dso_local global i32 0, align 4
@TOM_PCI_IOMMU_ERR_ILLTSBTBW = common dso_local global i32 0, align 4
@TOM_PCI_IOMMU_ERR_BAD_VA = common dso_local global i32 0, align 4
@PCIM_STATUS_PERR = common dso_local global i32 0, align 4
@PCIM_STATUS_SERR = common dso_local global i32 0, align 4
@PCIM_STATUS_RMABORT = common dso_local global i32 0, align 4
@PCIM_STATUS_RTABORT = common dso_local global i32 0, align 4
@PCIM_STATUS_MDPERR = common dso_local global i32 0, align 4
@SCZ_PCI_CTRL_BUS_UNUS = common dso_local global i32 0, align 4
@TOM_PCI_CTRL_DTO_ERR = common dso_local global i32 0, align 4
@STX_PCI_CTRL_TTO_ERR = common dso_local global i32 0, align 4
@STX_PCI_CTRL_RTRY_ERR = common dso_local global i32 0, align 4
@SCZ_PCI_CTRL_SBH_ERR = common dso_local global i32 0, align 4
@STX_PCI_CTRL_SERR = common dso_local global i32 0, align 4
@STX_PCI_AFSR_P_MA = common dso_local global i32 0, align 4
@STX_PCI_AFSR_P_TA = common dso_local global i32 0, align 4
@STX_PCI_AFSR_P_RTRY = common dso_local global i32 0, align 4
@STX_PCI_AFSR_P_PERR = common dso_local global i32 0, align 4
@STX_PCI_AFSR_P_TTO = common dso_local global i32 0, align 4
@STX_PCI_AFSR_P_UNUS = common dso_local global i32 0, align 4
@XMS_PCI_X_ERR_STAT_P_SC_DSCRD = common dso_local global i32 0, align 4
@XMS_PCI_X_ERR_STAT_P_SC_TTO = common dso_local global i32 0, align 4
@XMS_PCI_X_ERR_STAT_P_SDSTAT = common dso_local global i32 0, align 4
@XMS_PCI_X_ERR_STAT_P_SMMU = common dso_local global i32 0, align 4
@XMS_PCI_X_ERR_STAT_P_CDSTAT = common dso_local global i32 0, align 4
@XMS_PCI_X_ERR_STAT_P_CMMU = common dso_local global i32 0, align 4
@XMS_PCI_X_ERR_STAT_PERR_RCV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [89 x i8] c"PCI bus %c error AFAR %#llx AFSR %#llx PCI CSR %#llx IOMMU %#llx PCI-X %#llx STATUS %#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"%s: fatal PCI bus error\00", align 1
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @schizo_pci_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @schizo_pci_bus(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.schizo_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.schizo_softc*
  store %struct.schizo_softc* %12, %struct.schizo_softc** %3, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.schizo_softc*, %struct.schizo_softc** %3, align 8
  %14 = getelementptr inbounds %struct.schizo_softc, %struct.schizo_softc* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @mtx_lock_spin(i32 %15)
  %17 = load %struct.schizo_softc*, %struct.schizo_softc** %3, align 8
  %18 = load i32, i32* @STX_PCI_AFAR, align 4
  %19 = call i32 @SCHIZO_PCI_READ_8(%struct.schizo_softc* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load %struct.schizo_softc*, %struct.schizo_softc** %3, align 8
  %21 = load i32, i32* @STX_PCI_AFSR, align 4
  %22 = call i32 @SCHIZO_PCI_READ_8(%struct.schizo_softc* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.schizo_softc*, %struct.schizo_softc** %3, align 8
  %24 = load i32, i32* @STX_PCI_CTRL, align 4
  %25 = call i32 @SCHIZO_PCI_READ_8(%struct.schizo_softc* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.schizo_softc*, %struct.schizo_softc** %3, align 8
  %27 = load i32, i32* @STX_PCI_IOMMU, align 4
  %28 = call i32 @SCHIZO_PCI_READ_8(%struct.schizo_softc* %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.schizo_softc*, %struct.schizo_softc** %3, align 8
  %30 = getelementptr inbounds %struct.schizo_softc, %struct.schizo_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SCHIZO_FLAGS_XMODE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %1
  %36 = load %struct.schizo_softc*, %struct.schizo_softc** %3, align 8
  %37 = load i32, i32* @XMS_PCI_X_ERR_STAT, align 4
  %38 = call i32 @SCHIZO_PCI_READ_8(%struct.schizo_softc* %36, i32 %37)
  store i32 %38, i32* %8, align 4
  br label %40

39:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %39, %35
  %41 = load %struct.schizo_softc*, %struct.schizo_softc** %3, align 8
  %42 = getelementptr inbounds %struct.schizo_softc, %struct.schizo_softc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.schizo_softc*, %struct.schizo_softc** %3, align 8
  %45 = getelementptr inbounds %struct.schizo_softc, %struct.schizo_softc* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @STX_CS_DEVICE, align 4
  %49 = load i32, i32* @STX_CS_FUNC, align 4
  %50 = load i32, i32* @PCIR_STATUS, align 4
  %51 = call i32 @PCIB_READ_CONFIG(i32 %43, i32 %47, i32 %48, i32 %49, i32 %50, i32 2)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @STX_PCI_CTRL_MMU_ERR, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %83

56:                                               ; preds = %40
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @TOM_PCI_IOMMU_ERR, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %83

61:                                               ; preds = %56
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @PCIM_STATUS_STABORT, align 4
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %82, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @TOM_PCI_IOMMU_ERRMASK, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* @TOM_PCI_IOMMU_INVALID_ERR, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %66
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @TOM_PCI_IOMMU_ERR_ILLTSBTBW, align 4
  %75 = and i32 %73, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @TOM_PCI_IOMMU_ERR_BAD_VA, align 4
  %80 = and i32 %78, %79
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77, %61
  store i32 1, i32* %10, align 4
  br label %90

83:                                               ; preds = %77, %72, %66, %56, %40
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @PCIM_STATUS_STABORT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i32 1, i32* %10, align 4
  br label %89

89:                                               ; preds = %88, %83
  br label %90

90:                                               ; preds = %89, %82
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @PCIM_STATUS_PERR, align 4
  %93 = load i32, i32* @PCIM_STATUS_SERR, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @PCIM_STATUS_RMABORT, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @PCIM_STATUS_RTABORT, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @PCIM_STATUS_MDPERR, align 4
  %100 = or i32 %98, %99
  %101 = and i32 %91, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %133, label %103

103:                                              ; preds = %90
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @SCZ_PCI_CTRL_BUS_UNUS, align 4
  %106 = load i32, i32* @TOM_PCI_CTRL_DTO_ERR, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @STX_PCI_CTRL_TTO_ERR, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @STX_PCI_CTRL_RTRY_ERR, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @SCZ_PCI_CTRL_SBH_ERR, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @STX_PCI_CTRL_SERR, align 4
  %115 = or i32 %113, %114
  %116 = and i32 %104, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %133, label %118

118:                                              ; preds = %103
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @STX_PCI_AFSR_P_MA, align 4
  %121 = load i32, i32* @STX_PCI_AFSR_P_TA, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @STX_PCI_AFSR_P_RTRY, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @STX_PCI_AFSR_P_PERR, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @STX_PCI_AFSR_P_TTO, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @STX_PCI_AFSR_P_UNUS, align 4
  %130 = or i32 %128, %129
  %131 = and i32 %119, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %118, %103, %90
  store i32 1, i32* %10, align 4
  br label %134

134:                                              ; preds = %133, %118
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @XMS_PCI_X_ERR_STAT_P_SC_DSCRD, align 4
  %137 = load i32, i32* @XMS_PCI_X_ERR_STAT_P_SC_TTO, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @XMS_PCI_X_ERR_STAT_P_SDSTAT, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @XMS_PCI_X_ERR_STAT_P_SMMU, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @XMS_PCI_X_ERR_STAT_P_CDSTAT, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @XMS_PCI_X_ERR_STAT_P_CMMU, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @XMS_PCI_X_ERR_STAT_PERR_RCV, align 4
  %148 = or i32 %146, %147
  %149 = and i32 %135, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %134
  store i32 1, i32* %10, align 4
  br label %152

152:                                              ; preds = %151, %134
  %153 = load i32, i32* %10, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %152
  %156 = load %struct.schizo_softc*, %struct.schizo_softc** %3, align 8
  %157 = getelementptr inbounds %struct.schizo_softc, %struct.schizo_softc* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 8
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 8
  br label %160

160:                                              ; preds = %155, %152
  %161 = load %struct.schizo_softc*, %struct.schizo_softc** %3, align 8
  %162 = getelementptr inbounds %struct.schizo_softc, %struct.schizo_softc* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.schizo_softc*, %struct.schizo_softc** %3, align 8
  %165 = getelementptr inbounds %struct.schizo_softc, %struct.schizo_softc* %164, i32 0, i32 4
  %166 = load i64, i64* %165, align 8
  %167 = add nsw i64 65, %166
  %168 = load i32, i32* %4, align 4
  %169 = sext i32 %168 to i64
  %170 = load i32, i32* %5, align 4
  %171 = sext i32 %170 to i64
  %172 = load i32, i32* %6, align 4
  %173 = sext i32 %172 to i64
  %174 = load i32, i32* %7, align 4
  %175 = sext i32 %174 to i64
  %176 = load i32, i32* %8, align 4
  %177 = sext i32 %176 to i64
  %178 = load i32, i32* %9, align 4
  %179 = call i32 @device_printf(i32 %163, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i64 %167, i64 %169, i64 %171, i64 %173, i64 %175, i64 %177, i32 %178)
  %180 = load %struct.schizo_softc*, %struct.schizo_softc** %3, align 8
  %181 = getelementptr inbounds %struct.schizo_softc, %struct.schizo_softc* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.schizo_softc*, %struct.schizo_softc** %3, align 8
  %184 = getelementptr inbounds %struct.schizo_softc, %struct.schizo_softc* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @STX_CS_DEVICE, align 4
  %188 = load i32, i32* @STX_CS_FUNC, align 4
  %189 = load i32, i32* @PCIR_STATUS, align 4
  %190 = load i32, i32* %9, align 4
  %191 = call i32 @PCIB_WRITE_CONFIG(i32 %182, i32 %186, i32 %187, i32 %188, i32 %189, i32 %190, i32 2)
  %192 = load %struct.schizo_softc*, %struct.schizo_softc** %3, align 8
  %193 = load i32, i32* @STX_PCI_CTRL, align 4
  %194 = load i32, i32* %6, align 4
  %195 = call i32 @SCHIZO_PCI_WRITE_8(%struct.schizo_softc* %192, i32 %193, i32 %194)
  %196 = load %struct.schizo_softc*, %struct.schizo_softc** %3, align 8
  %197 = load i32, i32* @STX_PCI_AFSR, align 4
  %198 = load i32, i32* %5, align 4
  %199 = call i32 @SCHIZO_PCI_WRITE_8(%struct.schizo_softc* %196, i32 %197, i32 %198)
  %200 = load %struct.schizo_softc*, %struct.schizo_softc** %3, align 8
  %201 = load i32, i32* @STX_PCI_IOMMU, align 4
  %202 = load i32, i32* %7, align 4
  %203 = call i32 @SCHIZO_PCI_WRITE_8(%struct.schizo_softc* %200, i32 %201, i32 %202)
  %204 = load %struct.schizo_softc*, %struct.schizo_softc** %3, align 8
  %205 = getelementptr inbounds %struct.schizo_softc, %struct.schizo_softc* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @SCHIZO_FLAGS_XMODE, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %160
  %211 = load %struct.schizo_softc*, %struct.schizo_softc** %3, align 8
  %212 = load i32, i32* @XMS_PCI_X_ERR_STAT, align 4
  %213 = load i32, i32* %8, align 4
  %214 = call i32 @SCHIZO_PCI_WRITE_8(%struct.schizo_softc* %211, i32 %212, i32 %213)
  br label %215

215:                                              ; preds = %210, %160
  %216 = load %struct.schizo_softc*, %struct.schizo_softc** %3, align 8
  %217 = getelementptr inbounds %struct.schizo_softc, %struct.schizo_softc* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @mtx_unlock_spin(i32 %218)
  %220 = load i32, i32* %10, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %215
  %223 = load %struct.schizo_softc*, %struct.schizo_softc** %3, align 8
  %224 = getelementptr inbounds %struct.schizo_softc, %struct.schizo_softc* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @device_get_nameunit(i32 %225)
  %227 = call i32 @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %226)
  br label %228

228:                                              ; preds = %222, %215
  %229 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %229
}

declare dso_local i32 @mtx_lock_spin(i32) #1

declare dso_local i32 @SCHIZO_PCI_READ_8(%struct.schizo_softc*, i32) #1

declare dso_local i32 @PCIB_READ_CONFIG(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64, i64, i64, i64, i64, i64, i32) #1

declare dso_local i32 @PCIB_WRITE_CONFIG(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SCHIZO_PCI_WRITE_8(%struct.schizo_softc*, i32, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
