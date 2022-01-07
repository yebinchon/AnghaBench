; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cs4281.c_cs4281_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cs4281.c_cs4281_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32 }

@CS4281PCI_CLKCR1 = common dso_local global i32 0, align 4
@CS4281PCI_SERMC = common dso_local global i32 0, align 4
@CS4281PCI_ACCTL = common dso_local global i32 0, align 4
@CS4281PCI_SPMC = common dso_local global i32 0, align 4
@CS4281PCI_SPMC_RSTN = common dso_local global i32 0, align 4
@CS4281PCI_CLKCR1_DLLP = common dso_local global i32 0, align 4
@CS4281PCI_CLKCR1_SWCE = common dso_local global i32 0, align 4
@CS4281PCI_SSPM = common dso_local global i32 0, align 4
@CS4281PCI_SSPM_ACLEN = common dso_local global i32 0, align 4
@CS4281PCI_SSPM_PSRCEN = common dso_local global i32 0, align 4
@CS4281PCI_SSPM_CSRCEN = common dso_local global i32 0, align 4
@CS4281PCI_SSPM_MIXEN = common dso_local global i32 0, align 4
@CS4281PCI_CLKCR1_DLLRDY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Clock stabilization failed\0A\00", align 1
@CS4281PCI_ACCTL_ESYN = common dso_local global i32 0, align 4
@CS4281PCI_SERMC_PTC_AC97 = common dso_local global i32 0, align 4
@CS4281PCI_ACSTS = common dso_local global i32 0, align 4
@CS4281PCI_ACSTS_CRDY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"codec did not avail\0A\00", align 1
@CS4281PCI_ACCTL_VFRM = common dso_local global i32 0, align 4
@AC97_REG_POWER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"codec failed to calibrate\0A\00", align 1
@CS4281PCI_ACISV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"cs4281 never got valid data\0A\00", align 1
@CS4281PCI_ACOSV = common dso_local global i32 0, align 4
@AC97_MIX_AUXOUT = common dso_local global i32 0, align 4
@AC97_MIX_MASTER = common dso_local global i32 0, align 4
@CS4281PCI_RPCM_PLAY_SLOT = common dso_local global i32 0, align 4
@CS4281PCI_LPCM_PLAY_SLOT = common dso_local global i32 0, align 4
@CS4281_FIFO_SIZE = common dso_local global i64 0, align 8
@CS4281_DMA_PLAY = common dso_local global i32 0, align 4
@CS4281PCI_FCR_FEN = common dso_local global i32 0, align 4
@CS4281PCI_RPCM_REC_SLOT = common dso_local global i32 0, align 4
@CS4281PCI_LPCM_REC_SLOT = common dso_local global i32 0, align 4
@CS4281_DMA_REC = common dso_local global i32 0, align 4
@CS4281PCI_FCR_PSH = common dso_local global i32 0, align 4
@CS4281PCI_SRCSA = common dso_local global i32 0, align 4
@CS4281PCI_DMR_DMA = common dso_local global i32 0, align 4
@CS4281PCI_DMR_AUTO = common dso_local global i32 0, align 4
@CS4281PCI_DMR_TR_PLAY = common dso_local global i32 0, align 4
@CS4281PCI_DMR_TR_REC = common dso_local global i32 0, align 4
@CS4281PCI_DCR_TCIE = common dso_local global i32 0, align 4
@CS4281PCI_DCR_HTCIE = common dso_local global i32 0, align 4
@CS4281PCI_DCR_MSK = common dso_local global i32 0, align 4
@CS4281PCI_HIMR = common dso_local global i32 0, align 4
@CS4281PCI_HIMR_DMAI = common dso_local global i32 0, align 4
@CS4281PCI_PPLVC = common dso_local global i32 0, align 4
@CS4281PCI_PPRVC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_info*)* @cs4281_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs4281_init(%struct.sc_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %3, align 8
  %6 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %7 = load i32, i32* @CS4281PCI_CLKCR1, align 4
  %8 = call i32 @cs4281_wr(%struct.sc_info* %6, i32 %7, i32 0)
  %9 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %10 = load i32, i32* @CS4281PCI_SERMC, align 4
  %11 = call i32 @cs4281_wr(%struct.sc_info* %9, i32 %10, i32 0)
  %12 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %13 = load i32, i32* @CS4281PCI_ACCTL, align 4
  %14 = call i32 @cs4281_wr(%struct.sc_info* %12, i32 %13, i32 0)
  %15 = call i32 @DELAY(i32 50)
  %16 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %17 = load i32, i32* @CS4281PCI_SPMC, align 4
  %18 = call i32 @cs4281_wr(%struct.sc_info* %16, i32 %17, i32 0)
  %19 = call i32 @DELAY(i32 100)
  %20 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %21 = load i32, i32* @CS4281PCI_SPMC, align 4
  %22 = load i32, i32* @CS4281PCI_SPMC_RSTN, align 4
  %23 = call i32 @cs4281_wr(%struct.sc_info* %20, i32 %21, i32 %22)
  %24 = call i32 @DELAY(i32 50000)
  %25 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %26 = load i32, i32* @CS4281PCI_CLKCR1, align 4
  %27 = load i32, i32* @CS4281PCI_CLKCR1_DLLP, align 4
  %28 = call i32 @cs4281_wr(%struct.sc_info* %25, i32 %26, i32 %27)
  %29 = call i32 @DELAY(i32 50000)
  %30 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %31 = load i32, i32* @CS4281PCI_CLKCR1, align 4
  %32 = load i32, i32* @CS4281PCI_CLKCR1_DLLP, align 4
  %33 = load i32, i32* @CS4281PCI_CLKCR1_SWCE, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @cs4281_wr(%struct.sc_info* %30, i32 %31, i32 %34)
  %36 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %37 = load i32, i32* @CS4281PCI_SSPM, align 4
  %38 = load i32, i32* @CS4281PCI_SSPM_ACLEN, align 4
  %39 = load i32, i32* @CS4281PCI_SSPM_PSRCEN, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @CS4281PCI_SSPM_CSRCEN, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @CS4281PCI_SSPM_MIXEN, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @cs4281_set4(%struct.sc_info* %36, i32 %37, i32 %44)
  %46 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %47 = load i32, i32* @CS4281PCI_CLKCR1, align 4
  %48 = load i32, i32* @CS4281PCI_CLKCR1_DLLRDY, align 4
  %49 = call i64 @cs4281_waitset(%struct.sc_info* %46, i32 %47, i32 %48, i32 250)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %1
  %52 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %53 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @device_printf(i32 %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %302

56:                                               ; preds = %1
  %57 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %58 = load i32, i32* @CS4281PCI_ACCTL, align 4
  %59 = load i32, i32* @CS4281PCI_ACCTL_ESYN, align 4
  %60 = call i32 @cs4281_wr(%struct.sc_info* %57, i32 %58, i32 %59)
  %61 = call i32 @DELAY(i32 50000)
  %62 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %63 = load i32, i32* @CS4281PCI_SERMC, align 4
  %64 = load i32, i32* @CS4281PCI_SERMC_PTC_AC97, align 4
  %65 = call i32 @cs4281_wr(%struct.sc_info* %62, i32 %63, i32 %64)
  %66 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %67 = load i32, i32* @CS4281PCI_ACSTS, align 4
  %68 = load i32, i32* @CS4281PCI_ACSTS_CRDY, align 4
  %69 = call i64 @cs4281_waitset(%struct.sc_info* %66, i32 %67, i32 %68, i32 250)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %56
  %72 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %73 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @device_printf(i32 %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %302

76:                                               ; preds = %56
  %77 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %78 = load i32, i32* @CS4281PCI_ACCTL, align 4
  %79 = load i32, i32* @CS4281PCI_ACCTL_VFRM, align 4
  %80 = load i32, i32* @CS4281PCI_ACCTL_ESYN, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @cs4281_wr(%struct.sc_info* %77, i32 %78, i32 %81)
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %96, %76
  %84 = load i32, i32* %4, align 4
  %85 = icmp slt i32 %84, 1000
  br i1 %85, label %86, label %99

86:                                               ; preds = %83
  %87 = call i32 @DELAY(i32 10000)
  %88 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %89 = load i32, i32* @AC97_REG_POWER, align 4
  %90 = call i32 @cs4281_rdcd(i32 0, %struct.sc_info* %88, i32 %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = and i32 %91, 15
  %93 = icmp eq i32 %92, 15
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  br label %99

95:                                               ; preds = %86
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %4, align 4
  br label %83

99:                                               ; preds = %94, %83
  %100 = load i32, i32* %4, align 4
  %101 = icmp eq i32 %100, 1000
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %104 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @device_printf(i32 %105, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %302

107:                                              ; preds = %99
  %108 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %109 = load i32, i32* @CS4281PCI_SERMC, align 4
  %110 = load i32, i32* @CS4281PCI_SERMC_PTC_AC97, align 4
  %111 = call i32 @cs4281_wr(%struct.sc_info* %108, i32 %109, i32 %110)
  %112 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %113 = load i32, i32* @CS4281PCI_ACISV, align 4
  %114 = call i32 @CS4281PCI_ACISV_ISV(i32 3)
  %115 = call i32 @CS4281PCI_ACISV_ISV(i32 4)
  %116 = or i32 %114, %115
  %117 = call i64 @cs4281_waitset(%struct.sc_info* %112, i32 %113, i32 %116, i32 10000)
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %107
  %120 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %121 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @device_printf(i32 %122, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %302

124:                                              ; preds = %107
  %125 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %126 = load i32, i32* @CS4281PCI_ACOSV, align 4
  %127 = call i32 @CS4281PCI_ACOSV_SLV(i32 3)
  %128 = call i32 @CS4281PCI_ACOSV_SLV(i32 4)
  %129 = or i32 %127, %128
  %130 = call i32 @cs4281_wr(%struct.sc_info* %125, i32 %126, i32 %129)
  %131 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %132 = load i32, i32* @AC97_MIX_AUXOUT, align 4
  %133 = call i32 @cs4281_wrcd(i32 0, %struct.sc_info* %131, i32 %132, i32 0)
  %134 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %135 = load i32, i32* @AC97_MIX_MASTER, align 4
  %136 = call i32 @cs4281_wrcd(i32 0, %struct.sc_info* %134, i32 %135, i32 0)
  %137 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %138 = load i32, i32* @AC97_REG_POWER, align 4
  %139 = call i32 @cs4281_rdcd(i32 0, %struct.sc_info* %137, i32 %138)
  %140 = and i32 %139, 65023
  store i32 %140, i32* %5, align 4
  %141 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %142 = load i32, i32* @AC97_REG_POWER, align 4
  %143 = load i32, i32* %5, align 4
  %144 = call i32 @cs4281_wrcd(i32 0, %struct.sc_info* %141, i32 %142, i32 %143)
  store i32 0, i32* %4, align 4
  br label %145

145:                                              ; preds = %158, %124
  %146 = load i32, i32* %4, align 4
  %147 = icmp slt i32 %146, 320
  br i1 %147, label %148, label %161

148:                                              ; preds = %145
  %149 = call i32 @DELAY(i32 100)
  %150 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %151 = load i32, i32* @AC97_REG_POWER, align 4
  %152 = call i32 @cs4281_rdcd(i32 0, %struct.sc_info* %150, i32 %151)
  store i32 %152, i32* %5, align 4
  %153 = load i32, i32* %5, align 4
  %154 = and i32 %153, 2
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %148
  br label %161

157:                                              ; preds = %148
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %4, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %4, align 4
  br label %145

161:                                              ; preds = %156, %145
  %162 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %163 = load i32, i32* @AC97_REG_POWER, align 4
  %164 = call i32 @cs4281_rdcd(i32 0, %struct.sc_info* %162, i32 %163)
  %165 = and i32 %164, 65279
  store i32 %165, i32* %5, align 4
  %166 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %167 = load i32, i32* @AC97_REG_POWER, align 4
  %168 = load i32, i32* %5, align 4
  %169 = call i32 @cs4281_wrcd(i32 0, %struct.sc_info* %166, i32 %167, i32 %168)
  store i32 0, i32* %4, align 4
  br label %170

170:                                              ; preds = %183, %161
  %171 = load i32, i32* %4, align 4
  %172 = icmp slt i32 %171, 320
  br i1 %172, label %173, label %186

173:                                              ; preds = %170
  %174 = call i32 @DELAY(i32 100)
  %175 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %176 = load i32, i32* @AC97_REG_POWER, align 4
  %177 = call i32 @cs4281_rdcd(i32 0, %struct.sc_info* %175, i32 %176)
  store i32 %177, i32* %5, align 4
  %178 = load i32, i32* %5, align 4
  %179 = and i32 %178, 1
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %173
  br label %186

182:                                              ; preds = %173
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %4, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %4, align 4
  br label %170

186:                                              ; preds = %181, %170
  %187 = load i32, i32* @CS4281PCI_RPCM_PLAY_SLOT, align 4
  %188 = call i32 @CS4281PCI_FCR_RS(i32 %187)
  %189 = load i32, i32* @CS4281PCI_LPCM_PLAY_SLOT, align 4
  %190 = call i32 @CS4281PCI_FCR_LS(i32 %189)
  %191 = or i32 %188, %190
  %192 = load i64, i64* @CS4281_FIFO_SIZE, align 8
  %193 = call i32 @CS4281PCI_FCR_SZ(i64 %192)
  %194 = or i32 %191, %193
  %195 = call i32 @CS4281PCI_FCR_OF(i64 0)
  %196 = or i32 %194, %195
  store i32 %196, i32* %5, align 4
  %197 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %198 = load i32, i32* @CS4281_DMA_PLAY, align 4
  %199 = call i32 @CS4281PCI_FCR(i32 %198)
  %200 = load i32, i32* %5, align 4
  %201 = call i32 @cs4281_wr(%struct.sc_info* %197, i32 %199, i32 %200)
  %202 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %203 = load i32, i32* @CS4281_DMA_PLAY, align 4
  %204 = call i32 @CS4281PCI_FCR(i32 %203)
  %205 = load i32, i32* %5, align 4
  %206 = load i32, i32* @CS4281PCI_FCR_FEN, align 4
  %207 = or i32 %205, %206
  %208 = call i32 @cs4281_wr(%struct.sc_info* %202, i32 %204, i32 %207)
  %209 = load i32, i32* @CS4281PCI_RPCM_REC_SLOT, align 4
  %210 = call i32 @CS4281PCI_FCR_RS(i32 %209)
  %211 = load i32, i32* @CS4281PCI_LPCM_REC_SLOT, align 4
  %212 = call i32 @CS4281PCI_FCR_LS(i32 %211)
  %213 = or i32 %210, %212
  %214 = load i64, i64* @CS4281_FIFO_SIZE, align 8
  %215 = call i32 @CS4281PCI_FCR_SZ(i64 %214)
  %216 = or i32 %213, %215
  %217 = load i64, i64* @CS4281_FIFO_SIZE, align 8
  %218 = add nsw i64 %217, 1
  %219 = call i32 @CS4281PCI_FCR_OF(i64 %218)
  %220 = or i32 %216, %219
  store i32 %220, i32* %5, align 4
  %221 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %222 = load i32, i32* @CS4281_DMA_REC, align 4
  %223 = call i32 @CS4281PCI_FCR(i32 %222)
  %224 = load i32, i32* %5, align 4
  %225 = load i32, i32* @CS4281PCI_FCR_PSH, align 4
  %226 = or i32 %224, %225
  %227 = call i32 @cs4281_wr(%struct.sc_info* %221, i32 %223, i32 %226)
  %228 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %229 = load i32, i32* @CS4281_DMA_REC, align 4
  %230 = call i32 @CS4281PCI_FCR(i32 %229)
  %231 = load i32, i32* %5, align 4
  %232 = load i32, i32* @CS4281PCI_FCR_FEN, align 4
  %233 = or i32 %231, %232
  %234 = call i32 @cs4281_wr(%struct.sc_info* %228, i32 %230, i32 %233)
  %235 = load i32, i32* @CS4281PCI_LPCM_PLAY_SLOT, align 4
  %236 = call i32 @CS4281PCI_SRCSA_PLSS(i32 %235)
  %237 = load i32, i32* @CS4281PCI_RPCM_PLAY_SLOT, align 4
  %238 = call i32 @CS4281PCI_SRCSA_PRSS(i32 %237)
  %239 = or i32 %236, %238
  %240 = load i32, i32* @CS4281PCI_LPCM_REC_SLOT, align 4
  %241 = call i32 @CS4281PCI_SRCSA_CLSS(i32 %240)
  %242 = or i32 %239, %241
  %243 = load i32, i32* @CS4281PCI_RPCM_REC_SLOT, align 4
  %244 = call i32 @CS4281PCI_SRCSA_CRSS(i32 %243)
  %245 = or i32 %242, %244
  store i32 %245, i32* %5, align 4
  %246 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %247 = load i32, i32* @CS4281PCI_SRCSA, align 4
  %248 = load i32, i32* %5, align 4
  %249 = call i32 @cs4281_wr(%struct.sc_info* %246, i32 %247, i32 %248)
  %250 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %251 = load i32, i32* @CS4281_DMA_PLAY, align 4
  %252 = call i32 @CS4281PCI_DMR(i32 %251)
  %253 = load i32, i32* @CS4281PCI_DMR_DMA, align 4
  %254 = load i32, i32* @CS4281PCI_DMR_AUTO, align 4
  %255 = or i32 %253, %254
  %256 = load i32, i32* @CS4281PCI_DMR_TR_PLAY, align 4
  %257 = or i32 %255, %256
  %258 = call i32 @cs4281_wr(%struct.sc_info* %250, i32 %252, i32 %257)
  %259 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %260 = load i32, i32* @CS4281_DMA_REC, align 4
  %261 = call i32 @CS4281PCI_DMR(i32 %260)
  %262 = load i32, i32* @CS4281PCI_DMR_DMA, align 4
  %263 = load i32, i32* @CS4281PCI_DMR_AUTO, align 4
  %264 = or i32 %262, %263
  %265 = load i32, i32* @CS4281PCI_DMR_TR_REC, align 4
  %266 = or i32 %264, %265
  %267 = call i32 @cs4281_wr(%struct.sc_info* %259, i32 %261, i32 %266)
  %268 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %269 = load i32, i32* @CS4281_DMA_PLAY, align 4
  %270 = call i32 @CS4281PCI_DCR(i32 %269)
  %271 = load i32, i32* @CS4281PCI_DCR_TCIE, align 4
  %272 = load i32, i32* @CS4281PCI_DCR_HTCIE, align 4
  %273 = or i32 %271, %272
  %274 = load i32, i32* @CS4281PCI_DCR_MSK, align 4
  %275 = or i32 %273, %274
  %276 = call i32 @cs4281_wr(%struct.sc_info* %268, i32 %270, i32 %275)
  %277 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %278 = load i32, i32* @CS4281_DMA_REC, align 4
  %279 = call i32 @CS4281PCI_DCR(i32 %278)
  %280 = load i32, i32* @CS4281PCI_DCR_TCIE, align 4
  %281 = load i32, i32* @CS4281PCI_DCR_HTCIE, align 4
  %282 = or i32 %280, %281
  %283 = load i32, i32* @CS4281PCI_DCR_MSK, align 4
  %284 = or i32 %282, %283
  %285 = call i32 @cs4281_wr(%struct.sc_info* %277, i32 %279, i32 %284)
  %286 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %287 = load i32, i32* @CS4281PCI_HIMR, align 4
  %288 = load i32, i32* @CS4281PCI_HIMR_DMAI, align 4
  %289 = load i32, i32* @CS4281_DMA_PLAY, align 4
  %290 = call i32 @CS4281PCI_HIMR_DMA(i32 %289)
  %291 = or i32 %288, %290
  %292 = load i32, i32* @CS4281_DMA_REC, align 4
  %293 = call i32 @CS4281PCI_HIMR_DMA(i32 %292)
  %294 = or i32 %291, %293
  %295 = call i32 @cs4281_clr4(%struct.sc_info* %286, i32 %287, i32 %294)
  %296 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %297 = load i32, i32* @CS4281PCI_PPLVC, align 4
  %298 = call i32 @cs4281_wr(%struct.sc_info* %296, i32 %297, i32 7)
  %299 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %300 = load i32, i32* @CS4281PCI_PPRVC, align 4
  %301 = call i32 @cs4281_wr(%struct.sc_info* %299, i32 %300, i32 7)
  store i32 0, i32* %2, align 4
  br label %302

302:                                              ; preds = %186, %119, %102, %71, %51
  %303 = load i32, i32* %2, align 4
  ret i32 %303
}

declare dso_local i32 @cs4281_wr(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @cs4281_set4(%struct.sc_info*, i32, i32) #1

declare dso_local i64 @cs4281_waitset(%struct.sc_info*, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @cs4281_rdcd(i32, %struct.sc_info*, i32) #1

declare dso_local i32 @CS4281PCI_ACISV_ISV(i32) #1

declare dso_local i32 @CS4281PCI_ACOSV_SLV(i32) #1

declare dso_local i32 @cs4281_wrcd(i32, %struct.sc_info*, i32, i32) #1

declare dso_local i32 @CS4281PCI_FCR_RS(i32) #1

declare dso_local i32 @CS4281PCI_FCR_LS(i32) #1

declare dso_local i32 @CS4281PCI_FCR_SZ(i64) #1

declare dso_local i32 @CS4281PCI_FCR_OF(i64) #1

declare dso_local i32 @CS4281PCI_FCR(i32) #1

declare dso_local i32 @CS4281PCI_SRCSA_PLSS(i32) #1

declare dso_local i32 @CS4281PCI_SRCSA_PRSS(i32) #1

declare dso_local i32 @CS4281PCI_SRCSA_CLSS(i32) #1

declare dso_local i32 @CS4281PCI_SRCSA_CRSS(i32) #1

declare dso_local i32 @CS4281PCI_DMR(i32) #1

declare dso_local i32 @CS4281PCI_DCR(i32) #1

declare dso_local i32 @cs4281_clr4(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @CS4281PCI_HIMR_DMA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
