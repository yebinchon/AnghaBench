; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/scc/extr_scc_dev_z8530.c_z8530_bfe_ipend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/scc/extr_scc_dev_z8530.c_z8530_bfe_ipend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scc_softc = type { i32, %struct.scc_chan*, %struct.scc_bas }
%struct.scc_chan = type { i32, i32 }
%struct.scc_bas = type { i32 }

@CHAN_A = common dso_local global i32 0, align 4
@RR_IP = common dso_local global i32 0, align 4
@IP_RIA = common dso_local global i32 0, align 4
@SER_INT_RXREADY = common dso_local global i32 0, align 4
@IP_RIB = common dso_local global i32 0, align 4
@IP_TIA = common dso_local global i32 0, align 4
@SER_INT_TXIDLE = common dso_local global i32 0, align 4
@IP_TIB = common dso_local global i32 0, align 4
@IP_SIA = common dso_local global i32 0, align 4
@CR_RSTXSI = common dso_local global i32 0, align 4
@BES_BRK = common dso_local global i32 0, align 4
@SER_INT_BREAK = common dso_local global i32 0, align 4
@BES_CTS = common dso_local global i32 0, align 4
@SER_CTS = common dso_local global i32 0, align 4
@SER_DCTS = common dso_local global i32 0, align 4
@BES_DCD = common dso_local global i32 0, align 4
@SER_DCD = common dso_local global i32 0, align 4
@SER_DDCD = common dso_local global i32 0, align 4
@BES_SYNC = common dso_local global i32 0, align 4
@SER_DSR = common dso_local global i32 0, align 4
@SER_DDSR = common dso_local global i32 0, align 4
@SER_MASK_DELTA = common dso_local global i32 0, align 4
@SER_INT_SIGCHG = common dso_local global i32 0, align 4
@RR_SRC = common dso_local global i32 0, align 4
@SRC_OVR = common dso_local global i32 0, align 4
@SER_INT_OVERRUN = common dso_local global i32 0, align 4
@IP_SIB = common dso_local global i32 0, align 4
@CHAN_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scc_softc*)* @z8530_bfe_ipend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @z8530_bfe_ipend(%struct.scc_softc* %0) #0 {
  %2 = alloca %struct.scc_softc*, align 8
  %3 = alloca %struct.scc_bas*, align 8
  %4 = alloca [2 x %struct.scc_chan*], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.scc_softc* %0, %struct.scc_softc** %2, align 8
  %9 = load %struct.scc_softc*, %struct.scc_softc** %2, align 8
  %10 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %9, i32 0, i32 2
  store %struct.scc_bas* %10, %struct.scc_bas** %3, align 8
  %11 = load %struct.scc_softc*, %struct.scc_softc** %2, align 8
  %12 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %11, i32 0, i32 1
  %13 = load %struct.scc_chan*, %struct.scc_chan** %12, align 8
  %14 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %13, i64 0
  %15 = getelementptr inbounds [2 x %struct.scc_chan*], [2 x %struct.scc_chan*]* %4, i64 0, i64 0
  store %struct.scc_chan* %14, %struct.scc_chan** %15, align 16
  %16 = load %struct.scc_softc*, %struct.scc_softc** %2, align 8
  %17 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %16, i32 0, i32 1
  %18 = load %struct.scc_chan*, %struct.scc_chan** %17, align 8
  %19 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %18, i64 1
  %20 = getelementptr inbounds [2 x %struct.scc_chan*], [2 x %struct.scc_chan*]* %4, i64 0, i64 1
  store %struct.scc_chan* %19, %struct.scc_chan** %20, align 8
  %21 = getelementptr inbounds [2 x %struct.scc_chan*], [2 x %struct.scc_chan*]* %4, i64 0, i64 0
  %22 = load %struct.scc_chan*, %struct.scc_chan** %21, align 16
  %23 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds [2 x %struct.scc_chan*], [2 x %struct.scc_chan*]* %4, i64 0, i64 1
  %25 = load %struct.scc_chan*, %struct.scc_chan** %24, align 8
  %26 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  %27 = load %struct.scc_softc*, %struct.scc_softc** %2, align 8
  %28 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %27, i32 0, i32 0
  %29 = call i32 @mtx_lock_spin(i32* %28)
  %30 = load %struct.scc_bas*, %struct.scc_bas** %3, align 8
  %31 = load i32, i32* @CHAN_A, align 4
  %32 = load i32, i32* @RR_IP, align 4
  %33 = call i32 @scc_getmreg(%struct.scc_bas* %30, i32 %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @IP_RIA, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %1
  %39 = load i32, i32* @SER_INT_RXREADY, align 4
  %40 = getelementptr inbounds [2 x %struct.scc_chan*], [2 x %struct.scc_chan*]* %4, i64 0, i64 0
  %41 = load %struct.scc_chan*, %struct.scc_chan** %40, align 16
  %42 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %39
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %38, %1
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @IP_RIB, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load i32, i32* @SER_INT_RXREADY, align 4
  %52 = getelementptr inbounds [2 x %struct.scc_chan*], [2 x %struct.scc_chan*]* %4, i64 0, i64 1
  %53 = load %struct.scc_chan*, %struct.scc_chan** %52, align 8
  %54 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %51
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %50, %45
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @IP_TIA, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load i32, i32* @SER_INT_TXIDLE, align 4
  %64 = getelementptr inbounds [2 x %struct.scc_chan*], [2 x %struct.scc_chan*]* %4, i64 0, i64 0
  %65 = load %struct.scc_chan*, %struct.scc_chan** %64, align 16
  %66 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %63
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %62, %57
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @IP_TIB, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load i32, i32* @SER_INT_TXIDLE, align 4
  %76 = getelementptr inbounds [2 x %struct.scc_chan*], [2 x %struct.scc_chan*]* %4, i64 0, i64 1
  %77 = load %struct.scc_chan*, %struct.scc_chan** %76, align 8
  %78 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %75
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %74, %69
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @IP_SIA, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %160

86:                                               ; preds = %81
  %87 = load %struct.scc_bas*, %struct.scc_bas** %3, align 8
  %88 = load i32, i32* @CHAN_A, align 4
  %89 = load i32, i32* @CR_RSTXSI, align 4
  %90 = call i32 @scc_getmreg(%struct.scc_bas* %87, i32 %88, i32 %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @BES_BRK, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %86
  %96 = load i32, i32* @SER_INT_BREAK, align 4
  %97 = getelementptr inbounds [2 x %struct.scc_chan*], [2 x %struct.scc_chan*]* %4, i64 0, i64 0
  %98 = load %struct.scc_chan*, %struct.scc_chan** %97, align 16
  %99 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %96
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %95, %86
  %103 = getelementptr inbounds [2 x %struct.scc_chan*], [2 x %struct.scc_chan*]* %4, i64 0, i64 0
  %104 = load %struct.scc_chan*, %struct.scc_chan** %103, align 16
  %105 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @BES_CTS, align 4
  %109 = and i32 %107, %108
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @SER_CTS, align 4
  %112 = load i32, i32* @SER_DCTS, align 4
  %113 = call i32 @SIGCHG(i32 %109, i32 %110, i32 %111, i32 %112)
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @BES_DCD, align 4
  %116 = and i32 %114, %115
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* @SER_DCD, align 4
  %119 = load i32, i32* @SER_DDCD, align 4
  %120 = call i32 @SIGCHG(i32 %116, i32 %117, i32 %118, i32 %119)
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @BES_SYNC, align 4
  %123 = and i32 %121, %122
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* @SER_DSR, align 4
  %126 = load i32, i32* @SER_DDSR, align 4
  %127 = call i32 @SIGCHG(i32 %123, i32 %124, i32 %125, i32 %126)
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* @SER_MASK_DELTA, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %102
  %133 = load i32, i32* %5, align 4
  %134 = getelementptr inbounds [2 x %struct.scc_chan*], [2 x %struct.scc_chan*]* %4, i64 0, i64 0
  %135 = load %struct.scc_chan*, %struct.scc_chan** %134, align 16
  %136 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %135, i32 0, i32 1
  store i32 %133, i32* %136, align 4
  %137 = load i32, i32* @SER_INT_SIGCHG, align 4
  %138 = getelementptr inbounds [2 x %struct.scc_chan*], [2 x %struct.scc_chan*]* %4, i64 0, i64 0
  %139 = load %struct.scc_chan*, %struct.scc_chan** %138, align 16
  %140 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %137
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %132, %102
  %144 = load %struct.scc_bas*, %struct.scc_bas** %3, align 8
  %145 = load i32, i32* @CHAN_A, align 4
  %146 = load i32, i32* @RR_SRC, align 4
  %147 = call i32 @scc_getmreg(%struct.scc_bas* %144, i32 %145, i32 %146)
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* @SRC_OVR, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %143
  %153 = load i32, i32* @SER_INT_OVERRUN, align 4
  %154 = getelementptr inbounds [2 x %struct.scc_chan*], [2 x %struct.scc_chan*]* %4, i64 0, i64 0
  %155 = load %struct.scc_chan*, %struct.scc_chan** %154, align 16
  %156 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %153
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %152, %143
  br label %160

160:                                              ; preds = %159, %81
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* @IP_SIB, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %239

165:                                              ; preds = %160
  %166 = load %struct.scc_bas*, %struct.scc_bas** %3, align 8
  %167 = load i32, i32* @CHAN_B, align 4
  %168 = load i32, i32* @CR_RSTXSI, align 4
  %169 = call i32 @scc_getmreg(%struct.scc_bas* %166, i32 %167, i32 %168)
  store i32 %169, i32* %6, align 4
  %170 = load i32, i32* %6, align 4
  %171 = load i32, i32* @BES_BRK, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %165
  %175 = load i32, i32* @SER_INT_BREAK, align 4
  %176 = getelementptr inbounds [2 x %struct.scc_chan*], [2 x %struct.scc_chan*]* %4, i64 0, i64 1
  %177 = load %struct.scc_chan*, %struct.scc_chan** %176, align 8
  %178 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, %175
  store i32 %180, i32* %178, align 4
  br label %181

181:                                              ; preds = %174, %165
  %182 = getelementptr inbounds [2 x %struct.scc_chan*], [2 x %struct.scc_chan*]* %4, i64 0, i64 1
  %183 = load %struct.scc_chan*, %struct.scc_chan** %182, align 8
  %184 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %5, align 4
  %186 = load i32, i32* %6, align 4
  %187 = load i32, i32* @BES_CTS, align 4
  %188 = and i32 %186, %187
  %189 = load i32, i32* %5, align 4
  %190 = load i32, i32* @SER_CTS, align 4
  %191 = load i32, i32* @SER_DCTS, align 4
  %192 = call i32 @SIGCHG(i32 %188, i32 %189, i32 %190, i32 %191)
  %193 = load i32, i32* %6, align 4
  %194 = load i32, i32* @BES_DCD, align 4
  %195 = and i32 %193, %194
  %196 = load i32, i32* %5, align 4
  %197 = load i32, i32* @SER_DCD, align 4
  %198 = load i32, i32* @SER_DDCD, align 4
  %199 = call i32 @SIGCHG(i32 %195, i32 %196, i32 %197, i32 %198)
  %200 = load i32, i32* %6, align 4
  %201 = load i32, i32* @BES_SYNC, align 4
  %202 = and i32 %200, %201
  %203 = load i32, i32* %5, align 4
  %204 = load i32, i32* @SER_DSR, align 4
  %205 = load i32, i32* @SER_DDSR, align 4
  %206 = call i32 @SIGCHG(i32 %202, i32 %203, i32 %204, i32 %205)
  %207 = load i32, i32* %5, align 4
  %208 = load i32, i32* @SER_MASK_DELTA, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %222

211:                                              ; preds = %181
  %212 = load i32, i32* %5, align 4
  %213 = getelementptr inbounds [2 x %struct.scc_chan*], [2 x %struct.scc_chan*]* %4, i64 0, i64 1
  %214 = load %struct.scc_chan*, %struct.scc_chan** %213, align 8
  %215 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %214, i32 0, i32 1
  store i32 %212, i32* %215, align 4
  %216 = load i32, i32* @SER_INT_SIGCHG, align 4
  %217 = getelementptr inbounds [2 x %struct.scc_chan*], [2 x %struct.scc_chan*]* %4, i64 0, i64 1
  %218 = load %struct.scc_chan*, %struct.scc_chan** %217, align 8
  %219 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = or i32 %220, %216
  store i32 %221, i32* %219, align 4
  br label %222

222:                                              ; preds = %211, %181
  %223 = load %struct.scc_bas*, %struct.scc_bas** %3, align 8
  %224 = load i32, i32* @CHAN_B, align 4
  %225 = load i32, i32* @RR_SRC, align 4
  %226 = call i32 @scc_getmreg(%struct.scc_bas* %223, i32 %224, i32 %225)
  store i32 %226, i32* %8, align 4
  %227 = load i32, i32* %8, align 4
  %228 = load i32, i32* @SRC_OVR, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %238

231:                                              ; preds = %222
  %232 = load i32, i32* @SER_INT_OVERRUN, align 4
  %233 = getelementptr inbounds [2 x %struct.scc_chan*], [2 x %struct.scc_chan*]* %4, i64 0, i64 1
  %234 = load %struct.scc_chan*, %struct.scc_chan** %233, align 8
  %235 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = or i32 %236, %232
  store i32 %237, i32* %235, align 4
  br label %238

238:                                              ; preds = %231, %222
  br label %239

239:                                              ; preds = %238, %160
  %240 = load %struct.scc_softc*, %struct.scc_softc** %2, align 8
  %241 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %240, i32 0, i32 0
  %242 = call i32 @mtx_unlock_spin(i32* %241)
  %243 = getelementptr inbounds [2 x %struct.scc_chan*], [2 x %struct.scc_chan*]* %4, i64 0, i64 0
  %244 = load %struct.scc_chan*, %struct.scc_chan** %243, align 16
  %245 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = getelementptr inbounds [2 x %struct.scc_chan*], [2 x %struct.scc_chan*]* %4, i64 0, i64 1
  %248 = load %struct.scc_chan*, %struct.scc_chan** %247, align 8
  %249 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = or i32 %246, %250
  ret i32 %251
}

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @scc_getmreg(%struct.scc_bas*, i32, i32) #1

declare dso_local i32 @SIGCHG(i32, i32, i32, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
