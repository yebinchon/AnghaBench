; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5211/extr_ar5211_xmit.c_ar5211SetupTxDesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5211/extr_ar5211_xmit.c_ar5211SetupTxDesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_desc = type { i32 }
%struct.ar5211_desc = type { i32, i64 }

@AR_FrameLen = common dso_local global i64 0, align 8
@AR_XmitRate_S = common dso_local global i64 0, align 8
@AR_AntModeXmit_S = common dso_local global i64 0, align 8
@HAL_TXDESC_CLRDMASK = common dso_local global i64 0, align 8
@AR_ClearDestMask = common dso_local global i64 0, align 8
@HAL_TXDESC_INTREQ = common dso_local global i64 0, align 8
@AR_TxInterReq = common dso_local global i64 0, align 8
@HAL_TXDESC_RTSENA = common dso_local global i64 0, align 8
@AR_RTSCTSEnable = common dso_local global i64 0, align 8
@HAL_TXDESC_VEOL = common dso_local global i64 0, align 8
@AR_VEOL = common dso_local global i64 0, align 8
@HAL_TXDESC_NOACK = common dso_local global i64 0, align 8
@AR_NoAck = common dso_local global i32 0, align 4
@HAL_TXKEYIX_INVALID = common dso_local global i64 0, align 8
@AR_EncryptKeyIdx_S = common dso_local global i64 0, align 8
@AR_EncryptKeyIdx = common dso_local global i64 0, align 8
@AR_EncryptKeyValid = common dso_local global i64 0, align 8
@AH_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5211SetupTxDesc(%struct.ath_hal* %0, %struct.ath_desc* %1, i64 %2, i64 %3, i32 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11, i64 %12, i64 %13, i64 %14, i64 %15) #0 {
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
  %33 = alloca %struct.ar5211_desc*, align 8
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
  %34 = load %struct.ath_desc*, %struct.ath_desc** %18, align 8
  %35 = call %struct.ar5211_desc* @AR5211DESC(%struct.ath_desc* %34)
  store %struct.ar5211_desc* %35, %struct.ar5211_desc** %33, align 8
  %36 = load i64, i64* %20, align 8
  %37 = load i64, i64* %22, align 8
  %38 = load i64, i64* %28, align 8
  %39 = load i64, i64* %29, align 8
  %40 = load i64, i64* %24, align 8
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @HALASSERT(i32 %42)
  %44 = load i32, i32* %21, align 4
  %45 = call i32 @isValidPktType(i32 %44)
  %46 = call i32 @HALASSERT(i32 %45)
  %47 = load i64, i64* %23, align 8
  %48 = call i32 @isValidTxRate(i64 %47)
  %49 = call i32 @HALASSERT(i32 %48)
  %50 = load i64, i64* %19, align 8
  %51 = load i64, i64* @AR_FrameLen, align 8
  %52 = and i64 %50, %51
  %53 = load i64, i64* %23, align 8
  %54 = load i64, i64* @AR_XmitRate_S, align 8
  %55 = shl i64 %53, %54
  %56 = or i64 %52, %55
  %57 = load i64, i64* %26, align 8
  %58 = load i64, i64* @AR_AntModeXmit_S, align 8
  %59 = shl i64 %57, %58
  %60 = or i64 %56, %59
  %61 = load i64, i64* %27, align 8
  %62 = load i64, i64* @HAL_TXDESC_CLRDMASK, align 8
  %63 = and i64 %61, %62
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %16
  %66 = load i64, i64* @AR_ClearDestMask, align 8
  br label %68

67:                                               ; preds = %16
  br label %68

68:                                               ; preds = %67, %65
  %69 = phi i64 [ %66, %65 ], [ 0, %67 ]
  %70 = or i64 %60, %69
  %71 = load i64, i64* %27, align 8
  %72 = load i64, i64* @HAL_TXDESC_INTREQ, align 8
  %73 = and i64 %71, %72
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i64, i64* @AR_TxInterReq, align 8
  br label %78

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %77, %75
  %79 = phi i64 [ %76, %75 ], [ 0, %77 ]
  %80 = or i64 %70, %79
  %81 = load i64, i64* %27, align 8
  %82 = load i64, i64* @HAL_TXDESC_RTSENA, align 8
  %83 = and i64 %81, %82
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i64, i64* @AR_RTSCTSEnable, align 8
  br label %88

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %87, %85
  %89 = phi i64 [ %86, %85 ], [ 0, %87 ]
  %90 = or i64 %80, %89
  %91 = load i64, i64* %27, align 8
  %92 = load i64, i64* @HAL_TXDESC_VEOL, align 8
  %93 = and i64 %91, %92
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = load i64, i64* @AR_VEOL, align 8
  br label %98

97:                                               ; preds = %88
  br label %98

98:                                               ; preds = %97, %95
  %99 = phi i64 [ %96, %95 ], [ 0, %97 ]
  %100 = or i64 %90, %99
  %101 = load %struct.ar5211_desc*, %struct.ar5211_desc** %33, align 8
  %102 = getelementptr inbounds %struct.ar5211_desc, %struct.ar5211_desc* %101, i32 0, i32 1
  store i64 %100, i64* %102, align 8
  %103 = load i32, i32* %21, align 4
  %104 = shl i32 %103, 26
  %105 = load i64, i64* %27, align 8
  %106 = load i64, i64* @HAL_TXDESC_NOACK, align 8
  %107 = and i64 %105, %106
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %98
  %110 = load i32, i32* @AR_NoAck, align 4
  br label %112

111:                                              ; preds = %98
  br label %112

112:                                              ; preds = %111, %109
  %113 = phi i32 [ %110, %109 ], [ 0, %111 ]
  %114 = or i32 %104, %113
  %115 = load %struct.ar5211_desc*, %struct.ar5211_desc** %33, align 8
  %116 = getelementptr inbounds %struct.ar5211_desc, %struct.ar5211_desc* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load i64, i64* %25, align 8
  %118 = load i64, i64* @HAL_TXKEYIX_INVALID, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %137

120:                                              ; preds = %112
  %121 = load i64, i64* %25, align 8
  %122 = load i64, i64* @AR_EncryptKeyIdx_S, align 8
  %123 = shl i64 %121, %122
  %124 = load i64, i64* @AR_EncryptKeyIdx, align 8
  %125 = and i64 %123, %124
  %126 = load %struct.ar5211_desc*, %struct.ar5211_desc** %33, align 8
  %127 = getelementptr inbounds %struct.ar5211_desc, %struct.ar5211_desc* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = or i64 %129, %125
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %127, align 8
  %132 = load i64, i64* @AR_EncryptKeyValid, align 8
  %133 = load %struct.ar5211_desc*, %struct.ar5211_desc** %33, align 8
  %134 = getelementptr inbounds %struct.ar5211_desc, %struct.ar5211_desc* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = or i64 %135, %132
  store i64 %136, i64* %134, align 8
  br label %137

137:                                              ; preds = %120, %112
  %138 = load i32, i32* @AH_TRUE, align 4
  ret i32 %138
}

declare dso_local %struct.ar5211_desc* @AR5211DESC(%struct.ath_desc*) #1

declare dso_local i32 @HALASSERT(i32) #1

declare dso_local i32 @isValidPktType(i32) #1

declare dso_local i32 @isValidTxRate(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
