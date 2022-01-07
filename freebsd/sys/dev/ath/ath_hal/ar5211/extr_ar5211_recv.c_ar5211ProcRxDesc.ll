; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5211/extr_ar5211_recv.c_ar5211ProcRxDesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5211/extr_ar5211_recv.c_ar5211ProcRxDesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_desc = type { i32 }
%struct.ath_rx_status = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i32, i8* }
%struct.ar5211_desc = type { i32, i32 }

@AR_Done = common dso_local global i32 0, align 4
@HAL_EINPROGRESS = common dso_local global i32 0, align 4
@AR_RXDP = common dso_local global i32 0, align 4
@AR_DataLen = common dso_local global i32 0, align 4
@AR_RcvTimestamp = common dso_local global i32 0, align 4
@AR_FrmRcvOK = common dso_local global i32 0, align 4
@AR_CRCErr = common dso_local global i32 0, align 4
@HAL_RXERR_CRC = common dso_local global i32 0, align 4
@AR_DecryptCRCErr = common dso_local global i32 0, align 4
@HAL_RXERR_DECRYPT = common dso_local global i32 0, align 4
@HAL_RXERR_PHY = common dso_local global i32 0, align 4
@AR_PHYErr = common dso_local global i32 0, align 4
@AR_RcvSigStrength = common dso_local global i32 0, align 4
@AR_KeyIdxValid = common dso_local global i32 0, align 4
@AR_KeyIdx = common dso_local global i32 0, align 4
@HAL_RXKEYIX_INVALID = common dso_local global i8* null, align 8
@AR_RcvRate = common dso_local global i32 0, align 4
@AR_RcvAntenna = common dso_local global i32 0, align 4
@AR_More = common dso_local global i32 0, align 4
@HAL_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5211ProcRxDesc(%struct.ath_hal* %0, %struct.ath_desc* %1, i64 %2, %struct.ath_desc* %3, i32 %4, %struct.ath_rx_status* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath_hal*, align 8
  %9 = alloca %struct.ath_desc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ath_desc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ath_rx_status*, align 8
  %14 = alloca %struct.ar5211_desc*, align 8
  %15 = alloca %struct.ar5211_desc*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %8, align 8
  store %struct.ath_desc* %1, %struct.ath_desc** %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.ath_desc* %3, %struct.ath_desc** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.ath_rx_status* %5, %struct.ath_rx_status** %13, align 8
  %16 = load %struct.ath_desc*, %struct.ath_desc** %9, align 8
  %17 = call %struct.ar5211_desc* @AR5211DESC(%struct.ath_desc* %16)
  store %struct.ar5211_desc* %17, %struct.ar5211_desc** %14, align 8
  %18 = load %struct.ath_desc*, %struct.ath_desc** %11, align 8
  %19 = call %struct.ar5211_desc* @AR5211DESC(%struct.ath_desc* %18)
  store %struct.ar5211_desc* %19, %struct.ar5211_desc** %15, align 8
  %20 = load %struct.ar5211_desc*, %struct.ar5211_desc** %14, align 8
  %21 = getelementptr inbounds %struct.ar5211_desc, %struct.ar5211_desc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @AR_Done, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load i32, i32* @HAL_EINPROGRESS, align 4
  store i32 %27, i32* %7, align 4
  br label %159

28:                                               ; preds = %6
  %29 = load %struct.ar5211_desc*, %struct.ar5211_desc** %15, align 8
  %30 = getelementptr inbounds %struct.ar5211_desc, %struct.ar5211_desc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @AR_Done, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load %struct.ath_hal*, %struct.ath_hal** %8, align 8
  %37 = load i32, i32* @AR_RXDP, align 4
  %38 = call i64 @OS_REG_READ(%struct.ath_hal* %36, i32 %37)
  %39 = load i64, i64* %10, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @HAL_EINPROGRESS, align 4
  store i32 %42, i32* %7, align 4
  br label %159

43:                                               ; preds = %35, %28
  %44 = load %struct.ar5211_desc*, %struct.ar5211_desc** %14, align 8
  %45 = getelementptr inbounds %struct.ar5211_desc, %struct.ar5211_desc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @AR_DataLen, align 4
  %48 = and i32 %46, %47
  %49 = load %struct.ath_rx_status*, %struct.ath_rx_status** %13, align 8
  %50 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.ar5211_desc*, %struct.ar5211_desc** %14, align 8
  %52 = getelementptr inbounds %struct.ar5211_desc, %struct.ar5211_desc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @AR_RcvTimestamp, align 4
  %55 = call i8* @MS(i32 %53, i32 %54)
  %56 = load %struct.ath_rx_status*, %struct.ath_rx_status** %13, align 8
  %57 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %56, i32 0, i32 8
  store i8* %55, i8** %57, align 8
  %58 = load %struct.ath_rx_status*, %struct.ath_rx_status** %13, align 8
  %59 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %58, i32 0, i32 7
  store i32 0, i32* %59, align 8
  %60 = load %struct.ar5211_desc*, %struct.ar5211_desc** %14, align 8
  %61 = getelementptr inbounds %struct.ar5211_desc, %struct.ar5211_desc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @AR_FrmRcvOK, align 4
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %107

66:                                               ; preds = %43
  %67 = load %struct.ar5211_desc*, %struct.ar5211_desc** %14, align 8
  %68 = getelementptr inbounds %struct.ar5211_desc, %struct.ar5211_desc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @AR_CRCErr, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %66
  %74 = load i32, i32* @HAL_RXERR_CRC, align 4
  %75 = load %struct.ath_rx_status*, %struct.ath_rx_status** %13, align 8
  %76 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %106

79:                                               ; preds = %66
  %80 = load %struct.ar5211_desc*, %struct.ar5211_desc** %14, align 8
  %81 = getelementptr inbounds %struct.ar5211_desc, %struct.ar5211_desc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @AR_DecryptCRCErr, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %79
  %87 = load i32, i32* @HAL_RXERR_DECRYPT, align 4
  %88 = load %struct.ath_rx_status*, %struct.ath_rx_status** %13, align 8
  %89 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %88, i32 0, i32 7
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  br label %105

92:                                               ; preds = %79
  %93 = load i32, i32* @HAL_RXERR_PHY, align 4
  %94 = load %struct.ath_rx_status*, %struct.ath_rx_status** %13, align 8
  %95 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %94, i32 0, i32 7
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load %struct.ar5211_desc*, %struct.ar5211_desc** %14, align 8
  %99 = getelementptr inbounds %struct.ar5211_desc, %struct.ar5211_desc* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @AR_PHYErr, align 4
  %102 = call i8* @MS(i32 %100, i32 %101)
  %103 = load %struct.ath_rx_status*, %struct.ath_rx_status** %13, align 8
  %104 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %103, i32 0, i32 6
  store i8* %102, i8** %104, align 8
  br label %105

105:                                              ; preds = %92, %86
  br label %106

106:                                              ; preds = %105, %73
  br label %107

107:                                              ; preds = %106, %43
  %108 = load %struct.ar5211_desc*, %struct.ar5211_desc** %14, align 8
  %109 = getelementptr inbounds %struct.ar5211_desc, %struct.ar5211_desc* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @AR_RcvSigStrength, align 4
  %112 = call i8* @MS(i32 %110, i32 %111)
  %113 = load %struct.ath_rx_status*, %struct.ath_rx_status** %13, align 8
  %114 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %113, i32 0, i32 5
  store i8* %112, i8** %114, align 8
  %115 = load %struct.ar5211_desc*, %struct.ar5211_desc** %14, align 8
  %116 = getelementptr inbounds %struct.ar5211_desc, %struct.ar5211_desc* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @AR_KeyIdxValid, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %107
  %122 = load %struct.ar5211_desc*, %struct.ar5211_desc** %14, align 8
  %123 = getelementptr inbounds %struct.ar5211_desc, %struct.ar5211_desc* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @AR_KeyIdx, align 4
  %126 = call i8* @MS(i32 %124, i32 %125)
  %127 = load %struct.ath_rx_status*, %struct.ath_rx_status** %13, align 8
  %128 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %127, i32 0, i32 4
  store i8* %126, i8** %128, align 8
  br label %133

129:                                              ; preds = %107
  %130 = load i8*, i8** @HAL_RXKEYIX_INVALID, align 8
  %131 = load %struct.ath_rx_status*, %struct.ath_rx_status** %13, align 8
  %132 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %131, i32 0, i32 4
  store i8* %130, i8** %132, align 8
  br label %133

133:                                              ; preds = %129, %121
  %134 = load %struct.ar5211_desc*, %struct.ar5211_desc** %14, align 8
  %135 = getelementptr inbounds %struct.ar5211_desc, %struct.ar5211_desc* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @AR_RcvRate, align 4
  %138 = call i8* @MS(i32 %136, i32 %137)
  %139 = load %struct.ath_rx_status*, %struct.ath_rx_status** %13, align 8
  %140 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %139, i32 0, i32 3
  store i8* %138, i8** %140, align 8
  %141 = load %struct.ar5211_desc*, %struct.ar5211_desc** %14, align 8
  %142 = getelementptr inbounds %struct.ar5211_desc, %struct.ar5211_desc* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @AR_RcvAntenna, align 4
  %145 = call i8* @MS(i32 %143, i32 %144)
  %146 = load %struct.ath_rx_status*, %struct.ath_rx_status** %13, align 8
  %147 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %146, i32 0, i32 2
  store i8* %145, i8** %147, align 8
  %148 = load %struct.ar5211_desc*, %struct.ar5211_desc** %14, align 8
  %149 = getelementptr inbounds %struct.ar5211_desc, %struct.ar5211_desc* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @AR_More, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i32 1, i32 0
  %156 = load %struct.ath_rx_status*, %struct.ath_rx_status** %13, align 8
  %157 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 4
  %158 = load i32, i32* @HAL_OK, align 4
  store i32 %158, i32* %7, align 4
  br label %159

159:                                              ; preds = %133, %41, %26
  %160 = load i32, i32* %7, align 4
  ret i32 %160
}

declare dso_local %struct.ar5211_desc* @AR5211DESC(%struct.ath_desc*) #1

declare dso_local i64 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i8* @MS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
