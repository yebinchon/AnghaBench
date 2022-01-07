; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_chipinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_chipinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i32, i64, i64, i32, i64, i32, i32 }

@BGE_INIT = common dso_local global i32 0, align 4
@BGE_FLAG_TAGGED_STATUS = common dso_local global i32 0, align 4
@BGE_PCIMISCCTL_TAGGED_STATUS = common dso_local global i32 0, align 4
@BGE_PCI_MISC_CTL = common dso_local global i64 0, align 8
@BGE_STATS_BLOCK = common dso_local global i32 0, align 4
@BGE_STATS_BLOCK_END = common dso_local global i32 0, align 4
@BGE_STATUS_BLOCK = common dso_local global i32 0, align 4
@BGE_STATUS_BLOCK_END = common dso_local global i32 0, align 4
@BGE_CHIPREV_5704_BX = common dso_local global i64 0, align 8
@BGE_PCI_MSI_DATA = common dso_local global i64 0, align 8
@BGE_ASICREV_BCM57765 = common dso_local global i64 0, align 8
@BGE_ASICREV_BCM57766 = common dso_local global i64 0, align 8
@BGE_CHIPREV_57765_AX = common dso_local global i64 0, align 8
@BGE_CPMU_PADRNG_CTL = common dso_local global i32 0, align 4
@BGE_CPMU_PADRNG_CTL_RDIV2 = common dso_local global i32 0, align 4
@BGE_FLAG_PCIE = common dso_local global i32 0, align 4
@BGE_FLAG_PCIX = common dso_local global i32 0, align 4
@BGE_ASICREV_BCM5780 = common dso_local global i64 0, align 8
@BGE_PCIDMARWCTL_ONEDMA_ATONCE_GLOBAL = common dso_local global i32 0, align 4
@BGE_PCIDMARWCTL_ONEDMA_ATONCE_LOCAL = common dso_local global i32 0, align 4
@BGE_ASICREV_BCM5703 = common dso_local global i64 0, align 8
@BGE_ASICREV_BCM5704 = common dso_local global i64 0, align 8
@BGE_PCI_CLKCTL = common dso_local global i32 0, align 4
@BGE_PCIDMARWCTL_ASRT_ALL_BE = common dso_local global i32 0, align 4
@BGE_ASICREV_BCM5705 = common dso_local global i64 0, align 8
@BGE_ASICREV_BCM5750 = common dso_local global i64 0, align 8
@BGE_ASICREV_BCM5700 = common dso_local global i64 0, align 8
@BGE_ASICREV_BCM5701 = common dso_local global i64 0, align 8
@BGE_PCIDMARWCTL_USE_MRM = common dso_local global i32 0, align 4
@BGE_PCIDMARWCTL_MINDMA = common dso_local global i32 0, align 4
@BGE_PCIDMARWCTL_DIS_CACHE_ALIGNMENT = common dso_local global i32 0, align 4
@BGE_CHIPID_BCM57765_A0 = common dso_local global i64 0, align 8
@BGE_PCIDMARWCTL_CRDRDR_RDMA_MRRS_MSK = common dso_local global i32 0, align 4
@BGE_ASICREV_BCM5717 = common dso_local global i64 0, align 8
@BGE_ASICREV_BCM5762 = common dso_local global i64 0, align 8
@BGE_PCIDMARWCTL_TAGGED_STATUS_WA = common dso_local global i32 0, align 4
@BGE_PCI_DMA_RW_CTL = common dso_local global i64 0, align 8
@BGE_ASICREV_BCM5720 = common dso_local global i64 0, align 8
@BGE_MODE_CTL = common dso_local global i32 0, align 4
@BGE_MODECTL_BYTESWAP_B2HRX_DATA = common dso_local global i32 0, align 4
@BGE_MODECTL_WORDSWAP_B2HRX_DATA = common dso_local global i32 0, align 4
@BGE_MODECTL_B2HRX_ENABLE = common dso_local global i32 0, align 4
@BGE_MODECTL_HTX2B_ENABLE = common dso_local global i32 0, align 4
@BGE_MODECTL_MAC_ATTN_INTR = common dso_local global i32 0, align 4
@BGE_MODECTL_HOST_SEND_BDS = common dso_local global i32 0, align 4
@BGE_MODECTL_TX_NO_PHDR_CSUM = common dso_local global i32 0, align 4
@BGE_CHIPID_BCM5701_B5 = common dso_local global i64 0, align 8
@BGE_MODECTL_FORCE_PCI32 = common dso_local global i32 0, align 4
@ASF_STACKUP = common dso_local global i32 0, align 4
@BGE_MODECTL_STACKUP = common dso_local global i32 0, align 4
@BGE_PCI_CMD = common dso_local global i32 0, align 4
@PCIM_CMD_MWIEN = common dso_local global i32 0, align 4
@BGE_MISC_CFG = common dso_local global i32 0, align 4
@BGE_32BITTIME_66MHZ = common dso_local global i32 0, align 4
@BGE_ASICREV_BCM5906 = common dso_local global i64 0, align 8
@BGE_MISCCFG_EPHY_IDDQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bge_softc*)* @bge_chipinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bge_chipinit(%struct.bge_softc* %0) #0 {
  %2 = alloca %struct.bge_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bge_softc* %0, %struct.bge_softc** %2, align 8
  %9 = load i32, i32* @BGE_INIT, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %11 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @BGE_FLAG_TAGGED_STATUS, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @BGE_PCIMISCCTL_TAGGED_STATUS, align 4
  %18 = load i32, i32* %4, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %16, %1
  %21 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %22 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* @BGE_PCI_MISC_CTL, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @pci_write_config(i32 %23, i64 %24, i32 %25, i32 4)
  %27 = load i32, i32* @BGE_STATS_BLOCK, align 4
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %37, %20
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @BGE_STATS_BLOCK_END, align 4
  %31 = add nsw i32 %30, 1
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @BGE_MEMWIN_WRITE(%struct.bge_softc* %34, i32 %35, i32 0)
  br label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = add i64 %39, 4
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %7, align 4
  br label %28

42:                                               ; preds = %28
  %43 = load i32, i32* @BGE_STATUS_BLOCK, align 4
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %53, %42
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @BGE_STATUS_BLOCK_END, align 4
  %47 = add nsw i32 %46, 1
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @BGE_MEMWIN_WRITE(%struct.bge_softc* %50, i32 %51, i32 0)
  br label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = add i64 %55, 4
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %7, align 4
  br label %44

58:                                               ; preds = %44
  %59 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %60 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @BGE_CHIPREV_5704_BX, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %80

64:                                               ; preds = %58
  %65 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %66 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* @BGE_PCI_MSI_DATA, align 8
  %69 = add nsw i64 %68, 2
  %70 = call i32 @pci_read_config(i32 %67, i64 %69, i32 2)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %71, 13312
  store i32 %72, i32* %6, align 4
  %73 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %74 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  %76 = load i64, i64* @BGE_PCI_MSI_DATA, align 8
  %77 = add nsw i64 %76, 2
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @pci_write_config(i32 %75, i64 %77, i32 %78, i32 2)
  br label %80

80:                                               ; preds = %64, %58
  %81 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %82 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @BGE_ASICREV_BCM57765, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %92, label %86

86:                                               ; preds = %80
  %87 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %88 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @BGE_ASICREV_BCM57766, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %86, %80
  %93 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %94 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @BGE_CHIPREV_57765_AX, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %92
  %99 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %100 = load i32, i32* @BGE_CPMU_PADRNG_CTL, align 4
  %101 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %102 = load i32, i32* @BGE_CPMU_PADRNG_CTL, align 4
  %103 = call i32 @CSR_READ_4(%struct.bge_softc* %101, i32 %102)
  %104 = load i32, i32* @BGE_CPMU_PADRNG_CTL_RDIV2, align 4
  %105 = or i32 %103, %104
  %106 = call i32 @CSR_WRITE_4(%struct.bge_softc* %99, i32 %100, i32 %105)
  br label %107

107:                                              ; preds = %98, %92
  br label %108

108:                                              ; preds = %107, %86
  %109 = call i32 @BGE_PCIDMARWCTL_RD_CMD_SHIFT(i32 6)
  %110 = call i32 @BGE_PCIDMARWCTL_WR_CMD_SHIFT(i32 7)
  %111 = or i32 %109, %110
  store i32 %111, i32* %3, align 4
  %112 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %113 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @BGE_FLAG_PCIE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %132

118:                                              ; preds = %108
  %119 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %120 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = icmp sge i32 %121, 256
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = call i32 @BGE_PCIDMARWCTL_WR_WAT_SHIFT(i32 7)
  %125 = load i32, i32* %3, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %3, align 4
  br label %131

127:                                              ; preds = %118
  %128 = call i32 @BGE_PCIDMARWCTL_WR_WAT_SHIFT(i32 3)
  %129 = load i32, i32* %3, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %127, %123
  br label %248

132:                                              ; preds = %108
  %133 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %134 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @BGE_FLAG_PCIX, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %226

139:                                              ; preds = %132
  %140 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %141 = call i64 @BGE_IS_5714_FAMILY(%struct.bge_softc* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %162

143:                                              ; preds = %139
  %144 = call i32 @BGE_PCIDMARWCTL_RD_WAT_SHIFT(i32 2)
  %145 = call i32 @BGE_PCIDMARWCTL_WR_WAT_SHIFT(i32 2)
  %146 = or i32 %144, %145
  %147 = load i32, i32* %3, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %3, align 4
  %149 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %150 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @BGE_ASICREV_BCM5780, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %143
  %155 = load i32, i32* @BGE_PCIDMARWCTL_ONEDMA_ATONCE_GLOBAL, align 4
  br label %158

156:                                              ; preds = %143
  %157 = load i32, i32* @BGE_PCIDMARWCTL_ONEDMA_ATONCE_LOCAL, align 4
  br label %158

158:                                              ; preds = %156, %154
  %159 = phi i32 [ %155, %154 ], [ %157, %156 ]
  %160 = load i32, i32* %3, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %3, align 4
  br label %195

162:                                              ; preds = %139
  %163 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %164 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @BGE_ASICREV_BCM5703, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %174

168:                                              ; preds = %162
  %169 = call i32 @BGE_PCIDMARWCTL_RD_WAT_SHIFT(i32 4)
  %170 = call i32 @BGE_PCIDMARWCTL_WR_WAT_SHIFT(i32 3)
  %171 = or i32 %169, %170
  %172 = load i32, i32* %3, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %3, align 4
  br label %194

174:                                              ; preds = %162
  %175 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %176 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @BGE_ASICREV_BCM5704, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %186

180:                                              ; preds = %174
  %181 = call i32 @BGE_PCIDMARWCTL_RD_WAT_SHIFT(i32 7)
  %182 = call i32 @BGE_PCIDMARWCTL_WR_WAT_SHIFT(i32 3)
  %183 = or i32 %181, %182
  %184 = load i32, i32* %3, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %3, align 4
  br label %193

186:                                              ; preds = %174
  %187 = call i32 @BGE_PCIDMARWCTL_RD_WAT_SHIFT(i32 3)
  %188 = call i32 @BGE_PCIDMARWCTL_WR_WAT_SHIFT(i32 3)
  %189 = or i32 %187, %188
  %190 = or i32 %189, 15
  %191 = load i32, i32* %3, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %3, align 4
  br label %193

193:                                              ; preds = %186, %180
  br label %194

194:                                              ; preds = %193, %168
  br label %195

195:                                              ; preds = %194, %158
  %196 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %197 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @BGE_ASICREV_BCM5703, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %207, label %201

201:                                              ; preds = %195
  %202 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %203 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @BGE_ASICREV_BCM5704, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %225

207:                                              ; preds = %201, %195
  %208 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %209 = load i32, i32* @BGE_PCI_CLKCTL, align 4
  %210 = call i32 @CSR_READ_4(%struct.bge_softc* %208, i32 %209)
  %211 = and i32 %210, 31
  store i32 %211, i32* %8, align 4
  %212 = load i32, i32* %8, align 4
  %213 = icmp eq i32 %212, 6
  br i1 %213, label %217, label %214

214:                                              ; preds = %207
  %215 = load i32, i32* %8, align 4
  %216 = icmp eq i32 %215, 7
  br i1 %216, label %217, label %221

217:                                              ; preds = %214, %207
  %218 = load i32, i32* @BGE_PCIDMARWCTL_ONEDMA_ATONCE_GLOBAL, align 4
  %219 = load i32, i32* %3, align 4
  %220 = or i32 %219, %218
  store i32 %220, i32* %3, align 4
  br label %221

221:                                              ; preds = %217, %214
  %222 = load i32, i32* @BGE_PCIDMARWCTL_ASRT_ALL_BE, align 4
  %223 = load i32, i32* %3, align 4
  %224 = or i32 %223, %222
  store i32 %224, i32* %3, align 4
  br label %225

225:                                              ; preds = %221, %201
  br label %247

226:                                              ; preds = %132
  %227 = call i32 @BGE_PCIDMARWCTL_RD_WAT_SHIFT(i32 7)
  %228 = call i32 @BGE_PCIDMARWCTL_WR_WAT_SHIFT(i32 7)
  %229 = or i32 %227, %228
  %230 = load i32, i32* %3, align 4
  %231 = or i32 %230, %229
  store i32 %231, i32* %3, align 4
  %232 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %233 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %232, i32 0, i32 2
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @BGE_ASICREV_BCM5705, align 8
  %236 = icmp ne i64 %234, %235
  br i1 %236, label %237, label %246

237:                                              ; preds = %226
  %238 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %239 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @BGE_ASICREV_BCM5750, align 8
  %242 = icmp ne i64 %240, %241
  br i1 %242, label %243, label %246

243:                                              ; preds = %237
  %244 = load i32, i32* %3, align 4
  %245 = or i32 %244, 15
  store i32 %245, i32* %3, align 4
  br label %246

246:                                              ; preds = %243, %237, %226
  br label %247

247:                                              ; preds = %246, %225
  br label %248

248:                                              ; preds = %247, %131
  %249 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %250 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %249, i32 0, i32 2
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @BGE_ASICREV_BCM5700, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %260, label %254

254:                                              ; preds = %248
  %255 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %256 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %255, i32 0, i32 2
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @BGE_ASICREV_BCM5701, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %260, label %266

260:                                              ; preds = %254, %248
  %261 = load i32, i32* @BGE_PCIDMARWCTL_USE_MRM, align 4
  %262 = load i32, i32* @BGE_PCIDMARWCTL_ASRT_ALL_BE, align 4
  %263 = or i32 %261, %262
  %264 = load i32, i32* %3, align 4
  %265 = or i32 %264, %263
  store i32 %265, i32* %3, align 4
  br label %266

266:                                              ; preds = %260, %254
  %267 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %268 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %267, i32 0, i32 2
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @BGE_ASICREV_BCM5703, align 8
  %271 = icmp eq i64 %269, %270
  br i1 %271, label %278, label %272

272:                                              ; preds = %266
  %273 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %274 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %273, i32 0, i32 2
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* @BGE_ASICREV_BCM5704, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %278, label %283

278:                                              ; preds = %272, %266
  %279 = load i32, i32* @BGE_PCIDMARWCTL_MINDMA, align 4
  %280 = xor i32 %279, -1
  %281 = load i32, i32* %3, align 4
  %282 = and i32 %281, %280
  store i32 %282, i32* %3, align 4
  br label %283

283:                                              ; preds = %278, %272
  %284 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %285 = call i64 @BGE_IS_5717_PLUS(%struct.bge_softc* %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %323

287:                                              ; preds = %283
  %288 = load i32, i32* @BGE_PCIDMARWCTL_DIS_CACHE_ALIGNMENT, align 4
  %289 = xor i32 %288, -1
  %290 = load i32, i32* %3, align 4
  %291 = and i32 %290, %289
  store i32 %291, i32* %3, align 4
  %292 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %293 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %292, i32 0, i32 4
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* @BGE_CHIPID_BCM57765_A0, align 8
  %296 = icmp eq i64 %294, %295
  br i1 %296, label %297, label %302

297:                                              ; preds = %287
  %298 = load i32, i32* @BGE_PCIDMARWCTL_CRDRDR_RDMA_MRRS_MSK, align 4
  %299 = xor i32 %298, -1
  %300 = load i32, i32* %3, align 4
  %301 = and i32 %300, %299
  store i32 %301, i32* %3, align 4
  br label %302

302:                                              ; preds = %297, %287
  %303 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %304 = call i32 @BGE_IS_57765_PLUS(%struct.bge_softc* %303)
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %322, label %306

306:                                              ; preds = %302
  %307 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %308 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %307, i32 0, i32 2
  %309 = load i64, i64* %308, align 8
  %310 = load i64, i64* @BGE_ASICREV_BCM5717, align 8
  %311 = icmp ne i64 %309, %310
  br i1 %311, label %312, label %322

312:                                              ; preds = %306
  %313 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %314 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %313, i32 0, i32 2
  %315 = load i64, i64* %314, align 8
  %316 = load i64, i64* @BGE_ASICREV_BCM5762, align 8
  %317 = icmp ne i64 %315, %316
  br i1 %317, label %318, label %322

318:                                              ; preds = %312
  %319 = load i32, i32* @BGE_PCIDMARWCTL_TAGGED_STATUS_WA, align 4
  %320 = load i32, i32* %3, align 4
  %321 = or i32 %320, %319
  store i32 %321, i32* %3, align 4
  br label %322

322:                                              ; preds = %318, %312, %306, %302
  br label %323

323:                                              ; preds = %322, %283
  %324 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %325 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %324, i32 0, i32 6
  %326 = load i32, i32* %325, align 4
  %327 = load i64, i64* @BGE_PCI_DMA_RW_CTL, align 8
  %328 = load i32, i32* %3, align 4
  %329 = call i32 @pci_write_config(i32 %326, i64 %327, i32 %328, i32 4)
  %330 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %331 = call i32 @bge_dma_swap_options(%struct.bge_softc* %330)
  store i32 %331, i32* %5, align 4
  %332 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %333 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %332, i32 0, i32 2
  %334 = load i64, i64* %333, align 8
  %335 = load i64, i64* @BGE_ASICREV_BCM5720, align 8
  %336 = icmp eq i64 %334, %335
  br i1 %336, label %343, label %337

337:                                              ; preds = %323
  %338 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %339 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %338, i32 0, i32 2
  %340 = load i64, i64* %339, align 8
  %341 = load i64, i64* @BGE_ASICREV_BCM5762, align 8
  %342 = icmp eq i64 %340, %341
  br i1 %342, label %343, label %357

343:                                              ; preds = %337, %323
  %344 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %345 = load i32, i32* @BGE_MODE_CTL, align 4
  %346 = call i32 @CSR_READ_4(%struct.bge_softc* %344, i32 %345)
  %347 = load i32, i32* @BGE_MODECTL_BYTESWAP_B2HRX_DATA, align 4
  %348 = load i32, i32* @BGE_MODECTL_WORDSWAP_B2HRX_DATA, align 4
  %349 = or i32 %347, %348
  %350 = load i32, i32* @BGE_MODECTL_B2HRX_ENABLE, align 4
  %351 = or i32 %349, %350
  %352 = load i32, i32* @BGE_MODECTL_HTX2B_ENABLE, align 4
  %353 = or i32 %351, %352
  %354 = and i32 %346, %353
  %355 = load i32, i32* %5, align 4
  %356 = or i32 %355, %354
  store i32 %356, i32* %5, align 4
  br label %357

357:                                              ; preds = %343, %337
  %358 = load i32, i32* @BGE_MODECTL_MAC_ATTN_INTR, align 4
  %359 = load i32, i32* @BGE_MODECTL_HOST_SEND_BDS, align 4
  %360 = or i32 %358, %359
  %361 = load i32, i32* @BGE_MODECTL_TX_NO_PHDR_CSUM, align 4
  %362 = or i32 %360, %361
  %363 = load i32, i32* %5, align 4
  %364 = or i32 %363, %362
  store i32 %364, i32* %5, align 4
  %365 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %366 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %365, i32 0, i32 2
  %367 = load i64, i64* %366, align 8
  %368 = load i64, i64* @BGE_ASICREV_BCM5701, align 8
  %369 = icmp eq i64 %367, %368
  br i1 %369, label %370, label %380

370:                                              ; preds = %357
  %371 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %372 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %371, i32 0, i32 4
  %373 = load i64, i64* %372, align 8
  %374 = load i64, i64* @BGE_CHIPID_BCM5701_B5, align 8
  %375 = icmp eq i64 %373, %374
  br i1 %375, label %376, label %380

376:                                              ; preds = %370
  %377 = load i32, i32* @BGE_MODECTL_FORCE_PCI32, align 4
  %378 = load i32, i32* %5, align 4
  %379 = or i32 %378, %377
  store i32 %379, i32* %5, align 4
  br label %380

380:                                              ; preds = %376, %370, %357
  %381 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %382 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %381, i32 0, i32 5
  %383 = load i32, i32* %382, align 8
  %384 = load i32, i32* @ASF_STACKUP, align 4
  %385 = and i32 %383, %384
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %391

387:                                              ; preds = %380
  %388 = load i32, i32* @BGE_MODECTL_STACKUP, align 4
  %389 = load i32, i32* %5, align 4
  %390 = or i32 %389, %388
  store i32 %390, i32* %5, align 4
  br label %391

391:                                              ; preds = %387, %380
  %392 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %393 = load i32, i32* @BGE_MODE_CTL, align 4
  %394 = load i32, i32* %5, align 4
  %395 = call i32 @CSR_WRITE_4(%struct.bge_softc* %392, i32 %393, i32 %394)
  %396 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %397 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %396, i32 0, i32 6
  %398 = load i32, i32* %397, align 4
  %399 = load i32, i32* @BGE_PCI_CMD, align 4
  %400 = load i32, i32* @PCIM_CMD_MWIEN, align 4
  %401 = call i32 @PCI_CLRBIT(i32 %398, i32 %399, i32 %400, i32 4)
  %402 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %403 = load i32, i32* @BGE_MISC_CFG, align 4
  %404 = load i32, i32* @BGE_32BITTIME_66MHZ, align 4
  %405 = call i32 @CSR_WRITE_4(%struct.bge_softc* %402, i32 %403, i32 %404)
  %406 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %407 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %406, i32 0, i32 2
  %408 = load i64, i64* %407, align 8
  %409 = load i64, i64* @BGE_ASICREV_BCM5906, align 8
  %410 = icmp eq i64 %408, %409
  br i1 %410, label %411, label %421

411:                                              ; preds = %391
  %412 = call i32 @DELAY(i32 40)
  %413 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %414 = load i32, i32* @BGE_MISC_CFG, align 4
  %415 = load i32, i32* @BGE_MISCCFG_EPHY_IDDQ, align 4
  %416 = call i32 @BGE_CLRBIT(%struct.bge_softc* %413, i32 %414, i32 %415)
  %417 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %418 = load i32, i32* @BGE_MISC_CFG, align 4
  %419 = call i32 @CSR_READ_4(%struct.bge_softc* %417, i32 %418)
  %420 = call i32 @DELAY(i32 40)
  br label %421

421:                                              ; preds = %411, %391
  ret i32 0
}

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

declare dso_local i32 @BGE_MEMWIN_WRITE(%struct.bge_softc*, i32, i32) #1

declare dso_local i32 @pci_read_config(i32, i64, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.bge_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.bge_softc*, i32) #1

declare dso_local i32 @BGE_PCIDMARWCTL_RD_CMD_SHIFT(i32) #1

declare dso_local i32 @BGE_PCIDMARWCTL_WR_CMD_SHIFT(i32) #1

declare dso_local i32 @BGE_PCIDMARWCTL_WR_WAT_SHIFT(i32) #1

declare dso_local i64 @BGE_IS_5714_FAMILY(%struct.bge_softc*) #1

declare dso_local i32 @BGE_PCIDMARWCTL_RD_WAT_SHIFT(i32) #1

declare dso_local i64 @BGE_IS_5717_PLUS(%struct.bge_softc*) #1

declare dso_local i32 @BGE_IS_57765_PLUS(%struct.bge_softc*) #1

declare dso_local i32 @bge_dma_swap_options(%struct.bge_softc*) #1

declare dso_local i32 @PCI_CLRBIT(i32, i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @BGE_CLRBIT(%struct.bge_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
