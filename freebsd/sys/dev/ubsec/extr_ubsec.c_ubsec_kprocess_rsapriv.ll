; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ubsec/extr_ubsec.c_ubsec_kprocess_rsapriv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ubsec/extr_ubsec.c_ubsec_kprocess_rsapriv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.ubsec_softc = type { i32, i32, i32, i32 }
%struct.cryptkop = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.ubsec_q2_rsapriv = type { i32, %struct.TYPE_13__, %struct.TYPE_13__, %struct.TYPE_14__, i8*, i8*, i8*, %struct.ubsec_q2_rsapriv*, %struct.cryptkop* }
%struct.TYPE_13__ = type { i32, i32, %struct.ubsec_q2_rsapriv*, i32* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__, %struct.TYPE_13__ }
%struct.ubsec_mcr = type { %struct.TYPE_10__, i8*, i64, %struct.TYPE_9__, i8*, i64, i8* }
%struct.TYPE_10__ = type { i8*, i64, i8* }
%struct.TYPE_9__ = type { i8*, i64, i8* }
%struct.ubsec_ctx_rsapriv = type { i32, %struct.TYPE_13__, %struct.TYPE_13__, %struct.TYPE_14__, i8*, i8*, i8*, %struct.ubsec_ctx_rsapriv*, %struct.cryptkop* }

@UBS_RSAPRIV_PAR_P = common dso_local global i64 0, align 8
@UBS_RSAPRIV_PAR_Q = common dso_local global i64 0, align 8
@UBS_FLAGS_BIGKEY = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@UBS_RSAPRIV_PAR_DP = common dso_local global i64 0, align 8
@UBS_RSAPRIV_PAR_DQ = common dso_local global i64 0, align 8
@UBS_RSAPRIV_PAR_PINV = common dso_local global i64 0, align 8
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UBS_CTXOP_RSAPRIV = common dso_local global i32 0, align 4
@UBS_RSAPRIV_PAR_MSGIN = common dso_local global i64 0, align 8
@UBS_RSAPRIV_PAR_MSGOUT = common dso_local global i64 0, align 8
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@q_next = common dso_local global i32 0, align 4
@ubsecstats = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubsec_softc*, %struct.cryptkop*, i32)* @ubsec_kprocess_rsapriv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubsec_kprocess_rsapriv(%struct.ubsec_softc* %0, %struct.cryptkop* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubsec_softc*, align 8
  %6 = alloca %struct.cryptkop*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubsec_q2_rsapriv*, align 8
  %9 = alloca %struct.ubsec_mcr*, align 8
  %10 = alloca %struct.ubsec_ctx_rsapriv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ubsec_softc* %0, %struct.ubsec_softc** %5, align 8
  store %struct.cryptkop* %1, %struct.cryptkop** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ubsec_q2_rsapriv* null, %struct.ubsec_q2_rsapriv** %8, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %15 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %14, i32 0, i32 1
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = load i64, i64* @UBS_RSAPRIV_PAR_P, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i64 %17
  %19 = call i32 @ubsec_ksigbits(%struct.TYPE_12__* %18)
  store i32 %19, i32* %13, align 4
  %20 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %21 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %20, i32 0, i32 1
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = load i64, i64* @UBS_RSAPRIV_PAR_Q, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i64 %23
  %25 = call i32 @ubsec_ksigbits(%struct.TYPE_12__* %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* %13, align 4
  store i32 %30, i32* %12, align 4
  br label %31

31:                                               ; preds = %29, %3
  %32 = load i32, i32* %12, align 4
  %33 = icmp sle i32 %32, 256
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 256, i32* %12, align 4
  br label %71

35:                                               ; preds = %31
  %36 = load i32, i32* %12, align 4
  %37 = icmp sle i32 %36, 384
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 384, i32* %12, align 4
  br label %70

39:                                               ; preds = %35
  %40 = load i32, i32* %12, align 4
  %41 = icmp sle i32 %40, 512
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 512, i32* %12, align 4
  br label %69

43:                                               ; preds = %39
  %44 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %45 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @UBS_FLAGS_BIGKEY, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i32, i32* %12, align 4
  %52 = icmp sle i32 %51, 768
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 768, i32* %12, align 4
  br label %68

54:                                               ; preds = %50, %43
  %55 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %56 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @UBS_FLAGS_BIGKEY, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load i32, i32* %12, align 4
  %63 = icmp sle i32 %62, 1024
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 1024, i32* %12, align 4
  br label %67

65:                                               ; preds = %61, %54
  %66 = load i32, i32* @E2BIG, align 4
  store i32 %66, i32* %11, align 4
  br label %470

67:                                               ; preds = %64
  br label %68

68:                                               ; preds = %67, %53
  br label %69

69:                                               ; preds = %68, %42
  br label %70

70:                                               ; preds = %69, %38
  br label %71

71:                                               ; preds = %70, %34
  %72 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %73 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %72, i32 0, i32 1
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = load i64, i64* @UBS_RSAPRIV_PAR_DP, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i64 %75
  %77 = call i32 @ubsec_ksigbits(%struct.TYPE_12__* %76)
  %78 = load i32, i32* %12, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = load i32, i32* @E2BIG, align 4
  store i32 %81, i32* %11, align 4
  br label %470

82:                                               ; preds = %71
  %83 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %84 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %83, i32 0, i32 1
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %84, align 8
  %86 = load i64, i64* @UBS_RSAPRIV_PAR_DQ, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i64 %86
  %88 = call i32 @ubsec_ksigbits(%struct.TYPE_12__* %87)
  %89 = load i32, i32* %12, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %82
  %92 = load i32, i32* @E2BIG, align 4
  store i32 %92, i32* %11, align 4
  br label %470

93:                                               ; preds = %82
  %94 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %95 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %94, i32 0, i32 1
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %95, align 8
  %97 = load i64, i64* @UBS_RSAPRIV_PAR_PINV, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i64 %97
  %99 = call i32 @ubsec_ksigbits(%struct.TYPE_12__* %98)
  %100 = load i32, i32* %12, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %93
  %103 = load i32, i32* @E2BIG, align 4
  store i32 %103, i32* %11, align 4
  br label %470

104:                                              ; preds = %93
  %105 = load i32, i32* @M_DEVBUF, align 4
  %106 = load i32, i32* @M_NOWAIT, align 4
  %107 = call i64 @malloc(i32 152, i32 %105, i32 %106)
  %108 = inttoptr i64 %107 to %struct.ubsec_q2_rsapriv*
  store %struct.ubsec_q2_rsapriv* %108, %struct.ubsec_q2_rsapriv** %8, align 8
  %109 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %8, align 8
  %110 = icmp eq %struct.ubsec_q2_rsapriv* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = load i32, i32* @ENOMEM, align 4
  store i32 %112, i32* %4, align 4
  br label %536

113:                                              ; preds = %104
  %114 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %8, align 8
  %115 = call i32 @bzero(%struct.ubsec_q2_rsapriv* %114, i32 152)
  %116 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %117 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %8, align 8
  %118 = getelementptr inbounds %struct.ubsec_q2_rsapriv, %struct.ubsec_q2_rsapriv* %117, i32 0, i32 8
  store %struct.cryptkop* %116, %struct.cryptkop** %118, align 8
  %119 = load i32, i32* @UBS_CTXOP_RSAPRIV, align 4
  %120 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %8, align 8
  %121 = getelementptr inbounds %struct.ubsec_q2_rsapriv, %struct.ubsec_q2_rsapriv* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 8
  %123 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %124 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %8, align 8
  %125 = getelementptr inbounds %struct.ubsec_q2_rsapriv, %struct.ubsec_q2_rsapriv* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 1
  %127 = call i64 @ubsec_dma_malloc(%struct.ubsec_softc* %123, i32 88, %struct.TYPE_13__* %126, i32 0)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %113
  %130 = load i32, i32* @ENOMEM, align 4
  store i32 %130, i32* %11, align 4
  br label %470

131:                                              ; preds = %113
  %132 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %8, align 8
  %133 = getelementptr inbounds %struct.ubsec_q2_rsapriv, %struct.ubsec_q2_rsapriv* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 2
  %136 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %135, align 8
  %137 = bitcast %struct.ubsec_q2_rsapriv* %136 to %struct.ubsec_mcr*
  store %struct.ubsec_mcr* %137, %struct.ubsec_mcr** %9, align 8
  %138 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %139 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %8, align 8
  %140 = getelementptr inbounds %struct.ubsec_q2_rsapriv, %struct.ubsec_q2_rsapriv* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 2
  %142 = call i64 @ubsec_dma_malloc(%struct.ubsec_softc* %138, i32 152, %struct.TYPE_13__* %141, i32 0)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %131
  %145 = load i32, i32* @ENOMEM, align 4
  store i32 %145, i32* %11, align 4
  br label %470

146:                                              ; preds = %131
  %147 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %8, align 8
  %148 = getelementptr inbounds %struct.ubsec_q2_rsapriv, %struct.ubsec_q2_rsapriv* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 2
  %151 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %150, align 8
  %152 = bitcast %struct.ubsec_q2_rsapriv* %151 to %struct.ubsec_ctx_rsapriv*
  store %struct.ubsec_ctx_rsapriv* %152, %struct.ubsec_ctx_rsapriv** %10, align 8
  %153 = load %struct.ubsec_ctx_rsapriv*, %struct.ubsec_ctx_rsapriv** %10, align 8
  %154 = bitcast %struct.ubsec_ctx_rsapriv* %153 to %struct.ubsec_q2_rsapriv*
  %155 = call i32 @bzero(%struct.ubsec_q2_rsapriv* %154, i32 152)
  %156 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %157 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %156, i32 0, i32 1
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %157, align 8
  %159 = load i64, i64* @UBS_RSAPRIV_PAR_P, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.ubsec_ctx_rsapriv*, %struct.ubsec_ctx_rsapriv** %10, align 8
  %164 = getelementptr inbounds %struct.ubsec_ctx_rsapriv, %struct.ubsec_ctx_rsapriv* %163, i32 0, i32 7
  %165 = load %struct.ubsec_ctx_rsapriv*, %struct.ubsec_ctx_rsapriv** %164, align 8
  %166 = load i32, i32* %12, align 4
  %167 = sdiv i32 %166, 8
  %168 = mul nsw i32 0, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.ubsec_ctx_rsapriv, %struct.ubsec_ctx_rsapriv* %165, i64 %169
  %171 = bitcast %struct.ubsec_ctx_rsapriv* %170 to %struct.ubsec_q2_rsapriv*
  %172 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %173 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %172, i32 0, i32 1
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %173, align 8
  %175 = load i64, i64* @UBS_RSAPRIV_PAR_P, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, 7
  %180 = sdiv i32 %179, 8
  %181 = call i32 @bcopy(i32 %162, %struct.ubsec_q2_rsapriv* %171, i32 %180)
  %182 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %183 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %182, i32 0, i32 1
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %183, align 8
  %185 = load i64, i64* @UBS_RSAPRIV_PAR_Q, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.ubsec_ctx_rsapriv*, %struct.ubsec_ctx_rsapriv** %10, align 8
  %190 = getelementptr inbounds %struct.ubsec_ctx_rsapriv, %struct.ubsec_ctx_rsapriv* %189, i32 0, i32 7
  %191 = load %struct.ubsec_ctx_rsapriv*, %struct.ubsec_ctx_rsapriv** %190, align 8
  %192 = load i32, i32* %12, align 4
  %193 = sdiv i32 %192, 8
  %194 = mul nsw i32 1, %193
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.ubsec_ctx_rsapriv, %struct.ubsec_ctx_rsapriv* %191, i64 %195
  %197 = bitcast %struct.ubsec_ctx_rsapriv* %196 to %struct.ubsec_q2_rsapriv*
  %198 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %199 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %198, i32 0, i32 1
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %199, align 8
  %201 = load i64, i64* @UBS_RSAPRIV_PAR_Q, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %204, 7
  %206 = sdiv i32 %205, 8
  %207 = call i32 @bcopy(i32 %188, %struct.ubsec_q2_rsapriv* %197, i32 %206)
  %208 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %209 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %208, i32 0, i32 1
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %209, align 8
  %211 = load i64, i64* @UBS_RSAPRIV_PAR_DP, align 8
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.ubsec_ctx_rsapriv*, %struct.ubsec_ctx_rsapriv** %10, align 8
  %216 = getelementptr inbounds %struct.ubsec_ctx_rsapriv, %struct.ubsec_ctx_rsapriv* %215, i32 0, i32 7
  %217 = load %struct.ubsec_ctx_rsapriv*, %struct.ubsec_ctx_rsapriv** %216, align 8
  %218 = load i32, i32* %12, align 4
  %219 = sdiv i32 %218, 8
  %220 = mul nsw i32 2, %219
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.ubsec_ctx_rsapriv, %struct.ubsec_ctx_rsapriv* %217, i64 %221
  %223 = bitcast %struct.ubsec_ctx_rsapriv* %222 to %struct.ubsec_q2_rsapriv*
  %224 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %225 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %224, i32 0, i32 1
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %225, align 8
  %227 = load i64, i64* @UBS_RSAPRIV_PAR_DP, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = add nsw i32 %230, 7
  %232 = sdiv i32 %231, 8
  %233 = call i32 @bcopy(i32 %214, %struct.ubsec_q2_rsapriv* %223, i32 %232)
  %234 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %235 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %234, i32 0, i32 1
  %236 = load %struct.TYPE_12__*, %struct.TYPE_12__** %235, align 8
  %237 = load i64, i64* @UBS_RSAPRIV_PAR_DQ, align 8
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.ubsec_ctx_rsapriv*, %struct.ubsec_ctx_rsapriv** %10, align 8
  %242 = getelementptr inbounds %struct.ubsec_ctx_rsapriv, %struct.ubsec_ctx_rsapriv* %241, i32 0, i32 7
  %243 = load %struct.ubsec_ctx_rsapriv*, %struct.ubsec_ctx_rsapriv** %242, align 8
  %244 = load i32, i32* %12, align 4
  %245 = sdiv i32 %244, 8
  %246 = mul nsw i32 3, %245
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.ubsec_ctx_rsapriv, %struct.ubsec_ctx_rsapriv* %243, i64 %247
  %249 = bitcast %struct.ubsec_ctx_rsapriv* %248 to %struct.ubsec_q2_rsapriv*
  %250 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %251 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %250, i32 0, i32 1
  %252 = load %struct.TYPE_12__*, %struct.TYPE_12__** %251, align 8
  %253 = load i64, i64* @UBS_RSAPRIV_PAR_DQ, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = add nsw i32 %256, 7
  %258 = sdiv i32 %257, 8
  %259 = call i32 @bcopy(i32 %240, %struct.ubsec_q2_rsapriv* %249, i32 %258)
  %260 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %261 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %260, i32 0, i32 1
  %262 = load %struct.TYPE_12__*, %struct.TYPE_12__** %261, align 8
  %263 = load i64, i64* @UBS_RSAPRIV_PAR_PINV, align 8
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.ubsec_ctx_rsapriv*, %struct.ubsec_ctx_rsapriv** %10, align 8
  %268 = getelementptr inbounds %struct.ubsec_ctx_rsapriv, %struct.ubsec_ctx_rsapriv* %267, i32 0, i32 7
  %269 = load %struct.ubsec_ctx_rsapriv*, %struct.ubsec_ctx_rsapriv** %268, align 8
  %270 = load i32, i32* %12, align 4
  %271 = sdiv i32 %270, 8
  %272 = mul nsw i32 4, %271
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.ubsec_ctx_rsapriv, %struct.ubsec_ctx_rsapriv* %269, i64 %273
  %275 = bitcast %struct.ubsec_ctx_rsapriv* %274 to %struct.ubsec_q2_rsapriv*
  %276 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %277 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %276, i32 0, i32 1
  %278 = load %struct.TYPE_12__*, %struct.TYPE_12__** %277, align 8
  %279 = load i64, i64* @UBS_RSAPRIV_PAR_PINV, align 8
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = add nsw i32 %282, 7
  %284 = sdiv i32 %283, 8
  %285 = call i32 @bcopy(i32 %266, %struct.ubsec_q2_rsapriv* %275, i32 %284)
  %286 = load i32, i32* %12, align 4
  %287 = mul nsw i32 %286, 2
  store i32 %287, i32* %13, align 4
  %288 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %289 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %288, i32 0, i32 1
  %290 = load %struct.TYPE_12__*, %struct.TYPE_12__** %289, align 8
  %291 = load i64, i64* @UBS_RSAPRIV_PAR_MSGIN, align 8
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i64 %291
  %293 = call i32 @ubsec_ksigbits(%struct.TYPE_12__* %292)
  %294 = load i32, i32* %13, align 4
  %295 = icmp sgt i32 %293, %294
  br i1 %295, label %296, label %298

296:                                              ; preds = %146
  %297 = load i32, i32* @E2BIG, align 4
  store i32 %297, i32* %11, align 4
  br label %470

298:                                              ; preds = %146
  %299 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %300 = load i32, i32* %13, align 4
  %301 = add nsw i32 %300, 7
  %302 = sdiv i32 %301, 8
  %303 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %8, align 8
  %304 = getelementptr inbounds %struct.ubsec_q2_rsapriv, %struct.ubsec_q2_rsapriv* %303, i32 0, i32 2
  %305 = call i64 @ubsec_dma_malloc(%struct.ubsec_softc* %299, i32 %302, %struct.TYPE_13__* %304, i32 0)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %298
  %308 = load i32, i32* @ENOMEM, align 4
  store i32 %308, i32* %11, align 4
  br label %470

309:                                              ; preds = %298
  %310 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %8, align 8
  %311 = getelementptr inbounds %struct.ubsec_q2_rsapriv, %struct.ubsec_q2_rsapriv* %310, i32 0, i32 2
  %312 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %311, i32 0, i32 2
  %313 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %312, align 8
  %314 = load i32, i32* %13, align 4
  %315 = add nsw i32 %314, 7
  %316 = sdiv i32 %315, 8
  %317 = call i32 @bzero(%struct.ubsec_q2_rsapriv* %313, i32 %316)
  %318 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %319 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %318, i32 0, i32 1
  %320 = load %struct.TYPE_12__*, %struct.TYPE_12__** %319, align 8
  %321 = load i64, i64* @UBS_RSAPRIV_PAR_MSGIN, align 8
  %322 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %320, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %8, align 8
  %326 = getelementptr inbounds %struct.ubsec_q2_rsapriv, %struct.ubsec_q2_rsapriv* %325, i32 0, i32 2
  %327 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %326, i32 0, i32 2
  %328 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %327, align 8
  %329 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %330 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %329, i32 0, i32 1
  %331 = load %struct.TYPE_12__*, %struct.TYPE_12__** %330, align 8
  %332 = load i64, i64* @UBS_RSAPRIV_PAR_MSGIN, align 8
  %333 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %331, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 4
  %336 = add nsw i32 %335, 7
  %337 = sdiv i32 %336, 8
  %338 = call i32 @bcopy(i32 %324, %struct.ubsec_q2_rsapriv* %328, i32 %337)
  %339 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %340 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %339, i32 0, i32 1
  %341 = load %struct.TYPE_12__*, %struct.TYPE_12__** %340, align 8
  %342 = load i64, i64* @UBS_RSAPRIV_PAR_MSGOUT, align 8
  %343 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %341, i64 %342
  %344 = call i32 @ubsec_ksigbits(%struct.TYPE_12__* %343)
  %345 = load i32, i32* %13, align 4
  %346 = icmp slt i32 %344, %345
  br i1 %346, label %347, label %349

347:                                              ; preds = %309
  %348 = load i32, i32* @E2BIG, align 4
  store i32 %348, i32* %11, align 4
  br label %470

349:                                              ; preds = %309
  %350 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %351 = load i32, i32* %13, align 4
  %352 = add nsw i32 %351, 7
  %353 = sdiv i32 %352, 8
  %354 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %8, align 8
  %355 = getelementptr inbounds %struct.ubsec_q2_rsapriv, %struct.ubsec_q2_rsapriv* %354, i32 0, i32 1
  %356 = call i64 @ubsec_dma_malloc(%struct.ubsec_softc* %350, i32 %353, %struct.TYPE_13__* %355, i32 0)
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %360

358:                                              ; preds = %349
  %359 = load i32, i32* @ENOMEM, align 4
  store i32 %359, i32* %11, align 4
  br label %470

360:                                              ; preds = %349
  %361 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %8, align 8
  %362 = getelementptr inbounds %struct.ubsec_q2_rsapriv, %struct.ubsec_q2_rsapriv* %361, i32 0, i32 1
  %363 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %362, i32 0, i32 2
  %364 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %363, align 8
  %365 = load i32, i32* %13, align 4
  %366 = add nsw i32 %365, 7
  %367 = sdiv i32 %366, 8
  %368 = call i32 @bzero(%struct.ubsec_q2_rsapriv* %364, i32 %367)
  %369 = call i8* @htole16(i32 1)
  %370 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %9, align 8
  %371 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %370, i32 0, i32 6
  store i8* %369, i8** %371, align 8
  %372 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %9, align 8
  %373 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %372, i32 0, i32 5
  store i64 0, i64* %373, align 8
  %374 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %8, align 8
  %375 = getelementptr inbounds %struct.ubsec_q2_rsapriv, %struct.ubsec_q2_rsapriv* %374, i32 0, i32 3
  %376 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %375, i32 0, i32 2
  %377 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = call i8* @htole32(i32 %378)
  %380 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %9, align 8
  %381 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %380, i32 0, i32 4
  store i8* %379, i8** %381, align 8
  %382 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %8, align 8
  %383 = getelementptr inbounds %struct.ubsec_q2_rsapriv, %struct.ubsec_q2_rsapriv* %382, i32 0, i32 2
  %384 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = call i8* @htole32(i32 %385)
  %387 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %9, align 8
  %388 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %387, i32 0, i32 3
  %389 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %388, i32 0, i32 2
  store i8* %386, i8** %389, align 8
  %390 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %9, align 8
  %391 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %390, i32 0, i32 3
  %392 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %391, i32 0, i32 1
  store i64 0, i64* %392, align 8
  %393 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %8, align 8
  %394 = getelementptr inbounds %struct.ubsec_q2_rsapriv, %struct.ubsec_q2_rsapriv* %393, i32 0, i32 2
  %395 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %394, i32 0, i32 1
  %396 = load i32, i32* %395, align 4
  %397 = call i8* @htole32(i32 %396)
  %398 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %9, align 8
  %399 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %398, i32 0, i32 3
  %400 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %399, i32 0, i32 0
  store i8* %397, i8** %400, align 8
  %401 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %9, align 8
  %402 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %401, i32 0, i32 2
  store i64 0, i64* %402, align 8
  %403 = load i32, i32* %13, align 4
  %404 = call i8* @htole16(i32 %403)
  %405 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %9, align 8
  %406 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %405, i32 0, i32 1
  store i8* %404, i8** %406, align 8
  %407 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %8, align 8
  %408 = getelementptr inbounds %struct.ubsec_q2_rsapriv, %struct.ubsec_q2_rsapriv* %407, i32 0, i32 1
  %409 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = call i8* @htole32(i32 %410)
  %412 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %9, align 8
  %413 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %413, i32 0, i32 2
  store i8* %411, i8** %414, align 8
  %415 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %9, align 8
  %416 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %415, i32 0, i32 0
  %417 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %416, i32 0, i32 1
  store i64 0, i64* %417, align 8
  %418 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %8, align 8
  %419 = getelementptr inbounds %struct.ubsec_q2_rsapriv, %struct.ubsec_q2_rsapriv* %418, i32 0, i32 1
  %420 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 4
  %422 = call i8* @htole32(i32 %421)
  %423 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %9, align 8
  %424 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %423, i32 0, i32 0
  %425 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %424, i32 0, i32 0
  store i8* %422, i8** %425, align 8
  %426 = load i32, i32* %12, align 4
  %427 = sdiv i32 %426, 8
  %428 = mul nsw i32 5, %427
  %429 = sext i32 %428 to i64
  %430 = add i64 16, %429
  %431 = trunc i64 %430 to i32
  %432 = load %struct.ubsec_ctx_rsapriv*, %struct.ubsec_ctx_rsapriv** %10, align 8
  %433 = getelementptr inbounds %struct.ubsec_ctx_rsapriv, %struct.ubsec_ctx_rsapriv* %432, i32 0, i32 0
  store i32 %431, i32* %433, align 8
  %434 = load i32, i32* @UBS_CTXOP_RSAPRIV, align 4
  %435 = call i8* @htole16(i32 %434)
  %436 = load %struct.ubsec_ctx_rsapriv*, %struct.ubsec_ctx_rsapriv** %10, align 8
  %437 = getelementptr inbounds %struct.ubsec_ctx_rsapriv, %struct.ubsec_ctx_rsapriv* %436, i32 0, i32 6
  store i8* %435, i8** %437, align 8
  %438 = load i32, i32* %12, align 4
  %439 = call i8* @htole16(i32 %438)
  %440 = load %struct.ubsec_ctx_rsapriv*, %struct.ubsec_ctx_rsapriv** %10, align 8
  %441 = getelementptr inbounds %struct.ubsec_ctx_rsapriv, %struct.ubsec_ctx_rsapriv* %440, i32 0, i32 5
  store i8* %439, i8** %441, align 8
  %442 = load i32, i32* %12, align 4
  %443 = call i8* @htole16(i32 %442)
  %444 = load %struct.ubsec_ctx_rsapriv*, %struct.ubsec_ctx_rsapriv** %10, align 8
  %445 = getelementptr inbounds %struct.ubsec_ctx_rsapriv, %struct.ubsec_ctx_rsapriv* %444, i32 0, i32 4
  store i8* %443, i8** %445, align 8
  %446 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %8, align 8
  %447 = getelementptr inbounds %struct.ubsec_q2_rsapriv, %struct.ubsec_q2_rsapriv* %446, i32 0, i32 2
  %448 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %449 = call i32 @ubsec_dma_sync(%struct.TYPE_13__* %447, i32 %448)
  %450 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %8, align 8
  %451 = getelementptr inbounds %struct.ubsec_q2_rsapriv, %struct.ubsec_q2_rsapriv* %450, i32 0, i32 1
  %452 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %453 = call i32 @ubsec_dma_sync(%struct.TYPE_13__* %451, i32 %452)
  %454 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %455 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %454, i32 0, i32 1
  %456 = call i32 @mtx_lock(i32* %455)
  %457 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %458 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %457, i32 0, i32 2
  %459 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %8, align 8
  %460 = getelementptr inbounds %struct.ubsec_q2_rsapriv, %struct.ubsec_q2_rsapriv* %459, i32 0, i32 3
  %461 = load i32, i32* @q_next, align 4
  %462 = call i32 @SIMPLEQ_INSERT_TAIL(i32* %458, %struct.TYPE_14__* %460, i32 %461)
  %463 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %464 = call i32 @ubsec_feed2(%struct.ubsec_softc* %463)
  %465 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ubsecstats, i32 0, i32 0), align 4
  %466 = add nsw i32 %465, 1
  store i32 %466, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ubsecstats, i32 0, i32 0), align 4
  %467 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %468 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %467, i32 0, i32 1
  %469 = call i32 @mtx_unlock(i32* %468)
  store i32 0, i32* %4, align 4
  br label %536

470:                                              ; preds = %358, %347, %307, %296, %144, %129, %102, %91, %80, %65
  %471 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %8, align 8
  %472 = icmp ne %struct.ubsec_q2_rsapriv* %471, null
  br i1 %472, label %473, label %530

473:                                              ; preds = %470
  %474 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %8, align 8
  %475 = getelementptr inbounds %struct.ubsec_q2_rsapriv, %struct.ubsec_q2_rsapriv* %474, i32 0, i32 3
  %476 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %475, i32 0, i32 1
  %477 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %476, i32 0, i32 3
  %478 = load i32*, i32** %477, align 8
  %479 = icmp ne i32* %478, null
  br i1 %479, label %480, label %486

480:                                              ; preds = %473
  %481 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %482 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %8, align 8
  %483 = getelementptr inbounds %struct.ubsec_q2_rsapriv, %struct.ubsec_q2_rsapriv* %482, i32 0, i32 3
  %484 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %483, i32 0, i32 1
  %485 = call i32 @ubsec_dma_free(%struct.ubsec_softc* %481, %struct.TYPE_13__* %484)
  br label %486

486:                                              ; preds = %480, %473
  %487 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %8, align 8
  %488 = getelementptr inbounds %struct.ubsec_q2_rsapriv, %struct.ubsec_q2_rsapriv* %487, i32 0, i32 2
  %489 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %488, i32 0, i32 3
  %490 = load i32*, i32** %489, align 8
  %491 = icmp ne i32* %490, null
  br i1 %491, label %492, label %506

492:                                              ; preds = %486
  %493 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %8, align 8
  %494 = getelementptr inbounds %struct.ubsec_q2_rsapriv, %struct.ubsec_q2_rsapriv* %493, i32 0, i32 2
  %495 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %494, i32 0, i32 2
  %496 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %495, align 8
  %497 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %8, align 8
  %498 = getelementptr inbounds %struct.ubsec_q2_rsapriv, %struct.ubsec_q2_rsapriv* %497, i32 0, i32 2
  %499 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %498, i32 0, i32 1
  %500 = load i32, i32* %499, align 4
  %501 = call i32 @bzero(%struct.ubsec_q2_rsapriv* %496, i32 %500)
  %502 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %503 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %8, align 8
  %504 = getelementptr inbounds %struct.ubsec_q2_rsapriv, %struct.ubsec_q2_rsapriv* %503, i32 0, i32 2
  %505 = call i32 @ubsec_dma_free(%struct.ubsec_softc* %502, %struct.TYPE_13__* %504)
  br label %506

506:                                              ; preds = %492, %486
  %507 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %8, align 8
  %508 = getelementptr inbounds %struct.ubsec_q2_rsapriv, %struct.ubsec_q2_rsapriv* %507, i32 0, i32 1
  %509 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %508, i32 0, i32 3
  %510 = load i32*, i32** %509, align 8
  %511 = icmp ne i32* %510, null
  br i1 %511, label %512, label %526

512:                                              ; preds = %506
  %513 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %8, align 8
  %514 = getelementptr inbounds %struct.ubsec_q2_rsapriv, %struct.ubsec_q2_rsapriv* %513, i32 0, i32 1
  %515 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %514, i32 0, i32 2
  %516 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %515, align 8
  %517 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %8, align 8
  %518 = getelementptr inbounds %struct.ubsec_q2_rsapriv, %struct.ubsec_q2_rsapriv* %517, i32 0, i32 1
  %519 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %518, i32 0, i32 1
  %520 = load i32, i32* %519, align 4
  %521 = call i32 @bzero(%struct.ubsec_q2_rsapriv* %516, i32 %520)
  %522 = load %struct.ubsec_softc*, %struct.ubsec_softc** %5, align 8
  %523 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %8, align 8
  %524 = getelementptr inbounds %struct.ubsec_q2_rsapriv, %struct.ubsec_q2_rsapriv* %523, i32 0, i32 1
  %525 = call i32 @ubsec_dma_free(%struct.ubsec_softc* %522, %struct.TYPE_13__* %524)
  br label %526

526:                                              ; preds = %512, %506
  %527 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %8, align 8
  %528 = load i32, i32* @M_DEVBUF, align 4
  %529 = call i32 @free(%struct.ubsec_q2_rsapriv* %527, i32 %528)
  br label %530

530:                                              ; preds = %526, %470
  %531 = load i32, i32* %11, align 4
  %532 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %533 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %532, i32 0, i32 0
  store i32 %531, i32* %533, align 8
  %534 = load %struct.cryptkop*, %struct.cryptkop** %6, align 8
  %535 = call i32 @crypto_kdone(%struct.cryptkop* %534)
  store i32 0, i32* %4, align 4
  br label %536

536:                                              ; preds = %530, %360, %111
  %537 = load i32, i32* %4, align 4
  ret i32 %537
}

declare dso_local i32 @ubsec_ksigbits(%struct.TYPE_12__*) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @bzero(%struct.ubsec_q2_rsapriv*, i32) #1

declare dso_local i64 @ubsec_dma_malloc(%struct.ubsec_softc*, i32, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @bcopy(i32, %struct.ubsec_q2_rsapriv*, i32) #1

declare dso_local i8* @htole16(i32) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @ubsec_dma_sync(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @SIMPLEQ_INSERT_TAIL(i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @ubsec_feed2(%struct.ubsec_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ubsec_dma_free(%struct.ubsec_softc*, %struct.TYPE_13__*) #1

declare dso_local i32 @free(%struct.ubsec_q2_rsapriv*, i32) #1

declare dso_local i32 @crypto_kdone(%struct.cryptkop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
