; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5210/extr_ar5210_xmit.c_ar5210SetupTxDesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5210/extr_ar5210_xmit.c_ar5210SetupTxDesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_desc = type { i32 }
%struct.ar5210_desc = type { i64, i64 }

@HAL_PKT_TYPE_BEACON = common dso_local global i32 0, align 4
@HAL_PKT_TYPE_PROBE_RESP = common dso_local global i32 0, align 4
@AR_Frm_NoDelay = common dso_local global i64 0, align 8
@AR_FrameLen = common dso_local global i64 0, align 8
@AR_XmitRate_S = common dso_local global i64 0, align 8
@AR_HdrLen_S = common dso_local global i64 0, align 8
@AR_HdrLen = common dso_local global i64 0, align 8
@HAL_TXDESC_CLRDMASK = common dso_local global i64 0, align 8
@AR_ClearDestMask = common dso_local global i64 0, align 8
@HAL_TXDESC_INTREQ = common dso_local global i64 0, align 8
@AR_TxInterReq = common dso_local global i64 0, align 8
@AR_AntModeXmit = common dso_local global i64 0, align 8
@HAL_TXKEYIX_INVALID = common dso_local global i64 0, align 8
@AR_EncryptKeyIdx_S = common dso_local global i64 0, align 8
@AR_EncryptKeyIdx = common dso_local global i64 0, align 8
@AR_EncryptKeyValid = common dso_local global i64 0, align 8
@HAL_TXDESC_RTSENA = common dso_local global i64 0, align 8
@AR_RTSCTSEnable = common dso_local global i64 0, align 8
@AR_RTSDuration_S = common dso_local global i64 0, align 8
@AR_RTSDuration = common dso_local global i64 0, align 8
@AH_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5210SetupTxDesc(%struct.ath_hal* %0, %struct.ath_desc* %1, i64 %2, i64 %3, i32 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11, i64 %12, i64 %13, i64 %14, i64 %15) #0 {
  %17 = alloca %struct.ath_hal*, align 8
  %18 = alloca %struct.ath_desc*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca %struct.ar5210_desc*, align 8
  %34 = alloca i64, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %17, align 8
  store %struct.ath_desc* %1, %struct.ath_desc** %18, align 8
  store i64 %2, i64* %19, align 8
  store i64 %3, i64* %20, align 8
  store i32 %4, i32* %21, align 4
  store i64 %5, i64* %22, align 8
  store i64 %6, i64* %23, align 8
  store i64 %7, i64* %24, align 8
  store i64 %8, i64* %25, align 8
  store i64 %9, i64* %26, align 8
  store i64 %10, i64* %27, align 8
  store i64 %11, i64* %28, align 8
  store i64 %12, i64* %29, align 8
  store i64 %13, i64* %30, align 8
  store i64 %14, i64* %31, align 8
  store i64 %15, i64* %32, align 8
  %35 = load %struct.ath_desc*, %struct.ath_desc** %18, align 8
  %36 = call %struct.ar5210_desc* @AR5210DESC(%struct.ath_desc* %35)
  store %struct.ar5210_desc* %36, %struct.ar5210_desc** %33, align 8
  %37 = load i64, i64* %22, align 8
  %38 = load i64, i64* %29, align 8
  %39 = load i64, i64* %24, align 8
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @HALASSERT(i32 %41)
  %43 = load i32, i32* %21, align 4
  %44 = call i32 @isValidPktType(i32 %43)
  %45 = call i32 @HALASSERT(i32 %44)
  %46 = load i64, i64* %23, align 8
  %47 = call i32 @isValidTxRate(i64 %46)
  %48 = call i32 @HALASSERT(i32 %47)
  %49 = load i32, i32* %21, align 4
  %50 = load i32, i32* @HAL_PKT_TYPE_BEACON, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %16
  %53 = load i32, i32* %21, align 4
  %54 = load i32, i32* @HAL_PKT_TYPE_PROBE_RESP, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52, %16
  %57 = load i64, i64* @AR_Frm_NoDelay, align 8
  store i64 %57, i64* %34, align 8
  br label %62

58:                                               ; preds = %52
  %59 = load i32, i32* %21, align 4
  %60 = shl i32 %59, 26
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %34, align 8
  br label %62

62:                                               ; preds = %58, %56
  %63 = load i64, i64* %19, align 8
  %64 = load i64, i64* @AR_FrameLen, align 8
  %65 = and i64 %63, %64
  %66 = load i64, i64* %23, align 8
  %67 = load i64, i64* @AR_XmitRate_S, align 8
  %68 = shl i64 %66, %67
  %69 = or i64 %65, %68
  %70 = load i64, i64* %20, align 8
  %71 = load i64, i64* @AR_HdrLen_S, align 8
  %72 = shl i64 %70, %71
  %73 = load i64, i64* @AR_HdrLen, align 8
  %74 = and i64 %72, %73
  %75 = or i64 %69, %74
  %76 = load i64, i64* %34, align 8
  %77 = or i64 %75, %76
  %78 = load i64, i64* %27, align 8
  %79 = load i64, i64* @HAL_TXDESC_CLRDMASK, align 8
  %80 = and i64 %78, %79
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %62
  %83 = load i64, i64* @AR_ClearDestMask, align 8
  br label %85

84:                                               ; preds = %62
  br label %85

85:                                               ; preds = %84, %82
  %86 = phi i64 [ %83, %82 ], [ 0, %84 ]
  %87 = or i64 %77, %86
  %88 = load i64, i64* %27, align 8
  %89 = load i64, i64* @HAL_TXDESC_INTREQ, align 8
  %90 = and i64 %88, %89
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i64, i64* @AR_TxInterReq, align 8
  br label %95

94:                                               ; preds = %85
  br label %95

95:                                               ; preds = %94, %92
  %96 = phi i64 [ %93, %92 ], [ 0, %94 ]
  %97 = or i64 %87, %96
  %98 = load i64, i64* %26, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i64, i64* @AR_AntModeXmit, align 8
  br label %103

102:                                              ; preds = %95
  br label %103

103:                                              ; preds = %102, %100
  %104 = phi i64 [ %101, %100 ], [ 0, %102 ]
  %105 = or i64 %97, %104
  %106 = load %struct.ar5210_desc*, %struct.ar5210_desc** %33, align 8
  %107 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %106, i32 0, i32 1
  store i64 %105, i64* %107, align 8
  %108 = load i64, i64* %25, align 8
  %109 = load i64, i64* @HAL_TXKEYIX_INVALID, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %124

111:                                              ; preds = %103
  %112 = load i64, i64* %25, align 8
  %113 = load i64, i64* @AR_EncryptKeyIdx_S, align 8
  %114 = shl i64 %112, %113
  %115 = load i64, i64* @AR_EncryptKeyIdx, align 8
  %116 = and i64 %114, %115
  %117 = load %struct.ar5210_desc*, %struct.ar5210_desc** %33, align 8
  %118 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  %119 = load i64, i64* @AR_EncryptKeyValid, align 8
  %120 = load %struct.ar5210_desc*, %struct.ar5210_desc** %33, align 8
  %121 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = or i64 %122, %119
  store i64 %123, i64* %121, align 8
  br label %127

124:                                              ; preds = %103
  %125 = load %struct.ar5210_desc*, %struct.ar5210_desc** %33, align 8
  %126 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %125, i32 0, i32 0
  store i64 0, i64* %126, align 8
  br label %127

127:                                              ; preds = %124, %111
  %128 = load i64, i64* %27, align 8
  %129 = load i64, i64* @HAL_TXDESC_RTSENA, align 8
  %130 = and i64 %128, %129
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %147

132:                                              ; preds = %127
  %133 = load i64, i64* @AR_RTSCTSEnable, align 8
  %134 = load %struct.ar5210_desc*, %struct.ar5210_desc** %33, align 8
  %135 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = or i64 %136, %133
  store i64 %137, i64* %135, align 8
  %138 = load i64, i64* %29, align 8
  %139 = load i64, i64* @AR_RTSDuration_S, align 8
  %140 = shl i64 %138, %139
  %141 = load i64, i64* @AR_RTSDuration, align 8
  %142 = and i64 %140, %141
  %143 = load %struct.ar5210_desc*, %struct.ar5210_desc** %33, align 8
  %144 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = or i64 %145, %142
  store i64 %146, i64* %144, align 8
  br label %147

147:                                              ; preds = %132, %127
  %148 = load i32, i32* @AH_TRUE, align 4
  ret i32 %148
}

declare dso_local %struct.ar5210_desc* @AR5210DESC(%struct.ath_desc*) #1

declare dso_local i32 @HALASSERT(i32) #1

declare dso_local i32 @isValidPktType(i32) #1

declare dso_local i32 @isValidTxRate(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
