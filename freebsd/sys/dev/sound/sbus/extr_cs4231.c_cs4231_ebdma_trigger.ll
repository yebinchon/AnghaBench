; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/sbus/extr_cs4231.c_cs4231_ebdma_trigger.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/sbus/extr_cs4231.c_cs4231_ebdma_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs4231_softc = type { i32, i32 }
%struct.cs4231_channel = type { i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"%s channel already triggered\0A\00", align 1
@PCMDIR_PLAY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"playback\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"capture\00", align 1
@EBDCSR_BURST_16 = common dso_local global i32 0, align 4
@EBDCSR_BURST_8 = common dso_local global i32 0, align 4
@EBDCSR_BURST_4 = common dso_local global i32 0, align 4
@EBDCSR_BURST_1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"TRG: DNAR = 0x%x, togo = 0x%x\0A\00", align 1
@CS_TEST_AND_INIT = common dso_local global i32 0, align 4
@EBDMA_DCSR = common dso_local global i32 0, align 4
@EBDCSR_DMAEN = common dso_local global i32 0, align 4
@EBDMA_DCNT = common dso_local global i32 0, align 4
@EBDMA_DADDR = common dso_local global i32 0, align 4
@EBDCSR_RESET = common dso_local global i32 0, align 4
@EBDCSR_INTEN = common dso_local global i32 0, align 4
@EBDCSR_CNTEN = common dso_local global i32 0, align 4
@EBDCSR_NEXTEN = common dso_local global i32 0, align 4
@CS_INTERFACE_CONFIG = common dso_local global i32 0, align 4
@PLAYBACK_ENABLE = common dso_local global i32 0, align 4
@EBDCSR_A_LOADED = common dso_local global i32 0, align 4
@EBDCSR_WRITE = common dso_local global i32 0, align 4
@CAPTURE_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cs4231_softc*, %struct.cs4231_channel*)* @cs4231_ebdma_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs4231_ebdma_trigger(%struct.cs4231_softc* %0, %struct.cs4231_channel* %1) #0 {
  %3 = alloca %struct.cs4231_softc*, align 8
  %4 = alloca %struct.cs4231_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cs4231_softc* %0, %struct.cs4231_softc** %3, align 8
  store %struct.cs4231_channel* %1, %struct.cs4231_channel** %4, align 8
  %8 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %9 = call i32 @CS4231_LOCK(%struct.cs4231_softc* %8)
  %10 = load %struct.cs4231_channel*, %struct.cs4231_channel** %4, align 8
  %11 = getelementptr inbounds %struct.cs4231_channel, %struct.cs4231_channel* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %2
  %15 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %16 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.cs4231_channel*, %struct.cs4231_channel** %4, align 8
  %19 = getelementptr inbounds %struct.cs4231_channel, %struct.cs4231_channel* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PCMDIR_PLAY, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %25 = call i32 @device_printf(i32 %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %27 = call i32 @CS4231_UNLOCK(%struct.cs4231_softc* %26)
  br label %253

28:                                               ; preds = %2
  %29 = load %struct.cs4231_channel*, %struct.cs4231_channel** %4, align 8
  %30 = getelementptr inbounds %struct.cs4231_channel, %struct.cs4231_channel* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @sndbuf_getbufaddr(i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.cs4231_channel*, %struct.cs4231_channel** %4, align 8
  %34 = getelementptr inbounds %struct.cs4231_channel, %struct.cs4231_channel* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @sndbuf_getsize(i32 %35)
  %37 = sdiv i32 %36, 2
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = srem i32 %38, 64
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %28
  %42 = load i32, i32* @EBDCSR_BURST_16, align 4
  %43 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %44 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %67

45:                                               ; preds = %28
  %46 = load i32, i32* %6, align 4
  %47 = srem i32 %46, 32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* @EBDCSR_BURST_8, align 4
  %51 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %52 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  br label %66

53:                                               ; preds = %45
  %54 = load i32, i32* %6, align 4
  %55 = srem i32 %54, 16
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* @EBDCSR_BURST_4, align 4
  %59 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %60 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  br label %65

61:                                               ; preds = %53
  %62 = load i32, i32* @EBDCSR_BURST_1, align 4
  %63 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %64 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %61, %57
  br label %66

66:                                               ; preds = %65, %49
  br label %67

67:                                               ; preds = %66, %41
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.cs4231_channel*, %struct.cs4231_channel** %4, align 8
  %70 = getelementptr inbounds %struct.cs4231_channel, %struct.cs4231_channel* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to i8*
  %75 = call i32 @DPRINTF(i8* %74)
  %76 = load %struct.cs4231_channel*, %struct.cs4231_channel** %4, align 8
  %77 = getelementptr inbounds %struct.cs4231_channel, %struct.cs4231_channel* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @PCMDIR_PLAY, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %162

81:                                               ; preds = %67
  %82 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %83 = load i32, i32* @CS_TEST_AND_INIT, align 4
  %84 = call i32 @cs4231_read(%struct.cs4231_softc* %82, i32 %83)
  %85 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %86 = load i32, i32* @EBDMA_DCSR, align 4
  %87 = call i32 @EBDMA_P_READ(%struct.cs4231_softc* %85, i32 %86)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @EBDCSR_DMAEN, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %81
  %93 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %94 = load i32, i32* @EBDMA_DCNT, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @EBDMA_P_WRITE(%struct.cs4231_softc* %93, i32 %94, i32 %95)
  %97 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %98 = load i32, i32* @EBDMA_DADDR, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @EBDMA_P_WRITE(%struct.cs4231_softc* %97, i32 %98, i32 %99)
  br label %142

101:                                              ; preds = %81
  %102 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %103 = load i32, i32* @EBDMA_DCSR, align 4
  %104 = load i32, i32* @EBDCSR_RESET, align 4
  %105 = call i32 @EBDMA_P_WRITE(%struct.cs4231_softc* %102, i32 %103, i32 %104)
  %106 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %107 = load i32, i32* @EBDMA_DCSR, align 4
  %108 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %109 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @EBDMA_P_WRITE(%struct.cs4231_softc* %106, i32 %107, i32 %110)
  %112 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %113 = load i32, i32* @EBDMA_DCNT, align 4
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @EBDMA_P_WRITE(%struct.cs4231_softc* %112, i32 %113, i32 %114)
  %116 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %117 = load i32, i32* @EBDMA_DADDR, align 4
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @EBDMA_P_WRITE(%struct.cs4231_softc* %116, i32 %117, i32 %118)
  %120 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %121 = load i32, i32* @EBDMA_DCSR, align 4
  %122 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %123 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @EBDCSR_DMAEN, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @EBDCSR_INTEN, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @EBDCSR_CNTEN, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @EBDCSR_NEXTEN, align 4
  %132 = or i32 %130, %131
  %133 = call i32 @EBDMA_P_WRITE(%struct.cs4231_softc* %120, i32 %121, i32 %132)
  %134 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %135 = load i32, i32* @CS_INTERFACE_CONFIG, align 4
  %136 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %137 = load i32, i32* @CS_INTERFACE_CONFIG, align 4
  %138 = call i32 @cs4231_read(%struct.cs4231_softc* %136, i32 %137)
  %139 = load i32, i32* @PLAYBACK_ENABLE, align 4
  %140 = or i32 %138, %139
  %141 = call i32 @cs4231_write(%struct.cs4231_softc* %134, i32 %135, i32 %140)
  br label %142

142:                                              ; preds = %101, %92
  %143 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %144 = load i32, i32* @EBDMA_DCSR, align 4
  %145 = call i32 @EBDMA_P_READ(%struct.cs4231_softc* %143, i32 %144)
  %146 = load i32, i32* @EBDCSR_A_LOADED, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %161

149:                                              ; preds = %142
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* %7, align 4
  %152 = add nsw i32 %151, %150
  store i32 %152, i32* %7, align 4
  %153 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %154 = load i32, i32* @EBDMA_DCNT, align 4
  %155 = load i32, i32* %6, align 4
  %156 = call i32 @EBDMA_P_WRITE(%struct.cs4231_softc* %153, i32 %154, i32 %155)
  %157 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %158 = load i32, i32* @EBDMA_DADDR, align 4
  %159 = load i32, i32* %7, align 4
  %160 = call i32 @EBDMA_P_WRITE(%struct.cs4231_softc* %157, i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %149, %142
  br label %245

162:                                              ; preds = %67
  %163 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %164 = load i32, i32* @CS_TEST_AND_INIT, align 4
  %165 = call i32 @cs4231_read(%struct.cs4231_softc* %163, i32 %164)
  %166 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %167 = load i32, i32* @EBDMA_DCSR, align 4
  %168 = call i32 @EBDMA_C_READ(%struct.cs4231_softc* %166, i32 %167)
  store i32 %168, i32* %5, align 4
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* @EBDCSR_DMAEN, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %182

173:                                              ; preds = %162
  %174 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %175 = load i32, i32* @EBDMA_DCNT, align 4
  %176 = load i32, i32* %6, align 4
  %177 = call i32 @EBDMA_C_WRITE(%struct.cs4231_softc* %174, i32 %175, i32 %176)
  %178 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %179 = load i32, i32* @EBDMA_DADDR, align 4
  %180 = load i32, i32* %7, align 4
  %181 = call i32 @EBDMA_C_WRITE(%struct.cs4231_softc* %178, i32 %179, i32 %180)
  br label %225

182:                                              ; preds = %162
  %183 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %184 = load i32, i32* @EBDMA_DCSR, align 4
  %185 = load i32, i32* @EBDCSR_RESET, align 4
  %186 = call i32 @EBDMA_C_WRITE(%struct.cs4231_softc* %183, i32 %184, i32 %185)
  %187 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %188 = load i32, i32* @EBDMA_DCSR, align 4
  %189 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %190 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @EBDMA_C_WRITE(%struct.cs4231_softc* %187, i32 %188, i32 %191)
  %193 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %194 = load i32, i32* @EBDMA_DCNT, align 4
  %195 = load i32, i32* %6, align 4
  %196 = call i32 @EBDMA_C_WRITE(%struct.cs4231_softc* %193, i32 %194, i32 %195)
  %197 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %198 = load i32, i32* @EBDMA_DADDR, align 4
  %199 = load i32, i32* %7, align 4
  %200 = call i32 @EBDMA_C_WRITE(%struct.cs4231_softc* %197, i32 %198, i32 %199)
  %201 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %202 = load i32, i32* @EBDMA_DCSR, align 4
  %203 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %204 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @EBDCSR_WRITE, align 4
  %207 = or i32 %205, %206
  %208 = load i32, i32* @EBDCSR_DMAEN, align 4
  %209 = or i32 %207, %208
  %210 = load i32, i32* @EBDCSR_INTEN, align 4
  %211 = or i32 %209, %210
  %212 = load i32, i32* @EBDCSR_CNTEN, align 4
  %213 = or i32 %211, %212
  %214 = load i32, i32* @EBDCSR_NEXTEN, align 4
  %215 = or i32 %213, %214
  %216 = call i32 @EBDMA_C_WRITE(%struct.cs4231_softc* %201, i32 %202, i32 %215)
  %217 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %218 = load i32, i32* @CS_INTERFACE_CONFIG, align 4
  %219 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %220 = load i32, i32* @CS_INTERFACE_CONFIG, align 4
  %221 = call i32 @cs4231_read(%struct.cs4231_softc* %219, i32 %220)
  %222 = load i32, i32* @CAPTURE_ENABLE, align 4
  %223 = or i32 %221, %222
  %224 = call i32 @cs4231_write(%struct.cs4231_softc* %217, i32 %218, i32 %223)
  br label %225

225:                                              ; preds = %182, %173
  %226 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %227 = load i32, i32* @EBDMA_DCSR, align 4
  %228 = call i32 @EBDMA_C_READ(%struct.cs4231_softc* %226, i32 %227)
  %229 = load i32, i32* @EBDCSR_A_LOADED, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %244

232:                                              ; preds = %225
  %233 = load i32, i32* %6, align 4
  %234 = load i32, i32* %7, align 4
  %235 = add nsw i32 %234, %233
  store i32 %235, i32* %7, align 4
  %236 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %237 = load i32, i32* @EBDMA_DCNT, align 4
  %238 = load i32, i32* %6, align 4
  %239 = call i32 @EBDMA_C_WRITE(%struct.cs4231_softc* %236, i32 %237, i32 %238)
  %240 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %241 = load i32, i32* @EBDMA_DADDR, align 4
  %242 = load i32, i32* %7, align 4
  %243 = call i32 @EBDMA_C_WRITE(%struct.cs4231_softc* %240, i32 %241, i32 %242)
  br label %244

244:                                              ; preds = %232, %225
  br label %245

245:                                              ; preds = %244, %161
  %246 = load i32, i32* %7, align 4
  %247 = load %struct.cs4231_channel*, %struct.cs4231_channel** %4, align 8
  %248 = getelementptr inbounds %struct.cs4231_channel, %struct.cs4231_channel* %247, i32 0, i32 3
  store i32 %246, i32* %248, align 4
  %249 = load %struct.cs4231_channel*, %struct.cs4231_channel** %4, align 8
  %250 = getelementptr inbounds %struct.cs4231_channel, %struct.cs4231_channel* %249, i32 0, i32 0
  store i32 1, i32* %250, align 8
  %251 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %252 = call i32 @CS4231_UNLOCK(%struct.cs4231_softc* %251)
  br label %253

253:                                              ; preds = %245, %14
  ret void
}

declare dso_local i32 @CS4231_LOCK(%struct.cs4231_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, i8*) #1

declare dso_local i32 @CS4231_UNLOCK(%struct.cs4231_softc*) #1

declare dso_local i32 @sndbuf_getbufaddr(i32) #1

declare dso_local i32 @sndbuf_getsize(i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @cs4231_read(%struct.cs4231_softc*, i32) #1

declare dso_local i32 @EBDMA_P_READ(%struct.cs4231_softc*, i32) #1

declare dso_local i32 @EBDMA_P_WRITE(%struct.cs4231_softc*, i32, i32) #1

declare dso_local i32 @cs4231_write(%struct.cs4231_softc*, i32, i32) #1

declare dso_local i32 @EBDMA_C_READ(%struct.cs4231_softc*, i32) #1

declare dso_local i32 @EBDMA_C_WRITE(%struct.cs4231_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
