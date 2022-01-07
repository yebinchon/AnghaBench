; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ubsec/extr_ubsec.c_ubsec_kprocess_modexp_sw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ubsec/extr_ubsec.c_ubsec_kprocess_modexp_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.ubsec_softc = type { i32, i32, i32, i32 }
%struct.cryptkop = type { i64, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.ubsec_q2_modexp = type { i32, i32, i32, %struct.TYPE_13__, %struct.TYPE_13__, %struct.TYPE_13__, %struct.TYPE_13__, %struct.TYPE_14__, i8*, i8*, i8*, i8*, %struct.ubsec_q2_modexp*, %struct.cryptkop* }
%struct.TYPE_13__ = type { i32, i32, i32*, %struct.ubsec_q2_modexp* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__, %struct.TYPE_13__ }
%struct.ubsec_mcr = type { %struct.TYPE_10__, %struct.TYPE_9__, i64, i64, i8*, i64, i8* }
%struct.TYPE_10__ = type { i8*, i8*, i64 }
%struct.TYPE_9__ = type { i8*, i8*, i8* }
%struct.ubsec_ctx_modexp = type { i32, i32, i32, %struct.TYPE_13__, %struct.TYPE_13__, %struct.TYPE_13__, %struct.TYPE_13__, %struct.TYPE_14__, i8*, i8*, i8*, i8*, %struct.ubsec_ctx_modexp*, %struct.cryptkop* }
%struct.ubsec_pktbuf = type { i8*, i64, i8* }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UBS_CTXOP_MODEXP = common dso_local global i32 0, align 4
@UBS_MODEXP_PAR_N = common dso_local global i64 0, align 8
@UBS_FLAGS_BIGKEY = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@UBS_MODEXP_PAR_M = common dso_local global i64 0, align 8
@UBS_MODEXP_PAR_E = common dso_local global i64 0, align 8
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@q_next = common dso_local global i32 0, align 4
@ubsecstats = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@ubsec_debug = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubsec_softc*, %struct.cryptkop*, i32)* @ubsec_kprocess_modexp_sw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubsec_kprocess_modexp_sw(%struct.ubsec_softc* %0, %struct.cryptkop* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubsec_softc*, align 8
  %6 = alloca %struct.cryptkop*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubsec_q2_modexp*, align 8
  %9 = alloca %struct.ubsec_mcr*, align 8
  %10 = alloca %struct.ubsec_ctx_modexp*, align 8
  %11 = alloca %struct.ubsec_pktbuf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ubsec_softc* %0, %struct.ubsec_softc** %5, align 8
  store %struct.cryptkop* %1, %struct.cryptkop** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %12, align 4
  %18 = load i32, i32* @M_DEVBUF, align 4
  %19 = load i32, i32* @M_NOWAIT, align 4
  %20 = call i64 @malloc(i32 216, i32 %18, i32 %19)
  %21 = inttoptr i64 %20 to %struct.ubsec_q2_modexp*
  store %struct.ubsec_q2_modexp* %21, %struct.ubsec_q2_modexp** %8, align 8
  %22 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %23 = icmp eq %struct.ubsec_q2_modexp* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOMEM, align 4
  store i32 %25, i32* %12, align 4
  br label %384

26:                                               ; preds = %3
  %27 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %28 = call i32 @bzero(%struct.ubsec_q2_modexp* %27, i32 216)
  %29 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %30 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %31 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %30, i32 0, i32 13
  store %struct.cryptkop* %29, %struct.cryptkop** %31, align 8
  %32 = load i32, i32* @UBS_CTXOP_MODEXP, align 4
  %33 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %34 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %33, i32 0, i32 7
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %37 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %36, i32 0, i32 2
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = load i64, i64* @UBS_MODEXP_PAR_N, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i64 %39
  %41 = call i32 @ubsec_ksigbits(%struct.TYPE_12__* %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp sle i32 %42, 512
  br i1 %43, label %44, label %45

44:                                               ; preds = %26
  store i32 512, i32* %14, align 4
  br label %81

45:                                               ; preds = %26
  %46 = load i32, i32* %13, align 4
  %47 = icmp sle i32 %46, 768
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 768, i32* %14, align 4
  br label %80

49:                                               ; preds = %45
  %50 = load i32, i32* %13, align 4
  %51 = icmp sle i32 %50, 1024
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 1024, i32* %14, align 4
  br label %79

53:                                               ; preds = %49
  %54 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %55 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @UBS_FLAGS_BIGKEY, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load i32, i32* %13, align 4
  %62 = icmp sle i32 %61, 1536
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 1536, i32* %14, align 4
  br label %78

64:                                               ; preds = %60, %53
  %65 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %66 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @UBS_FLAGS_BIGKEY, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load i32, i32* %13, align 4
  %73 = icmp sle i32 %72, 2048
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 2048, i32* %14, align 4
  br label %77

75:                                               ; preds = %71, %64
  %76 = load i32, i32* @E2BIG, align 4
  store i32 %76, i32* %12, align 4
  br label %384

77:                                               ; preds = %74
  br label %78

78:                                               ; preds = %77, %63
  br label %79

79:                                               ; preds = %78, %52
  br label %80

80:                                               ; preds = %79, %48
  br label %81

81:                                               ; preds = %80, %44
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %13, align 4
  %84 = sub nsw i32 %82, %83
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %87 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* %16, align 4
  %89 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %90 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %14, align 4
  %92 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %93 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %95 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %94, i32 0, i32 2
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %95, align 8
  %97 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %98 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %13, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %81
  %106 = load i32, i32* @ERANGE, align 4
  store i32 %106, i32* %12, align 4
  br label %384

107:                                              ; preds = %81
  %108 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %109 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %110 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %109, i32 0, i32 7
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 2
  %112 = call i64 @ubsec_dma_malloc(%struct.ubsec_softc* %108, i32 88, %struct.TYPE_13__* %111, i32 0)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %107
  %115 = load i32, i32* @ENOMEM, align 4
  store i32 %115, i32* %12, align 4
  br label %384

116:                                              ; preds = %107
  %117 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %118 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %117, i32 0, i32 7
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 3
  %121 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %120, align 8
  %122 = bitcast %struct.ubsec_q2_modexp* %121 to %struct.ubsec_mcr*
  store %struct.ubsec_mcr* %122, %struct.ubsec_mcr** %9, align 8
  %123 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %124 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %125 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %124, i32 0, i32 7
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 1
  %127 = call i64 @ubsec_dma_malloc(%struct.ubsec_softc* %123, i32 216, %struct.TYPE_13__* %126, i32 0)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %116
  %130 = load i32, i32* @ENOMEM, align 4
  store i32 %130, i32* %12, align 4
  br label %384

131:                                              ; preds = %116
  %132 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %133 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %132, i32 0, i32 2
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %133, align 8
  %135 = load i64, i64* @UBS_MODEXP_PAR_M, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i64 %135
  %137 = call i32 @ubsec_ksigbits(%struct.TYPE_12__* %136)
  store i32 %137, i32* %15, align 4
  %138 = load i32, i32* %15, align 4
  %139 = load i32, i32* %13, align 4
  %140 = icmp sgt i32 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %131
  %142 = load i32, i32* @E2BIG, align 4
  store i32 %142, i32* %12, align 4
  br label %384

143:                                              ; preds = %131
  %144 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %145 = load i32, i32* %14, align 4
  %146 = sdiv i32 %145, 8
  %147 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %148 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %147, i32 0, i32 6
  %149 = call i64 @ubsec_dma_malloc(%struct.ubsec_softc* %144, i32 %146, %struct.TYPE_13__* %148, i32 0)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %143
  %152 = load i32, i32* @ENOMEM, align 4
  store i32 %152, i32* %12, align 4
  br label %384

153:                                              ; preds = %143
  %154 = load i32, i32* %16, align 4
  %155 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %156 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %155, i32 0, i32 2
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %156, align 8
  %158 = load i64, i64* @UBS_MODEXP_PAR_M, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %15, align 4
  %163 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %164 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %163, i32 0, i32 6
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 3
  %166 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %165, align 8
  %167 = load i32, i32* %14, align 4
  %168 = call i32 @ubsec_kshift_r(i32 %154, i32 %161, i32 %162, %struct.ubsec_q2_modexp* %166, i32 %167)
  %169 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %170 = load i32, i32* %14, align 4
  %171 = sdiv i32 %170, 8
  %172 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %173 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %172, i32 0, i32 4
  %174 = call i64 @ubsec_dma_malloc(%struct.ubsec_softc* %169, i32 %171, %struct.TYPE_13__* %173, i32 0)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %153
  %177 = load i32, i32* @ENOMEM, align 4
  store i32 %177, i32* %12, align 4
  br label %384

178:                                              ; preds = %153
  %179 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %180 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %179, i32 0, i32 4
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 3
  %182 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %181, align 8
  %183 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %184 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %183, i32 0, i32 4
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @bzero(%struct.ubsec_q2_modexp* %182, i32 %186)
  %188 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %189 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %188, i32 0, i32 2
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %189, align 8
  %191 = load i64, i64* @UBS_MODEXP_PAR_E, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i64 %191
  %193 = call i32 @ubsec_ksigbits(%struct.TYPE_12__* %192)
  store i32 %193, i32* %17, align 4
  %194 = load i32, i32* %17, align 4
  %195 = load i32, i32* %13, align 4
  %196 = icmp sgt i32 %194, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %178
  %198 = load i32, i32* @E2BIG, align 4
  store i32 %198, i32* %12, align 4
  br label %384

199:                                              ; preds = %178
  %200 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %201 = load i32, i32* %14, align 4
  %202 = sdiv i32 %201, 8
  %203 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %204 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %203, i32 0, i32 5
  %205 = call i64 @ubsec_dma_malloc(%struct.ubsec_softc* %200, i32 %202, %struct.TYPE_13__* %204, i32 0)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %199
  %208 = load i32, i32* @ENOMEM, align 4
  store i32 %208, i32* %12, align 4
  br label %384

209:                                              ; preds = %199
  %210 = load i32, i32* %16, align 4
  %211 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %212 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %211, i32 0, i32 2
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %212, align 8
  %214 = load i64, i64* @UBS_MODEXP_PAR_E, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %17, align 4
  %219 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %220 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %219, i32 0, i32 5
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 3
  %222 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %221, align 8
  %223 = load i32, i32* %14, align 4
  %224 = call i32 @ubsec_kshift_r(i32 %210, i32 %217, i32 %218, %struct.ubsec_q2_modexp* %222, i32 %223)
  %225 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %226 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %227 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %226, i32 0, i32 3
  %228 = call i64 @ubsec_dma_malloc(%struct.ubsec_softc* %225, i32 24, %struct.TYPE_13__* %227, i32 0)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %209
  %231 = load i32, i32* @ENOMEM, align 4
  store i32 %231, i32* %12, align 4
  br label %384

232:                                              ; preds = %209
  %233 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %234 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %233, i32 0, i32 3
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 3
  %236 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %235, align 8
  %237 = bitcast %struct.ubsec_q2_modexp* %236 to %struct.ubsec_pktbuf*
  store %struct.ubsec_pktbuf* %237, %struct.ubsec_pktbuf** %11, align 8
  %238 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %239 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %238, i32 0, i32 5
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = call i8* @htole32(i32 %241)
  %243 = load %struct.ubsec_pktbuf*, %struct.ubsec_pktbuf** %11, align 8
  %244 = getelementptr inbounds %struct.ubsec_pktbuf, %struct.ubsec_pktbuf* %243, i32 0, i32 2
  store i8* %242, i8** %244, align 8
  %245 = load %struct.ubsec_pktbuf*, %struct.ubsec_pktbuf** %11, align 8
  %246 = getelementptr inbounds %struct.ubsec_pktbuf, %struct.ubsec_pktbuf* %245, i32 0, i32 1
  store i64 0, i64* %246, align 8
  %247 = load i32, i32* %14, align 4
  %248 = sdiv i32 %247, 8
  %249 = call i8* @htole32(i32 %248)
  %250 = load %struct.ubsec_pktbuf*, %struct.ubsec_pktbuf** %11, align 8
  %251 = getelementptr inbounds %struct.ubsec_pktbuf, %struct.ubsec_pktbuf* %250, i32 0, i32 0
  store i8* %249, i8** %251, align 8
  %252 = call i8* @htole16(i32 1)
  %253 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %9, align 8
  %254 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %253, i32 0, i32 6
  store i8* %252, i8** %254, align 8
  %255 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %9, align 8
  %256 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %255, i32 0, i32 5
  store i64 0, i64* %256, align 8
  %257 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %258 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %257, i32 0, i32 7
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = call i8* @htole32(i32 %261)
  %263 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %9, align 8
  %264 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %263, i32 0, i32 4
  store i8* %262, i8** %264, align 8
  %265 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %9, align 8
  %266 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %265, i32 0, i32 3
  store i64 0, i64* %266, align 8
  %267 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %9, align 8
  %268 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %267, i32 0, i32 2
  store i64 0, i64* %268, align 8
  %269 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %270 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %269, i32 0, i32 6
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = call i8* @htole32(i32 %272)
  %274 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %9, align 8
  %275 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 2
  store i8* %273, i8** %276, align 8
  %277 = load i32, i32* %14, align 4
  %278 = sdiv i32 %277, 8
  %279 = call i8* @htole32(i32 %278)
  %280 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %9, align 8
  %281 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 1
  store i8* %279, i8** %282, align 8
  %283 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %284 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %283, i32 0, i32 3
  %285 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = call i8* @htole32(i32 %286)
  %288 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %9, align 8
  %289 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 0
  store i8* %287, i8** %290, align 8
  %291 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %292 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %291, i32 0, i32 4
  %293 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = call i8* @htole32(i32 %294)
  %296 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %9, align 8
  %297 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %297, i32 0, i32 1
  store i8* %295, i8** %298, align 8
  %299 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %9, align 8
  %300 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %300, i32 0, i32 2
  store i64 0, i64* %301, align 8
  %302 = load i32, i32* %14, align 4
  %303 = sdiv i32 %302, 8
  %304 = call i8* @htole32(i32 %303)
  %305 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %9, align 8
  %306 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %306, i32 0, i32 0
  store i8* %304, i8** %307, align 8
  %308 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %309 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %308, i32 0, i32 7
  %310 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %310, i32 0, i32 3
  %312 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %311, align 8
  %313 = bitcast %struct.ubsec_q2_modexp* %312 to %struct.ubsec_ctx_modexp*
  store %struct.ubsec_ctx_modexp* %313, %struct.ubsec_ctx_modexp** %10, align 8
  %314 = load %struct.ubsec_ctx_modexp*, %struct.ubsec_ctx_modexp** %10, align 8
  %315 = bitcast %struct.ubsec_ctx_modexp* %314 to %struct.ubsec_q2_modexp*
  %316 = call i32 @bzero(%struct.ubsec_q2_modexp* %315, i32 216)
  %317 = load i32, i32* %16, align 4
  %318 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %319 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %318, i32 0, i32 2
  %320 = load %struct.TYPE_12__*, %struct.TYPE_12__** %319, align 8
  %321 = load i64, i64* @UBS_MODEXP_PAR_N, align 8
  %322 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %320, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* %13, align 4
  %326 = load %struct.ubsec_ctx_modexp*, %struct.ubsec_ctx_modexp** %10, align 8
  %327 = getelementptr inbounds %struct.ubsec_ctx_modexp, %struct.ubsec_ctx_modexp* %326, i32 0, i32 12
  %328 = load %struct.ubsec_ctx_modexp*, %struct.ubsec_ctx_modexp** %327, align 8
  %329 = bitcast %struct.ubsec_ctx_modexp* %328 to %struct.ubsec_q2_modexp*
  %330 = load i32, i32* %14, align 4
  %331 = call i32 @ubsec_kshift_r(i32 %317, i32 %324, i32 %325, %struct.ubsec_q2_modexp* %329, i32 %330)
  %332 = load i32, i32* %14, align 4
  %333 = sdiv i32 %332, 8
  %334 = sext i32 %333 to i64
  %335 = add i64 %334, 16
  %336 = trunc i64 %335 to i32
  %337 = call i8* @htole16(i32 %336)
  %338 = load %struct.ubsec_ctx_modexp*, %struct.ubsec_ctx_modexp** %10, align 8
  %339 = getelementptr inbounds %struct.ubsec_ctx_modexp, %struct.ubsec_ctx_modexp* %338, i32 0, i32 11
  store i8* %337, i8** %339, align 8
  %340 = load i32, i32* @UBS_CTXOP_MODEXP, align 4
  %341 = call i8* @htole16(i32 %340)
  %342 = load %struct.ubsec_ctx_modexp*, %struct.ubsec_ctx_modexp** %10, align 8
  %343 = getelementptr inbounds %struct.ubsec_ctx_modexp, %struct.ubsec_ctx_modexp* %342, i32 0, i32 10
  store i8* %341, i8** %343, align 8
  %344 = load i32, i32* %13, align 4
  %345 = call i8* @htole16(i32 %344)
  %346 = load %struct.ubsec_ctx_modexp*, %struct.ubsec_ctx_modexp** %10, align 8
  %347 = getelementptr inbounds %struct.ubsec_ctx_modexp, %struct.ubsec_ctx_modexp* %346, i32 0, i32 9
  store i8* %345, i8** %347, align 8
  %348 = load i32, i32* %13, align 4
  %349 = call i8* @htole16(i32 %348)
  %350 = load %struct.ubsec_ctx_modexp*, %struct.ubsec_ctx_modexp** %10, align 8
  %351 = getelementptr inbounds %struct.ubsec_ctx_modexp, %struct.ubsec_ctx_modexp* %350, i32 0, i32 8
  store i8* %349, i8** %351, align 8
  %352 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %353 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %352, i32 0, i32 6
  %354 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %355 = call i32 @ubsec_dma_sync(%struct.TYPE_13__* %353, i32 %354)
  %356 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %357 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %356, i32 0, i32 5
  %358 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %359 = call i32 @ubsec_dma_sync(%struct.TYPE_13__* %357, i32 %358)
  %360 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %361 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %360, i32 0, i32 4
  %362 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %363 = call i32 @ubsec_dma_sync(%struct.TYPE_13__* %361, i32 %362)
  %364 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %365 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %364, i32 0, i32 3
  %366 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %367 = call i32 @ubsec_dma_sync(%struct.TYPE_13__* %365, i32 %366)
  %368 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %369 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %368, i32 0, i32 1
  %370 = call i32 @mtx_lock(i32* %369)
  %371 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %372 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %371, i32 0, i32 2
  %373 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %374 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %373, i32 0, i32 7
  %375 = load i32, i32* @q_next, align 4
  %376 = call i32 @SIMPLEQ_INSERT_TAIL(i32* %372, %struct.TYPE_14__* %374, i32 %375)
  %377 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %378 = call i32 @ubsec_feed2(%struct.ubsec_softc* %377)
  %379 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ubsecstats, i32 0, i32 0), align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ubsecstats, i32 0, i32 0), align 4
  %381 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %382 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %381, i32 0, i32 1
  %383 = call i32 @mtx_unlock(i32* %382)
  store i32 0, i32* %4, align 4
  br label %505

384:                                              ; preds = %230, %207, %197, %176, %151, %141, %129, %114, %105, %75, %24
  %385 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %386 = icmp ne %struct.ubsec_q2_modexp* %385, null
  br i1 %386, label %387, label %499

387:                                              ; preds = %384
  %388 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %389 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %388, i32 0, i32 7
  %390 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %389, i32 0, i32 2
  %391 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %390, i32 0, i32 2
  %392 = load i32*, i32** %391, align 8
  %393 = icmp ne i32* %392, null
  br i1 %393, label %394, label %400

394:                                              ; preds = %387
  %395 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %396 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %397 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %396, i32 0, i32 7
  %398 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %397, i32 0, i32 2
  %399 = call i32 @ubsec_dma_free(%struct.ubsec_softc* %395, %struct.TYPE_13__* %398)
  br label %400

400:                                              ; preds = %394, %387
  %401 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %402 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %401, i32 0, i32 7
  %403 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %402, i32 0, i32 1
  %404 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %403, i32 0, i32 2
  %405 = load i32*, i32** %404, align 8
  %406 = icmp ne i32* %405, null
  br i1 %406, label %407, label %424

407:                                              ; preds = %400
  %408 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %409 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %408, i32 0, i32 7
  %410 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %409, i32 0, i32 1
  %411 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %410, i32 0, i32 3
  %412 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %411, align 8
  %413 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %414 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %413, i32 0, i32 7
  %415 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %414, i32 0, i32 1
  %416 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 8
  %418 = call i32 @bzero(%struct.ubsec_q2_modexp* %412, i32 %417)
  %419 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %420 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %421 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %420, i32 0, i32 7
  %422 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %421, i32 0, i32 1
  %423 = call i32 @ubsec_dma_free(%struct.ubsec_softc* %419, %struct.TYPE_13__* %422)
  br label %424

424:                                              ; preds = %407, %400
  %425 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %426 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %425, i32 0, i32 6
  %427 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %426, i32 0, i32 2
  %428 = load i32*, i32** %427, align 8
  %429 = icmp ne i32* %428, null
  br i1 %429, label %430, label %444

430:                                              ; preds = %424
  %431 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %432 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %431, i32 0, i32 6
  %433 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %432, i32 0, i32 3
  %434 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %433, align 8
  %435 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %436 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %435, i32 0, i32 6
  %437 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 8
  %439 = call i32 @bzero(%struct.ubsec_q2_modexp* %434, i32 %438)
  %440 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %441 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %442 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %441, i32 0, i32 6
  %443 = call i32 @ubsec_dma_free(%struct.ubsec_softc* %440, %struct.TYPE_13__* %442)
  br label %444

444:                                              ; preds = %430, %424
  %445 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %446 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %445, i32 0, i32 5
  %447 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %446, i32 0, i32 2
  %448 = load i32*, i32** %447, align 8
  %449 = icmp ne i32* %448, null
  br i1 %449, label %450, label %464

450:                                              ; preds = %444
  %451 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %452 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %451, i32 0, i32 5
  %453 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %452, i32 0, i32 3
  %454 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %453, align 8
  %455 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %456 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %455, i32 0, i32 5
  %457 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %456, i32 0, i32 0
  %458 = load i32, i32* %457, align 8
  %459 = call i32 @bzero(%struct.ubsec_q2_modexp* %454, i32 %458)
  %460 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %461 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %462 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %461, i32 0, i32 5
  %463 = call i32 @ubsec_dma_free(%struct.ubsec_softc* %460, %struct.TYPE_13__* %462)
  br label %464

464:                                              ; preds = %450, %444
  %465 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %466 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %465, i32 0, i32 4
  %467 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %466, i32 0, i32 2
  %468 = load i32*, i32** %467, align 8
  %469 = icmp ne i32* %468, null
  br i1 %469, label %470, label %484

470:                                              ; preds = %464
  %471 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %472 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %471, i32 0, i32 4
  %473 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %472, i32 0, i32 3
  %474 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %473, align 8
  %475 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %476 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %475, i32 0, i32 4
  %477 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %476, i32 0, i32 0
  %478 = load i32, i32* %477, align 8
  %479 = call i32 @bzero(%struct.ubsec_q2_modexp* %474, i32 %478)
  %480 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %481 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %482 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %481, i32 0, i32 4
  %483 = call i32 @ubsec_dma_free(%struct.ubsec_softc* %480, %struct.TYPE_13__* %482)
  br label %484

484:                                              ; preds = %470, %464
  %485 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %486 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %485, i32 0, i32 3
  %487 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %486, i32 0, i32 2
  %488 = load i32*, i32** %487, align 8
  %489 = icmp ne i32* %488, null
  br i1 %489, label %490, label %495

490:                                              ; preds = %484
  %491 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %492 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %493 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %492, i32 0, i32 3
  %494 = call i32 @ubsec_dma_free(%struct.ubsec_softc* %491, %struct.TYPE_13__* %493)
  br label %495

495:                                              ; preds = %490, %484
  %496 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %497 = load i32, i32* @M_DEVBUF, align 4
  %498 = call i32 @free(%struct.ubsec_q2_modexp* %496, i32 %497)
  br label %499

499:                                              ; preds = %495, %384
  %500 = load i32, i32* %12, align 4
  %501 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %502 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %501, i32 0, i32 1
  store i32 %500, i32* %502, align 8
  %503 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %504 = call i32 @crypto_kdone(%struct.cryptkop* %503)
  store i32 0, i32* %4, align 4
  br label %505

505:                                              ; preds = %499, %232
  %506 = load i32, i32* %4, align 4
  ret i32 %506
}

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @bzero(%struct.ubsec_q2_modexp*, i32) #1

declare dso_local i32 @ubsec_ksigbits(%struct.TYPE_12__*) #1

declare dso_local i64 @ubsec_dma_malloc(%struct.ubsec_softc*, i32, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @ubsec_kshift_r(i32, i32, i32, %struct.ubsec_q2_modexp*, i32) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i8* @htole16(i32) #1

declare dso_local i32 @ubsec_dma_sync(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @SIMPLEQ_INSERT_TAIL(i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @ubsec_feed2(%struct.ubsec_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ubsec_dma_free(%struct.ubsec_softc*, %struct.TYPE_13__*) #1

declare dso_local i32 @free(%struct.ubsec_q2_modexp*, i32) #1

declare dso_local i32 @crypto_kdone(%struct.cryptkop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
