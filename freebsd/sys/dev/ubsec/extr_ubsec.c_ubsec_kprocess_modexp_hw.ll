; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ubsec/extr_ubsec.c_ubsec_kprocess_modexp_hw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ubsec/extr_ubsec.c_ubsec_kprocess_modexp_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubsec_softc = type { i32, i32, i32, i32 }
%struct.cryptkop = type { i64, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.ubsec_q2_modexp = type { i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_11__, %struct.TYPE_11__, %struct.TYPE_11__, %struct.TYPE_12__, i8*, i8*, i8*, i8*, %struct.ubsec_q2_modexp*, %struct.cryptkop* }
%struct.TYPE_11__ = type { i32, i32, i32*, %struct.ubsec_q2_modexp* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, %struct.TYPE_11__ }
%struct.ubsec_mcr = type { %struct.TYPE_9__, %struct.TYPE_8__, i64, i64, i8*, i64, i8* }
%struct.TYPE_9__ = type { i8*, i8*, i64 }
%struct.TYPE_8__ = type { i8*, i8*, i8* }
%struct.ubsec_ctx_modexp = type { i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_11__, %struct.TYPE_11__, %struct.TYPE_11__, %struct.TYPE_12__, i8*, i8*, i8*, i8*, %struct.ubsec_ctx_modexp*, %struct.cryptkop* }
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
@ubsec_debug = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubsec_softc*, %struct.cryptkop*, i32)* @ubsec_kprocess_modexp_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubsec_kprocess_modexp_hw(%struct.ubsec_softc* %0, %struct.cryptkop* %1, i32 %2) #0 {
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
  br label %397

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
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %37 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %36, i32 0, i32 2
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = load i64, i64* @UBS_MODEXP_PAR_N, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i64 %39
  %41 = call i32 @ubsec_ksigbits(%struct.TYPE_10__* %40)
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
  br label %397

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
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %98 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %13, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %81
  %106 = load i32, i32* @ERANGE, align 4
  store i32 %106, i32* %12, align 4
  br label %397

107:                                              ; preds = %81
  %108 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %109 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %110 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %109, i32 0, i32 7
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 2
  %112 = call i64 @ubsec_dma_malloc(%struct.ubsec_softc* %108, i32 88, %struct.TYPE_11__* %111, i32 0)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %107
  %115 = load i32, i32* @ENOMEM, align 4
  store i32 %115, i32* %12, align 4
  br label %397

116:                                              ; preds = %107
  %117 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %118 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %117, i32 0, i32 7
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 3
  %121 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %120, align 8
  %122 = bitcast %struct.ubsec_q2_modexp* %121 to %struct.ubsec_mcr*
  store %struct.ubsec_mcr* %122, %struct.ubsec_mcr** %9, align 8
  %123 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %124 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %125 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %124, i32 0, i32 7
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  %127 = call i64 @ubsec_dma_malloc(%struct.ubsec_softc* %123, i32 216, %struct.TYPE_11__* %126, i32 0)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %116
  %130 = load i32, i32* @ENOMEM, align 4
  store i32 %130, i32* %12, align 4
  br label %397

131:                                              ; preds = %116
  %132 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %133 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %132, i32 0, i32 2
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  %135 = load i64, i64* @UBS_MODEXP_PAR_M, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i64 %135
  %137 = call i32 @ubsec_ksigbits(%struct.TYPE_10__* %136)
  store i32 %137, i32* %15, align 4
  %138 = load i32, i32* %15, align 4
  %139 = load i32, i32* %13, align 4
  %140 = icmp sgt i32 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %131
  %142 = load i32, i32* @E2BIG, align 4
  store i32 %142, i32* %12, align 4
  br label %397

143:                                              ; preds = %131
  %144 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %145 = load i32, i32* %14, align 4
  %146 = sdiv i32 %145, 8
  %147 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %148 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %147, i32 0, i32 6
  %149 = call i64 @ubsec_dma_malloc(%struct.ubsec_softc* %144, i32 %146, %struct.TYPE_11__* %148, i32 0)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %143
  %152 = load i32, i32* @ENOMEM, align 4
  store i32 %152, i32* %12, align 4
  br label %397

153:                                              ; preds = %143
  %154 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %155 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %154, i32 0, i32 6
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 3
  %157 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %156, align 8
  %158 = load i32, i32* %14, align 4
  %159 = sdiv i32 %158, 8
  %160 = call i32 @bzero(%struct.ubsec_q2_modexp* %157, i32 %159)
  %161 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %162 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %161, i32 0, i32 2
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %162, align 8
  %164 = load i64, i64* @UBS_MODEXP_PAR_M, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %169 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %168, i32 0, i32 6
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 3
  %171 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %170, align 8
  %172 = load i32, i32* %15, align 4
  %173 = add nsw i32 %172, 7
  %174 = sdiv i32 %173, 8
  %175 = call i32 @bcopy(i32 %167, %struct.ubsec_q2_modexp* %171, i32 %174)
  %176 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %177 = load i32, i32* %14, align 4
  %178 = sdiv i32 %177, 8
  %179 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %180 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %179, i32 0, i32 4
  %181 = call i64 @ubsec_dma_malloc(%struct.ubsec_softc* %176, i32 %178, %struct.TYPE_11__* %180, i32 0)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %153
  %184 = load i32, i32* @ENOMEM, align 4
  store i32 %184, i32* %12, align 4
  br label %397

185:                                              ; preds = %153
  %186 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %187 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %186, i32 0, i32 4
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 3
  %189 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %188, align 8
  %190 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %191 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %190, i32 0, i32 4
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @bzero(%struct.ubsec_q2_modexp* %189, i32 %193)
  %195 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %196 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %195, i32 0, i32 2
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %196, align 8
  %198 = load i64, i64* @UBS_MODEXP_PAR_E, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i64 %198
  %200 = call i32 @ubsec_ksigbits(%struct.TYPE_10__* %199)
  store i32 %200, i32* %17, align 4
  %201 = load i32, i32* %17, align 4
  %202 = load i32, i32* %13, align 4
  %203 = icmp sgt i32 %201, %202
  br i1 %203, label %204, label %206

204:                                              ; preds = %185
  %205 = load i32, i32* @E2BIG, align 4
  store i32 %205, i32* %12, align 4
  br label %397

206:                                              ; preds = %185
  %207 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %208 = load i32, i32* %14, align 4
  %209 = sdiv i32 %208, 8
  %210 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %211 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %210, i32 0, i32 5
  %212 = call i64 @ubsec_dma_malloc(%struct.ubsec_softc* %207, i32 %209, %struct.TYPE_11__* %211, i32 0)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %206
  %215 = load i32, i32* @ENOMEM, align 4
  store i32 %215, i32* %12, align 4
  br label %397

216:                                              ; preds = %206
  %217 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %218 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %217, i32 0, i32 5
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 3
  %220 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %219, align 8
  %221 = load i32, i32* %14, align 4
  %222 = sdiv i32 %221, 8
  %223 = call i32 @bzero(%struct.ubsec_q2_modexp* %220, i32 %222)
  %224 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %225 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %224, i32 0, i32 2
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %225, align 8
  %227 = load i64, i64* @UBS_MODEXP_PAR_E, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %232 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %231, i32 0, i32 5
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 3
  %234 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %233, align 8
  %235 = load i32, i32* %17, align 4
  %236 = add nsw i32 %235, 7
  %237 = sdiv i32 %236, 8
  %238 = call i32 @bcopy(i32 %230, %struct.ubsec_q2_modexp* %234, i32 %237)
  %239 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %240 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %241 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %240, i32 0, i32 3
  %242 = call i64 @ubsec_dma_malloc(%struct.ubsec_softc* %239, i32 24, %struct.TYPE_11__* %241, i32 0)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %216
  %245 = load i32, i32* @ENOMEM, align 4
  store i32 %245, i32* %12, align 4
  br label %397

246:                                              ; preds = %216
  %247 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %248 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %247, i32 0, i32 3
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 3
  %250 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %249, align 8
  %251 = bitcast %struct.ubsec_q2_modexp* %250 to %struct.ubsec_pktbuf*
  store %struct.ubsec_pktbuf* %251, %struct.ubsec_pktbuf** %11, align 8
  %252 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %253 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %252, i32 0, i32 5
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = call i8* @htole32(i32 %255)
  %257 = load %struct.ubsec_pktbuf*, %struct.ubsec_pktbuf** %11, align 8
  %258 = getelementptr inbounds %struct.ubsec_pktbuf, %struct.ubsec_pktbuf* %257, i32 0, i32 2
  store i8* %256, i8** %258, align 8
  %259 = load %struct.ubsec_pktbuf*, %struct.ubsec_pktbuf** %11, align 8
  %260 = getelementptr inbounds %struct.ubsec_pktbuf, %struct.ubsec_pktbuf* %259, i32 0, i32 1
  store i64 0, i64* %260, align 8
  %261 = load i32, i32* %17, align 4
  %262 = add nsw i32 %261, 7
  %263 = sdiv i32 %262, 8
  %264 = call i8* @htole32(i32 %263)
  %265 = load %struct.ubsec_pktbuf*, %struct.ubsec_pktbuf** %11, align 8
  %266 = getelementptr inbounds %struct.ubsec_pktbuf, %struct.ubsec_pktbuf* %265, i32 0, i32 0
  store i8* %264, i8** %266, align 8
  %267 = call i8* @htole16(i32 1)
  %268 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %9, align 8
  %269 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %268, i32 0, i32 6
  store i8* %267, i8** %269, align 8
  %270 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %9, align 8
  %271 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %270, i32 0, i32 5
  store i64 0, i64* %271, align 8
  %272 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %273 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %272, i32 0, i32 7
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = call i8* @htole32(i32 %276)
  %278 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %9, align 8
  %279 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %278, i32 0, i32 4
  store i8* %277, i8** %279, align 8
  %280 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %9, align 8
  %281 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %280, i32 0, i32 3
  store i64 0, i64* %281, align 8
  %282 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %9, align 8
  %283 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %282, i32 0, i32 2
  store i64 0, i64* %283, align 8
  %284 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %285 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %284, i32 0, i32 6
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = call i8* @htole32(i32 %287)
  %289 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %9, align 8
  %290 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 2
  store i8* %288, i8** %291, align 8
  %292 = load i32, i32* %14, align 4
  %293 = sdiv i32 %292, 8
  %294 = call i8* @htole32(i32 %293)
  %295 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %9, align 8
  %296 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %296, i32 0, i32 1
  store i8* %294, i8** %297, align 8
  %298 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %299 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %298, i32 0, i32 3
  %300 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = call i8* @htole32(i32 %301)
  %303 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %9, align 8
  %304 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %303, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %304, i32 0, i32 0
  store i8* %302, i8** %305, align 8
  %306 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %307 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %306, i32 0, i32 4
  %308 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = call i8* @htole32(i32 %309)
  %311 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %9, align 8
  %312 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %312, i32 0, i32 1
  store i8* %310, i8** %313, align 8
  %314 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %9, align 8
  %315 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %315, i32 0, i32 2
  store i64 0, i64* %316, align 8
  %317 = load i32, i32* %14, align 4
  %318 = sdiv i32 %317, 8
  %319 = call i8* @htole32(i32 %318)
  %320 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %9, align 8
  %321 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %321, i32 0, i32 0
  store i8* %319, i8** %322, align 8
  %323 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %324 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %323, i32 0, i32 7
  %325 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %325, i32 0, i32 3
  %327 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %326, align 8
  %328 = bitcast %struct.ubsec_q2_modexp* %327 to %struct.ubsec_ctx_modexp*
  store %struct.ubsec_ctx_modexp* %328, %struct.ubsec_ctx_modexp** %10, align 8
  %329 = load %struct.ubsec_ctx_modexp*, %struct.ubsec_ctx_modexp** %10, align 8
  %330 = bitcast %struct.ubsec_ctx_modexp* %329 to %struct.ubsec_q2_modexp*
  %331 = call i32 @bzero(%struct.ubsec_q2_modexp* %330, i32 216)
  %332 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %333 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %332, i32 0, i32 2
  %334 = load %struct.TYPE_10__*, %struct.TYPE_10__** %333, align 8
  %335 = load i64, i64* @UBS_MODEXP_PAR_N, align 8
  %336 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %334, i64 %335
  %337 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.ubsec_ctx_modexp*, %struct.ubsec_ctx_modexp** %10, align 8
  %340 = getelementptr inbounds %struct.ubsec_ctx_modexp, %struct.ubsec_ctx_modexp* %339, i32 0, i32 12
  %341 = load %struct.ubsec_ctx_modexp*, %struct.ubsec_ctx_modexp** %340, align 8
  %342 = bitcast %struct.ubsec_ctx_modexp* %341 to %struct.ubsec_q2_modexp*
  %343 = load i32, i32* %13, align 4
  %344 = add nsw i32 %343, 7
  %345 = sdiv i32 %344, 8
  %346 = call i32 @bcopy(i32 %338, %struct.ubsec_q2_modexp* %342, i32 %345)
  %347 = load i32, i32* %14, align 4
  %348 = sdiv i32 %347, 8
  %349 = sext i32 %348 to i64
  %350 = add i64 %349, 16
  %351 = trunc i64 %350 to i32
  %352 = call i8* @htole16(i32 %351)
  %353 = load %struct.ubsec_ctx_modexp*, %struct.ubsec_ctx_modexp** %10, align 8
  %354 = getelementptr inbounds %struct.ubsec_ctx_modexp, %struct.ubsec_ctx_modexp* %353, i32 0, i32 11
  store i8* %352, i8** %354, align 8
  %355 = load i32, i32* @UBS_CTXOP_MODEXP, align 4
  %356 = call i8* @htole16(i32 %355)
  %357 = load %struct.ubsec_ctx_modexp*, %struct.ubsec_ctx_modexp** %10, align 8
  %358 = getelementptr inbounds %struct.ubsec_ctx_modexp, %struct.ubsec_ctx_modexp* %357, i32 0, i32 10
  store i8* %356, i8** %358, align 8
  %359 = load i32, i32* %17, align 4
  %360 = call i8* @htole16(i32 %359)
  %361 = load %struct.ubsec_ctx_modexp*, %struct.ubsec_ctx_modexp** %10, align 8
  %362 = getelementptr inbounds %struct.ubsec_ctx_modexp, %struct.ubsec_ctx_modexp* %361, i32 0, i32 9
  store i8* %360, i8** %362, align 8
  %363 = load i32, i32* %13, align 4
  %364 = call i8* @htole16(i32 %363)
  %365 = load %struct.ubsec_ctx_modexp*, %struct.ubsec_ctx_modexp** %10, align 8
  %366 = getelementptr inbounds %struct.ubsec_ctx_modexp, %struct.ubsec_ctx_modexp* %365, i32 0, i32 8
  store i8* %364, i8** %366, align 8
  %367 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %368 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %367, i32 0, i32 6
  %369 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %370 = call i32 @ubsec_dma_sync(%struct.TYPE_11__* %368, i32 %369)
  %371 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %372 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %371, i32 0, i32 5
  %373 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %374 = call i32 @ubsec_dma_sync(%struct.TYPE_11__* %372, i32 %373)
  %375 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %376 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %375, i32 0, i32 4
  %377 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %378 = call i32 @ubsec_dma_sync(%struct.TYPE_11__* %376, i32 %377)
  %379 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %380 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %379, i32 0, i32 3
  %381 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %382 = call i32 @ubsec_dma_sync(%struct.TYPE_11__* %380, i32 %381)
  %383 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %384 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %383, i32 0, i32 1
  %385 = call i32 @mtx_lock(i32* %384)
  %386 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %387 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %386, i32 0, i32 2
  %388 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %389 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %388, i32 0, i32 7
  %390 = load i32, i32* @q_next, align 4
  %391 = call i32 @SIMPLEQ_INSERT_TAIL(i32* %387, %struct.TYPE_12__* %389, i32 %390)
  %392 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %393 = call i32 @ubsec_feed2(%struct.ubsec_softc* %392)
  %394 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %395 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %394, i32 0, i32 1
  %396 = call i32 @mtx_unlock(i32* %395)
  store i32 0, i32* %4, align 4
  br label %518

397:                                              ; preds = %244, %214, %204, %183, %151, %141, %129, %114, %105, %75, %24
  %398 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %399 = icmp ne %struct.ubsec_q2_modexp* %398, null
  br i1 %399, label %400, label %512

400:                                              ; preds = %397
  %401 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %402 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %401, i32 0, i32 7
  %403 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %402, i32 0, i32 2
  %404 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %403, i32 0, i32 2
  %405 = load i32*, i32** %404, align 8
  %406 = icmp ne i32* %405, null
  br i1 %406, label %407, label %413

407:                                              ; preds = %400
  %408 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %409 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %410 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %409, i32 0, i32 7
  %411 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %410, i32 0, i32 2
  %412 = call i32 @ubsec_dma_free(%struct.ubsec_softc* %408, %struct.TYPE_11__* %411)
  br label %413

413:                                              ; preds = %407, %400
  %414 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %415 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %414, i32 0, i32 7
  %416 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %415, i32 0, i32 1
  %417 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %416, i32 0, i32 2
  %418 = load i32*, i32** %417, align 8
  %419 = icmp ne i32* %418, null
  br i1 %419, label %420, label %437

420:                                              ; preds = %413
  %421 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %422 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %421, i32 0, i32 7
  %423 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %422, i32 0, i32 1
  %424 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %423, i32 0, i32 3
  %425 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %424, align 8
  %426 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %427 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %426, i32 0, i32 7
  %428 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %427, i32 0, i32 1
  %429 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = call i32 @bzero(%struct.ubsec_q2_modexp* %425, i32 %430)
  %432 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %433 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %434 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %433, i32 0, i32 7
  %435 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %434, i32 0, i32 1
  %436 = call i32 @ubsec_dma_free(%struct.ubsec_softc* %432, %struct.TYPE_11__* %435)
  br label %437

437:                                              ; preds = %420, %413
  %438 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %439 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %438, i32 0, i32 6
  %440 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %439, i32 0, i32 2
  %441 = load i32*, i32** %440, align 8
  %442 = icmp ne i32* %441, null
  br i1 %442, label %443, label %457

443:                                              ; preds = %437
  %444 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %445 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %444, i32 0, i32 6
  %446 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %445, i32 0, i32 3
  %447 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %446, align 8
  %448 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %449 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %448, i32 0, i32 6
  %450 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 8
  %452 = call i32 @bzero(%struct.ubsec_q2_modexp* %447, i32 %451)
  %453 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %454 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %455 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %454, i32 0, i32 6
  %456 = call i32 @ubsec_dma_free(%struct.ubsec_softc* %453, %struct.TYPE_11__* %455)
  br label %457

457:                                              ; preds = %443, %437
  %458 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %459 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %458, i32 0, i32 5
  %460 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %459, i32 0, i32 2
  %461 = load i32*, i32** %460, align 8
  %462 = icmp ne i32* %461, null
  br i1 %462, label %463, label %477

463:                                              ; preds = %457
  %464 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %465 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %464, i32 0, i32 5
  %466 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %465, i32 0, i32 3
  %467 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %466, align 8
  %468 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %469 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %468, i32 0, i32 5
  %470 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %469, i32 0, i32 0
  %471 = load i32, i32* %470, align 8
  %472 = call i32 @bzero(%struct.ubsec_q2_modexp* %467, i32 %471)
  %473 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %474 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %475 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %474, i32 0, i32 5
  %476 = call i32 @ubsec_dma_free(%struct.ubsec_softc* %473, %struct.TYPE_11__* %475)
  br label %477

477:                                              ; preds = %463, %457
  %478 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %479 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %478, i32 0, i32 4
  %480 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %479, i32 0, i32 2
  %481 = load i32*, i32** %480, align 8
  %482 = icmp ne i32* %481, null
  br i1 %482, label %483, label %497

483:                                              ; preds = %477
  %484 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %485 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %484, i32 0, i32 4
  %486 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %485, i32 0, i32 3
  %487 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %486, align 8
  %488 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %489 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %488, i32 0, i32 4
  %490 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %489, i32 0, i32 0
  %491 = load i32, i32* %490, align 8
  %492 = call i32 @bzero(%struct.ubsec_q2_modexp* %487, i32 %491)
  %493 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %494 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %495 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %494, i32 0, i32 4
  %496 = call i32 @ubsec_dma_free(%struct.ubsec_softc* %493, %struct.TYPE_11__* %495)
  br label %497

497:                                              ; preds = %483, %477
  %498 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %499 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %498, i32 0, i32 3
  %500 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %499, i32 0, i32 2
  %501 = load i32*, i32** %500, align 8
  %502 = icmp ne i32* %501, null
  br i1 %502, label %503, label %508

503:                                              ; preds = %497
  %504 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %505 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %506 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %505, i32 0, i32 3
  %507 = call i32 @ubsec_dma_free(%struct.ubsec_softc* %504, %struct.TYPE_11__* %506)
  br label %508

508:                                              ; preds = %503, %497
  %509 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %8, align 8
  %510 = load i32, i32* @M_DEVBUF, align 4
  %511 = call i32 @free(%struct.ubsec_q2_modexp* %509, i32 %510)
  br label %512

512:                                              ; preds = %508, %397
  %513 = load i32, i32* %12, align 4
  %514 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %515 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %514, i32 0, i32 1
  store i32 %513, i32* %515, align 8
  %516 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %517 = call i32 @crypto_kdone(%struct.cryptkop* %516)
  store i32 0, i32* %4, align 4
  br label %518

518:                                              ; preds = %512, %246
  %519 = load i32, i32* %4, align 4
  ret i32 %519
}

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @bzero(%struct.ubsec_q2_modexp*, i32) #1

declare dso_local i32 @ubsec_ksigbits(%struct.TYPE_10__*) #1

declare dso_local i64 @ubsec_dma_malloc(%struct.ubsec_softc*, i32, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @bcopy(i32, %struct.ubsec_q2_modexp*, i32) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i8* @htole16(i32) #1

declare dso_local i32 @ubsec_dma_sync(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @SIMPLEQ_INSERT_TAIL(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @ubsec_feed2(%struct.ubsec_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ubsec_dma_free(%struct.ubsec_softc*, %struct.TYPE_11__*) #1

declare dso_local i32 @free(%struct.ubsec_q2_modexp*, i32) #1

declare dso_local i32 @crypto_kdone(%struct.cryptkop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
