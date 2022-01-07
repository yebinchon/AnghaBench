; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/sbus/extr_cs4231.c_cs4231_apcdma_trigger.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/sbus/extr_cs4231.c_cs4231_apcdma_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs4231_softc = type { i32 }
%struct.cs4231_channel = type { i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"%s channel already triggered\0A\00", align 1
@PCMDIR_PLAY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"playback\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"capture\00", align 1
@CS4231_MAX_APC_DMA_SZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"TRG: PNVA = 0x%x, togo = 0x%x\0A\00", align 1
@CS_TEST_AND_INIT = common dso_local global i32 0, align 4
@APC_CSR = common dso_local global i32 0, align 4
@APC_PNVA = common dso_local global i32 0, align 4
@APC_PNC = common dso_local global i32 0, align 4
@APC_CSR_PDMA_GO = common dso_local global i32 0, align 4
@APC_CSR_PPAUSE = common dso_local global i32 0, align 4
@APC_CSR_PIE = common dso_local global i32 0, align 4
@APC_CSR_GIE = common dso_local global i32 0, align 4
@APC_CSR_EIE = common dso_local global i32 0, align 4
@APC_CSR_EI = common dso_local global i32 0, align 4
@APC_CSR_PMIE = common dso_local global i32 0, align 4
@CS_INTERFACE_CONFIG = common dso_local global i32 0, align 4
@PLAYBACK_ENABLE = common dso_local global i32 0, align 4
@APC_CSR_PD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"TRG: CNVA = 0x%x, togo = 0x%x\0A\00", align 1
@APC_CNVA = common dso_local global i32 0, align 4
@APC_CNC = common dso_local global i32 0, align 4
@APC_CSR_CDMA_GO = common dso_local global i32 0, align 4
@APC_CSR_CPAUSE = common dso_local global i32 0, align 4
@APC_CSR_CMIE = common dso_local global i32 0, align 4
@APC_CSR_CIE = common dso_local global i32 0, align 4
@CAPTURE_ENABLE = common dso_local global i32 0, align 4
@APC_CSR_CD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cs4231_softc*, %struct.cs4231_channel*)* @cs4231_apcdma_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs4231_apcdma_trigger(%struct.cs4231_softc* %0, %struct.cs4231_channel* %1) #0 {
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
  %16 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %15, i32 0, i32 0
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
  br label %223

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
  %39 = load i32, i32* @CS4231_MAX_APC_DMA_SZ, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %28
  %42 = load i32, i32* @CS4231_MAX_APC_DMA_SZ, align 4
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %41, %28
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.cs4231_channel*, %struct.cs4231_channel** %4, align 8
  %46 = getelementptr inbounds %struct.cs4231_channel, %struct.cs4231_channel* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.cs4231_channel*, %struct.cs4231_channel** %4, align 8
  %48 = getelementptr inbounds %struct.cs4231_channel, %struct.cs4231_channel* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PCMDIR_PLAY, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %139

52:                                               ; preds = %43
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 @DPRINTF(i8* %56)
  %58 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %59 = load i32, i32* @CS_TEST_AND_INIT, align 4
  %60 = call i32 @cs4231_read(%struct.cs4231_softc* %58, i32 %59)
  %61 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %62 = load i32, i32* @APC_CSR, align 4
  %63 = call i32 @APC_READ(%struct.cs4231_softc* %61, i32 %62)
  store i32 %63, i32* %5, align 4
  %64 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %65 = load i32, i32* @APC_PNVA, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @APC_WRITE(%struct.cs4231_softc* %64, i32 %65, i32 %66)
  %68 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %69 = load i32, i32* @APC_PNC, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @APC_WRITE(%struct.cs4231_softc* %68, i32 %69, i32 %70)
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @APC_CSR_PDMA_GO, align 4
  %74 = and i32 %72, %73
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %52
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @APC_CSR_PPAUSE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %119

81:                                               ; preds = %76, %52
  %82 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %83 = load i32, i32* @APC_CSR, align 4
  %84 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %85 = load i32, i32* @APC_CSR, align 4
  %86 = call i32 @APC_READ(%struct.cs4231_softc* %84, i32 %85)
  %87 = load i32, i32* @APC_CSR_PIE, align 4
  %88 = load i32, i32* @APC_CSR_PPAUSE, align 4
  %89 = or i32 %87, %88
  %90 = xor i32 %89, -1
  %91 = and i32 %86, %90
  %92 = call i32 @APC_WRITE(%struct.cs4231_softc* %82, i32 %83, i32 %91)
  %93 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %94 = load i32, i32* @APC_CSR, align 4
  %95 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %96 = load i32, i32* @APC_CSR, align 4
  %97 = call i32 @APC_READ(%struct.cs4231_softc* %95, i32 %96)
  %98 = load i32, i32* @APC_CSR_GIE, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @APC_CSR_PIE, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @APC_CSR_EIE, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @APC_CSR_EI, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @APC_CSR_PMIE, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @APC_CSR_PDMA_GO, align 4
  %109 = or i32 %107, %108
  %110 = call i32 @APC_WRITE(%struct.cs4231_softc* %93, i32 %94, i32 %109)
  %111 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %112 = load i32, i32* @CS_INTERFACE_CONFIG, align 4
  %113 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %114 = load i32, i32* @CS_INTERFACE_CONFIG, align 4
  %115 = call i32 @cs4231_read(%struct.cs4231_softc* %113, i32 %114)
  %116 = load i32, i32* @PLAYBACK_ENABLE, align 4
  %117 = or i32 %115, %116
  %118 = call i32 @cs4231_write(%struct.cs4231_softc* %111, i32 %112, i32 %117)
  br label %119

119:                                              ; preds = %81, %76
  %120 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %121 = load i32, i32* @APC_CSR, align 4
  %122 = call i32 @APC_READ(%struct.cs4231_softc* %120, i32 %121)
  %123 = load i32, i32* @APC_CSR_PD, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %138

126:                                              ; preds = %119
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %7, align 4
  %130 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %131 = load i32, i32* @APC_PNVA, align 4
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @APC_WRITE(%struct.cs4231_softc* %130, i32 %131, i32 %132)
  %134 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %135 = load i32, i32* @APC_PNC, align 4
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @APC_WRITE(%struct.cs4231_softc* %134, i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %126, %119
  br label %215

139:                                              ; preds = %43
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = inttoptr i64 %142 to i8*
  %144 = call i32 @DPRINTF(i8* %143)
  %145 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %146 = load i32, i32* @CS_TEST_AND_INIT, align 4
  %147 = call i32 @cs4231_read(%struct.cs4231_softc* %145, i32 %146)
  %148 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %149 = load i32, i32* @APC_CNVA, align 4
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @APC_WRITE(%struct.cs4231_softc* %148, i32 %149, i32 %150)
  %152 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %153 = load i32, i32* @APC_CNC, align 4
  %154 = load i32, i32* %6, align 4
  %155 = call i32 @APC_WRITE(%struct.cs4231_softc* %152, i32 %153, i32 %154)
  %156 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %157 = load i32, i32* @APC_CSR, align 4
  %158 = call i32 @APC_READ(%struct.cs4231_softc* %156, i32 %157)
  store i32 %158, i32* %5, align 4
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* @APC_CSR_CDMA_GO, align 4
  %161 = and i32 %159, %160
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %139
  %164 = load i32, i32* %5, align 4
  %165 = load i32, i32* @APC_CSR_CPAUSE, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %195

168:                                              ; preds = %163, %139
  %169 = load i32, i32* @APC_CSR_CPAUSE, align 4
  %170 = load i32, i32* %5, align 4
  %171 = and i32 %170, %169
  store i32 %171, i32* %5, align 4
  %172 = load i32, i32* @APC_CSR_GIE, align 4
  %173 = load i32, i32* @APC_CSR_CMIE, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* @APC_CSR_CIE, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* @APC_CSR_EI, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* @APC_CSR_CDMA_GO, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* %5, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %5, align 4
  %183 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %184 = load i32, i32* @APC_CSR, align 4
  %185 = load i32, i32* %5, align 4
  %186 = call i32 @APC_WRITE(%struct.cs4231_softc* %183, i32 %184, i32 %185)
  %187 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %188 = load i32, i32* @CS_INTERFACE_CONFIG, align 4
  %189 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %190 = load i32, i32* @CS_INTERFACE_CONFIG, align 4
  %191 = call i32 @cs4231_read(%struct.cs4231_softc* %189, i32 %190)
  %192 = load i32, i32* @CAPTURE_ENABLE, align 4
  %193 = or i32 %191, %192
  %194 = call i32 @cs4231_write(%struct.cs4231_softc* %187, i32 %188, i32 %193)
  br label %195

195:                                              ; preds = %168, %163
  %196 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %197 = load i32, i32* @APC_CSR, align 4
  %198 = call i32 @APC_READ(%struct.cs4231_softc* %196, i32 %197)
  %199 = load i32, i32* @APC_CSR_CD, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %214

202:                                              ; preds = %195
  %203 = load i32, i32* %6, align 4
  %204 = load i32, i32* %7, align 4
  %205 = add nsw i32 %204, %203
  store i32 %205, i32* %7, align 4
  %206 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %207 = load i32, i32* @APC_CNVA, align 4
  %208 = load i32, i32* %7, align 4
  %209 = call i32 @APC_WRITE(%struct.cs4231_softc* %206, i32 %207, i32 %208)
  %210 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %211 = load i32, i32* @APC_CNC, align 4
  %212 = load i32, i32* %6, align 4
  %213 = call i32 @APC_WRITE(%struct.cs4231_softc* %210, i32 %211, i32 %212)
  br label %214

214:                                              ; preds = %202, %195
  br label %215

215:                                              ; preds = %214, %138
  %216 = load i32, i32* %7, align 4
  %217 = load %struct.cs4231_channel*, %struct.cs4231_channel** %4, align 8
  %218 = getelementptr inbounds %struct.cs4231_channel, %struct.cs4231_channel* %217, i32 0, i32 3
  store i32 %216, i32* %218, align 4
  %219 = load %struct.cs4231_channel*, %struct.cs4231_channel** %4, align 8
  %220 = getelementptr inbounds %struct.cs4231_channel, %struct.cs4231_channel* %219, i32 0, i32 0
  store i32 1, i32* %220, align 8
  %221 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %222 = call i32 @CS4231_UNLOCK(%struct.cs4231_softc* %221)
  br label %223

223:                                              ; preds = %215, %14
  ret void
}

declare dso_local i32 @CS4231_LOCK(%struct.cs4231_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, i8*) #1

declare dso_local i32 @CS4231_UNLOCK(%struct.cs4231_softc*) #1

declare dso_local i32 @sndbuf_getbufaddr(i32) #1

declare dso_local i32 @sndbuf_getsize(i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @cs4231_read(%struct.cs4231_softc*, i32) #1

declare dso_local i32 @APC_READ(%struct.cs4231_softc*, i32) #1

declare dso_local i32 @APC_WRITE(%struct.cs4231_softc*, i32, i32) #1

declare dso_local i32 @cs4231_write(%struct.cs4231_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
