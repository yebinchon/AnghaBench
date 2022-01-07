; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5210/extr_ar5210_xmit.c_ar5210ProcTxDesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5210/extr_ar5210_xmit.c_ar5210ProcTxDesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_desc = type { i32 }
%struct.ath_tx_status = type { i32, i64, i64, i8*, i8*, i8*, i8*, i32, i8* }
%struct.ar5210_desc = type { i32, i32, i32 }

@AR_Done = common dso_local global i32 0, align 4
@HAL_EINPROGRESS = common dso_local global i32 0, align 4
@AR_SeqNum = common dso_local global i32 0, align 4
@AR_SendTimestamp = common dso_local global i32 0, align 4
@AR_FrmXmitOK = common dso_local global i32 0, align 4
@AR_ExcessiveRetries = common dso_local global i32 0, align 4
@HAL_TXERR_XRETRY = common dso_local global i32 0, align 4
@AR_Filtered = common dso_local global i32 0, align 4
@HAL_TXERR_FILT = common dso_local global i32 0, align 4
@AR_FIFOUnderrun = common dso_local global i32 0, align 4
@HAL_TXERR_FIFO = common dso_local global i32 0, align 4
@AR_XmitRate = common dso_local global i32 0, align 4
@AR_AckSigStrength = common dso_local global i32 0, align 4
@AR_ShortRetryCnt = common dso_local global i32 0, align 4
@AR_LongRetryCnt = common dso_local global i32 0, align 4
@HAL_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5210ProcTxDesc(%struct.ath_hal* %0, %struct.ath_desc* %1, %struct.ath_tx_status* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hal*, align 8
  %6 = alloca %struct.ath_desc*, align 8
  %7 = alloca %struct.ath_tx_status*, align 8
  %8 = alloca %struct.ar5210_desc*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %5, align 8
  store %struct.ath_desc* %1, %struct.ath_desc** %6, align 8
  store %struct.ath_tx_status* %2, %struct.ath_tx_status** %7, align 8
  %9 = load %struct.ath_desc*, %struct.ath_desc** %6, align 8
  %10 = call %struct.ar5210_desc* @AR5210DESC(%struct.ath_desc* %9)
  store %struct.ar5210_desc* %10, %struct.ar5210_desc** %8, align 8
  %11 = load %struct.ar5210_desc*, %struct.ar5210_desc** %8, align 8
  %12 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @AR_Done, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @HAL_EINPROGRESS, align 4
  store i32 %18, i32* %4, align 4
  br label %116

19:                                               ; preds = %3
  %20 = load %struct.ar5210_desc*, %struct.ar5210_desc** %8, align 8
  %21 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @AR_SeqNum, align 4
  %24 = and i32 %22, %23
  %25 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %26 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.ar5210_desc*, %struct.ar5210_desc** %8, align 8
  %28 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @AR_SendTimestamp, align 4
  %31 = call i8* @MS(i32 %29, i32 %30)
  %32 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %33 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %32, i32 0, i32 8
  store i8* %31, i8** %33, align 8
  %34 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %35 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %34, i32 0, i32 7
  store i32 0, i32* %35, align 8
  %36 = load %struct.ar5210_desc*, %struct.ar5210_desc** %8, align 8
  %37 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @AR_FrmXmitOK, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %82

42:                                               ; preds = %19
  %43 = load %struct.ar5210_desc*, %struct.ar5210_desc** %8, align 8
  %44 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @AR_ExcessiveRetries, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load i32, i32* @HAL_TXERR_XRETRY, align 4
  %51 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %52 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %49, %42
  %56 = load %struct.ar5210_desc*, %struct.ar5210_desc** %8, align 8
  %57 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @AR_Filtered, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load i32, i32* @HAL_TXERR_FILT, align 4
  %64 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %65 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %62, %55
  %69 = load %struct.ar5210_desc*, %struct.ar5210_desc** %8, align 8
  %70 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @AR_FIFOUnderrun, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = load i32, i32* @HAL_TXERR_FIFO, align 4
  %77 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %78 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %75, %68
  br label %82

82:                                               ; preds = %81, %19
  %83 = load %struct.ar5210_desc*, %struct.ar5210_desc** %8, align 8
  %84 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @AR_XmitRate, align 4
  %87 = call i8* @MS(i32 %85, i32 %86)
  %88 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %89 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %88, i32 0, i32 6
  store i8* %87, i8** %89, align 8
  %90 = load %struct.ar5210_desc*, %struct.ar5210_desc** %8, align 8
  %91 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @AR_AckSigStrength, align 4
  %94 = call i8* @MS(i32 %92, i32 %93)
  %95 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %96 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %95, i32 0, i32 5
  store i8* %94, i8** %96, align 8
  %97 = load %struct.ar5210_desc*, %struct.ar5210_desc** %8, align 8
  %98 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @AR_ShortRetryCnt, align 4
  %101 = call i8* @MS(i32 %99, i32 %100)
  %102 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %103 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %102, i32 0, i32 4
  store i8* %101, i8** %103, align 8
  %104 = load %struct.ar5210_desc*, %struct.ar5210_desc** %8, align 8
  %105 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @AR_LongRetryCnt, align 4
  %108 = call i8* @MS(i32 %106, i32 %107)
  %109 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %110 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %109, i32 0, i32 3
  store i8* %108, i8** %110, align 8
  %111 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %112 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %111, i32 0, i32 2
  store i64 0, i64* %112, align 8
  %113 = load %struct.ath_tx_status*, %struct.ath_tx_status** %7, align 8
  %114 = getelementptr inbounds %struct.ath_tx_status, %struct.ath_tx_status* %113, i32 0, i32 1
  store i64 0, i64* %114, align 8
  %115 = load i32, i32* @HAL_OK, align 4
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %82, %17
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local %struct.ar5210_desc* @AR5210DESC(%struct.ath_desc*) #1

declare dso_local i8* @MS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
