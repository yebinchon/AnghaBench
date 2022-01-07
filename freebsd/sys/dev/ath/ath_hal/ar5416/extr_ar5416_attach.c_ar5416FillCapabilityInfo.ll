; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_attach.c_ar5416FillCapabilityInfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_attach.c_ar5416FillCapabilityInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_private = type { i8*, i32, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@AR_EEP_AMODE = common dso_local global i32 0, align 4
@HAL_MODE_11A = common dso_local global i32 0, align 4
@HAL_MODE_11NA_HT20 = common dso_local global i32 0, align 4
@HAL_MODE_11NA_HT40PLUS = common dso_local global i32 0, align 4
@HAL_MODE_11NA_HT40MINUS = common dso_local global i32 0, align 4
@AR_EEP_GMODE = common dso_local global i32 0, align 4
@HAL_MODE_11G = common dso_local global i32 0, align 4
@HAL_MODE_11NG_HT20 = common dso_local global i32 0, align 4
@HAL_MODE_11NG_HT40PLUS = common dso_local global i32 0, align 4
@HAL_MODE_11NG_HT40MINUS = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i8* null, align 8
@AH_TRUE = common dso_local global i8* null, align 8
@AR_EEP_AES = common dso_local global i32 0, align 4
@HAL_MODE_108G = common dso_local global i32 0, align 4
@AR_EEP_MAXQCU = common dso_local global i32 0, align 4
@HAL_OK = common dso_local global i64 0, align 8
@HAL_NUM_TX_QUEUES = common dso_local global i8* null, align 8
@AR_EEP_KCENTRIES = common dso_local global i32 0, align 4
@AR5416_KEYTABLE_SIZE = common dso_local global i8* null, align 8
@HAL_INT_COMMON = common dso_local global i32 0, align 4
@HAL_INT_RX = common dso_local global i32 0, align 4
@HAL_INT_TX = common dso_local global i32 0, align 4
@HAL_INT_FATAL = common dso_local global i32 0, align 4
@HAL_INT_BNR = common dso_local global i32 0, align 4
@HAL_INT_BMISC = common dso_local global i32 0, align 4
@HAL_INT_DTIMSYNC = common dso_local global i32 0, align 4
@HAL_INT_TSFOOR = common dso_local global i32 0, align 4
@HAL_INT_CST = common dso_local global i32 0, align 4
@HAL_INT_GTT = common dso_local global i32 0, align 4
@AR_EEP_TXMASK = common dso_local global i32 0, align 4
@AH_NULL = common dso_local global i8** null, align 8
@AR_EEP_RXMASK = common dso_local global i32 0, align 4
@AR_EEP_RFKILL = common dso_local global i32 0, align 4
@AR_EEP_RFSILENT = common dso_local global i32 0, align 4
@HAL_FREQ_BAND_2GHZ = common dso_local global i32 0, align 4
@HAL_FREQ_BAND_5GHZ = common dso_local global i32 0, align 4
@ahp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ar5416FillCapabilityInfo(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  %3 = alloca %struct.ath_hal_private*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i8*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %6 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %7 = call %struct.ath_hal_private* @AH_PRIVATE(%struct.ath_hal* %6)
  store %struct.ath_hal_private* %7, %struct.ath_hal_private** %3, align 8
  %8 = load %struct.ath_hal_private*, %struct.ath_hal_private** %3, align 8
  %9 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %8, i32 0, i32 4
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %4, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %13 = load i32, i32* @AR_EEP_AMODE, align 4
  %14 = call i8* @ath_hal_eepromGetFlag(%struct.ath_hal* %12, i32 %13)
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load i32, i32* @HAL_MODE_11A, align 4
  %18 = load i32, i32* @HAL_MODE_11NA_HT20, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @HAL_MODE_11NA_HT40PLUS, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @HAL_MODE_11NA_HT40MINUS, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  br label %28

28:                                               ; preds = %16, %1
  %29 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %30 = load i32, i32* @AR_EEP_GMODE, align 4
  %31 = call i8* @ath_hal_eepromGetFlag(%struct.ath_hal* %29, i32 %30)
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %56

33:                                               ; preds = %28
  %34 = load i32, i32* @HAL_MODE_11G, align 4
  %35 = load i32, i32* @HAL_MODE_11NG_HT20, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @HAL_MODE_11NG_HT40PLUS, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @HAL_MODE_11NG_HT40MINUS, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load i32, i32* @HAL_MODE_11A, align 4
  %46 = load i32, i32* @HAL_MODE_11NA_HT20, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @HAL_MODE_11NA_HT40PLUS, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @HAL_MODE_11NA_HT40MINUS, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %33, %28
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i32 2312, i32* %58, align 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  store i32 2732, i32* %60, align 8
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  store i32 4915, i32* %62, align 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 4
  store i32 6100, i32* %64, align 8
  %65 = load i8*, i8** @AH_FALSE, align 8
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 63
  store i8* %65, i8** %67, align 8
  %68 = load i8*, i8** @AH_TRUE, align 8
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 62
  store i8* %68, i8** %70, align 8
  %71 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %72 = load i32, i32* @AR_EEP_AES, align 4
  %73 = call i8* @ath_hal_eepromGetFlag(%struct.ath_hal* %71, i32 %72)
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 61
  store i8* %73, i8** %75, align 8
  %76 = load i8*, i8** @AH_FALSE, align 8
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 60
  store i8* %76, i8** %78, align 8
  %79 = load i8*, i8** @AH_TRUE, align 8
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 59
  store i8* %79, i8** %81, align 8
  %82 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %83 = load i32, i32* @AR_EEP_AES, align 4
  %84 = call i8* @ath_hal_eepromGetFlag(%struct.ath_hal* %82, i32 %83)
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 58
  store i8* %84, i8** %86, align 8
  %87 = load i8*, i8** @AH_TRUE, align 8
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 57
  store i8* %87, i8** %89, align 8
  %90 = load i8*, i8** @AH_TRUE, align 8
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 56
  store i8* %90, i8** %92, align 8
  %93 = load i8*, i8** @AH_TRUE, align 8
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 55
  store i8* %93, i8** %95, align 8
  %96 = load i8*, i8** @AH_FALSE, align 8
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 54
  store i8* %96, i8** %98, align 8
  %99 = load i8*, i8** @AH_TRUE, align 8
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 53
  store i8* %99, i8** %101, align 8
  %102 = load i8*, i8** @AH_TRUE, align 8
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 52
  store i8* %102, i8** %104, align 8
  %105 = load i8*, i8** @AH_TRUE, align 8
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 51
  store i8* %105, i8** %107, align 8
  %108 = load i8*, i8** @AH_TRUE, align 8
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 50
  store i8* %108, i8** %110, align 8
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @HAL_MODE_108G, align 4
  %115 = and i32 %113, %114
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 4
  %118 = load i8*, i8** @AH_TRUE, align 8
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 49
  store i8* %118, i8** %120, align 8
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 6
  store i32 4, i32* %122, align 8
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 7
  store i32 1, i32* %124, align 4
  %125 = load i8*, i8** @AH_TRUE, align 8
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 48
  store i8* %125, i8** %127, align 8
  %128 = load i8*, i8** @AH_TRUE, align 8
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 47
  store i8* %128, i8** %130, align 8
  %131 = load i8*, i8** @AH_TRUE, align 8
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 46
  store i8* %131, i8** %133, align 8
  %134 = load i8*, i8** @AH_TRUE, align 8
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 45
  store i8* %134, i8** %136, align 8
  %137 = load i8*, i8** @AH_FALSE, align 8
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 44
  store i8* %137, i8** %139, align 8
  %140 = load i8*, i8** @AH_FALSE, align 8
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 43
  store i8* %140, i8** %142, align 8
  %143 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %144 = load i32, i32* @AR_EEP_MAXQCU, align 4
  %145 = call i64 @ath_hal_eepromGet(%struct.ath_hal* %143, i32 %144, i8** %5)
  %146 = load i64, i64* @HAL_OK, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %56
  %149 = load i8*, i8** %5, align 8
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 42
  store i8* %149, i8** %151, align 8
  br label %156

152:                                              ; preds = %56
  %153 = load i8*, i8** @HAL_NUM_TX_QUEUES, align 8
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 42
  store i8* %153, i8** %155, align 8
  br label %156

156:                                              ; preds = %152, %148
  %157 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %158 = load i32, i32* @AR_EEP_KCENTRIES, align 4
  %159 = call i64 @ath_hal_eepromGet(%struct.ath_hal* %157, i32 %158, i8** %5)
  %160 = load i64, i64* @HAL_OK, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %156
  %163 = load i8*, i8** %5, align 8
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 41
  store i8* %163, i8** %165, align 8
  br label %170

166:                                              ; preds = %156
  %167 = load i8*, i8** @AR5416_KEYTABLE_SIZE, align 8
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 41
  store i8* %167, i8** %169, align 8
  br label %170

170:                                              ; preds = %166, %162
  %171 = load i8*, i8** @AH_TRUE, align 8
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 40
  store i8* %171, i8** %173, align 8
  %174 = load i8*, i8** @AH_TRUE, align 8
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 39
  store i8* %174, i8** %176, align 8
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 8
  store i32 32, i32* %178, align 8
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 9
  store i32 32, i32* %180, align 4
  %181 = load i8*, i8** @AH_TRUE, align 8
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 38
  store i8* %181, i8** %183, align 8
  %184 = load i32, i32* @HAL_INT_COMMON, align 4
  %185 = load i32, i32* @HAL_INT_RX, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* @HAL_INT_TX, align 4
  %188 = or i32 %186, %187
  %189 = load i32, i32* @HAL_INT_FATAL, align 4
  %190 = or i32 %188, %189
  %191 = load i32, i32* @HAL_INT_BNR, align 4
  %192 = or i32 %190, %191
  %193 = load i32, i32* @HAL_INT_BMISC, align 4
  %194 = or i32 %192, %193
  %195 = load i32, i32* @HAL_INT_DTIMSYNC, align 4
  %196 = or i32 %194, %195
  %197 = load i32, i32* @HAL_INT_TSFOOR, align 4
  %198 = or i32 %196, %197
  %199 = load i32, i32* @HAL_INT_CST, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* @HAL_INT_GTT, align 4
  %202 = or i32 %200, %201
  %203 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 10
  store i32 %202, i32* %204, align 8
  %205 = load i8*, i8** @AH_TRUE, align 8
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 37
  store i8* %205, i8** %207, align 8
  %208 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 11
  store i32 14, i32* %209, align 4
  %210 = load i8*, i8** @AH_FALSE, align 8
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 36
  store i8* %210, i8** %212, align 8
  %213 = load i8*, i8** @AH_FALSE, align 8
  %214 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 35
  store i8* %213, i8** %215, align 8
  %216 = load i8*, i8** @AH_FALSE, align 8
  %217 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 34
  store i8* %216, i8** %218, align 8
  %219 = load i8*, i8** @AH_FALSE, align 8
  %220 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 33
  store i8* %219, i8** %221, align 8
  %222 = load i8*, i8** @AH_TRUE, align 8
  %223 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 32
  store i8* %222, i8** %224, align 8
  %225 = load i8*, i8** @AH_FALSE, align 8
  %226 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 31
  store i8* %225, i8** %227, align 8
  %228 = load i8*, i8** @AH_TRUE, align 8
  %229 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 28
  store i8* %228, i8** %230, align 8
  %231 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %232 = load i32, i32* @AR_EEP_TXMASK, align 4
  %233 = load i8**, i8*** @AH_NULL, align 8
  %234 = call i64 @ath_hal_eepromGet(%struct.ath_hal* %231, i32 %232, i8** %233)
  %235 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 27
  store i64 %234, i64* %236, align 8
  %237 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %238 = load i32, i32* @AR_EEP_RXMASK, align 4
  %239 = load i8**, i8*** @AH_NULL, align 8
  %240 = call i64 @ath_hal_eepromGet(%struct.ath_hal* %237, i32 %238, i8** %239)
  %241 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i32 0, i32 26
  store i64 %240, i64* %242, align 8
  %243 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 12
  store i32 2, i32* %244, align 8
  %245 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 13
  store i32 2, i32* %246, align 4
  %247 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i32 0, i32 27
  %249 = load i64, i64* %248, align 8
  %250 = call i32 @owl_get_ntxchains(i64 %249)
  %251 = icmp eq i32 %250, 1
  br i1 %251, label %252, label %255

252:                                              ; preds = %170
  %253 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i32 0, i32 12
  store i32 1, i32* %254, align 8
  br label %255

255:                                              ; preds = %252, %170
  %256 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i32 0, i32 26
  %258 = load i64, i64* %257, align 8
  %259 = call i32 @owl_get_ntxchains(i64 %258)
  %260 = icmp eq i32 %259, 1
  br i1 %260, label %261, label %264

261:                                              ; preds = %255
  %262 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %262, i32 0, i32 13
  store i32 1, i32* %263, align 4
  br label %264

264:                                              ; preds = %261, %255
  %265 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 14
  store i32 8192, i32* %266, align 8
  %267 = load i8*, i8** @AH_FALSE, align 8
  %268 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %268, i32 0, i32 25
  store i8* %267, i8** %269, align 8
  %270 = load i8*, i8** @AH_TRUE, align 8
  %271 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %271, i32 0, i32 24
  store i8* %270, i8** %272, align 8
  %273 = load i8*, i8** @AH_TRUE, align 8
  %274 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i32 0, i32 23
  store i8* %273, i8** %275, align 8
  %276 = load i8*, i8** @AH_TRUE, align 8
  %277 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %277, i32 0, i32 22
  store i8* %276, i8** %278, align 8
  %279 = load i8*, i8** @AH_TRUE, align 8
  %280 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %280, i32 0, i32 21
  store i8* %279, i8** %281, align 8
  %282 = load i8*, i8** @AH_TRUE, align 8
  %283 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %283, i32 0, i32 20
  store i8* %282, i8** %284, align 8
  %285 = load i8*, i8** @AH_FALSE, align 8
  %286 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %286, i32 0, i32 19
  store i8* %285, i8** %287, align 8
  %288 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %289 = call i64 @AR_SREV_OWL(%struct.ath_hal* %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %295

291:                                              ; preds = %264
  %292 = load i8*, i8** @AH_TRUE, align 8
  %293 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %293, i32 0, i32 18
  store i8* %292, i8** %294, align 8
  br label %295

295:                                              ; preds = %291, %264
  %296 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %297 = load i32, i32* @AR_EEP_RFKILL, align 4
  %298 = call i8* @ath_hal_eepromGetFlag(%struct.ath_hal* %296, i32 %297)
  %299 = icmp ne i8* %298, null
  br i1 %299, label %300, label %315

300:                                              ; preds = %295
  %301 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %302 = load i32, i32* @AR_EEP_RFSILENT, align 4
  %303 = load %struct.ath_hal_private*, %struct.ath_hal_private** %3, align 8
  %304 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %303, i32 0, i32 0
  %305 = call i64 @ath_hal_eepromGet(%struct.ath_hal* %301, i32 %302, i8** %304)
  %306 = load i64, i64* @HAL_OK, align 8
  %307 = icmp eq i64 %305, %306
  br i1 %307, label %308, label %315

308:                                              ; preds = %300
  %309 = load i8*, i8** @AH_TRUE, align 8
  %310 = load %struct.ath_hal_private*, %struct.ath_hal_private** %3, align 8
  %311 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %310, i32 0, i32 3
  store i8* %309, i8** %311, align 8
  %312 = load i8*, i8** @AH_TRUE, align 8
  %313 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %313, i32 0, i32 17
  store i8* %312, i8** %314, align 8
  br label %315

315:                                              ; preds = %308, %300, %295
  %316 = load i8*, i8** @AH_FALSE, align 8
  %317 = load %struct.ath_hal_private*, %struct.ath_hal_private** %3, align 8
  %318 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %317, i32 0, i32 2
  store i8* %316, i8** %318, align 8
  %319 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %320 = call %struct.ath_hal_private* @AH_PRIVATE(%struct.ath_hal* %319)
  %321 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 8
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %327, label %324

324:                                              ; preds = %315
  %325 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %326 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %325, i32 0, i32 15
  store i32 1, i32* %326, align 4
  br label %327

327:                                              ; preds = %324, %315
  %328 = load i8*, i8** @AH_TRUE, align 8
  %329 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %329, i32 0, i32 16
  store i8* %328, i8** %330, align 8
  %331 = load i8*, i8** @AH_TRUE, align 8
  ret i8* %331
}

declare dso_local %struct.ath_hal_private* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i8* @ath_hal_eepromGetFlag(%struct.ath_hal*, i32) #1

declare dso_local i64 @ath_hal_eepromGet(%struct.ath_hal*, i32, i8**) #1

declare dso_local i32 @owl_get_ntxchains(i64) #1

declare dso_local i64 @AR_SREV_OWL(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
