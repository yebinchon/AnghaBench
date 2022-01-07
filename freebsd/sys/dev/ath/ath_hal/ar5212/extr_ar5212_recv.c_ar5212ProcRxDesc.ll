; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_recv.c_ar5212ProcRxDesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_recv.c_ar5212ProcRxDesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_desc = type { i32 }
%struct.ath_rx_status = type { i32, i32, i32, i32, i64, i8*, i8*, i8*, i8* }
%struct.ar5212_desc = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@AR_Done = common dso_local global i32 0, align 4
@HAL_EINPROGRESS = common dso_local global i32 0, align 4
@AR_RXDP = common dso_local global i32 0, align 4
@AR_DataLen = common dso_local global i32 0, align 4
@AR_RcvTimestamp = common dso_local global i32 0, align 4
@AR_RcvSigStrength = common dso_local global i32 0, align 4
@AR_KeyIdxValid = common dso_local global i32 0, align 4
@AR_KeyIdx = common dso_local global i32 0, align 4
@HAL_RXKEYIX_INVALID = common dso_local global i8* null, align 8
@AR_RcvRate = common dso_local global i32 0, align 4
@AR_RcvAntenna = common dso_local global i32 0, align 4
@AR_More = common dso_local global i32 0, align 4
@AR_FrmRcvOK = common dso_local global i32 0, align 4
@AR_PHYErr = common dso_local global i32 0, align 4
@HAL_RXERR_PHY = common dso_local global i32 0, align 4
@AR_PHYErrCode = common dso_local global i32 0, align 4
@HAL_PHYERR_RADAR = common dso_local global i64 0, align 8
@AR_CRCErr = common dso_local global i32 0, align 4
@HAL_RXERR_CRC = common dso_local global i32 0, align 4
@AR_DecryptCRCErr = common dso_local global i32 0, align 4
@HAL_RXERR_DECRYPT = common dso_local global i32 0, align 4
@AR_MichaelErr = common dso_local global i32 0, align 4
@HAL_RXERR_MIC = common dso_local global i32 0, align 4
@HAL_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5212ProcRxDesc(%struct.ath_hal* %0, %struct.ath_desc* %1, i64 %2, %struct.ath_desc* %3, i32 %4, %struct.ath_rx_status* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath_hal*, align 8
  %9 = alloca %struct.ath_desc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ath_desc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ath_rx_status*, align 8
  %14 = alloca %struct.ar5212_desc*, align 8
  %15 = alloca %struct.ar5212_desc*, align 8
  %16 = alloca i64, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %8, align 8
  store %struct.ath_desc* %1, %struct.ath_desc** %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.ath_desc* %3, %struct.ath_desc** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.ath_rx_status* %5, %struct.ath_rx_status** %13, align 8
  %17 = load %struct.ath_desc*, %struct.ath_desc** %9, align 8
  %18 = call %struct.ar5212_desc* @AR5212DESC(%struct.ath_desc* %17)
  store %struct.ar5212_desc* %18, %struct.ar5212_desc** %14, align 8
  %19 = load %struct.ath_desc*, %struct.ath_desc** %11, align 8
  %20 = call %struct.ar5212_desc* @AR5212DESC(%struct.ath_desc* %19)
  store %struct.ar5212_desc* %20, %struct.ar5212_desc** %15, align 8
  %21 = load %struct.ar5212_desc*, %struct.ar5212_desc** %14, align 8
  %22 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @AR_Done, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = load i32, i32* @HAL_EINPROGRESS, align 4
  store i32 %28, i32* %7, align 4
  br label %206

29:                                               ; preds = %6
  %30 = load %struct.ar5212_desc*, %struct.ar5212_desc** %15, align 8
  %31 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @AR_Done, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load %struct.ath_hal*, %struct.ath_hal** %8, align 8
  %38 = load i32, i32* @AR_RXDP, align 4
  %39 = call i64 @OS_REG_READ(%struct.ath_hal* %37, i32 %38)
  %40 = load i64, i64* %10, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @HAL_EINPROGRESS, align 4
  store i32 %43, i32* %7, align 4
  br label %206

44:                                               ; preds = %36, %29
  %45 = load %struct.ar5212_desc*, %struct.ar5212_desc** %14, align 8
  %46 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @AR_DataLen, align 4
  %49 = and i32 %47, %48
  %50 = load %struct.ath_rx_status*, %struct.ath_rx_status** %13, align 8
  %51 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.ar5212_desc*, %struct.ar5212_desc** %14, align 8
  %53 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @AR_RcvTimestamp, align 4
  %56 = call i8* @MS(i32 %54, i32 %55)
  %57 = load %struct.ath_rx_status*, %struct.ath_rx_status** %13, align 8
  %58 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %57, i32 0, i32 8
  store i8* %56, i8** %58, align 8
  %59 = load %struct.ath_rx_status*, %struct.ath_rx_status** %13, align 8
  %60 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %59, i32 0, i32 3
  store i32 0, i32* %60, align 4
  %61 = load %struct.ar5212_desc*, %struct.ar5212_desc** %14, align 8
  %62 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @AR_RcvSigStrength, align 4
  %65 = call i8* @MS(i32 %63, i32 %64)
  %66 = ptrtoint i8* %65 to i32
  %67 = load %struct.ath_rx_status*, %struct.ath_rx_status** %13, align 8
  %68 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.ath_rx_status*, %struct.ath_rx_status** %13, align 8
  %70 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, -128
  br i1 %72, label %73, label %76

73:                                               ; preds = %44
  %74 = load %struct.ath_rx_status*, %struct.ath_rx_status** %13, align 8
  %75 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %74, i32 0, i32 1
  store i32 0, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %44
  %77 = load %struct.ar5212_desc*, %struct.ar5212_desc** %14, align 8
  %78 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @AR_KeyIdxValid, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %76
  %84 = load %struct.ar5212_desc*, %struct.ar5212_desc** %14, align 8
  %85 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @AR_KeyIdx, align 4
  %88 = call i8* @MS(i32 %86, i32 %87)
  %89 = load %struct.ath_rx_status*, %struct.ath_rx_status** %13, align 8
  %90 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %89, i32 0, i32 7
  store i8* %88, i8** %90, align 8
  br label %95

91:                                               ; preds = %76
  %92 = load i8*, i8** @HAL_RXKEYIX_INVALID, align 8
  %93 = load %struct.ath_rx_status*, %struct.ath_rx_status** %13, align 8
  %94 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %93, i32 0, i32 7
  store i8* %92, i8** %94, align 8
  br label %95

95:                                               ; preds = %91, %83
  %96 = load %struct.ar5212_desc*, %struct.ar5212_desc** %14, align 8
  %97 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @AR_RcvRate, align 4
  %100 = call i8* @MS(i32 %98, i32 %99)
  %101 = load %struct.ath_rx_status*, %struct.ath_rx_status** %13, align 8
  %102 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %101, i32 0, i32 6
  store i8* %100, i8** %102, align 8
  %103 = load %struct.ar5212_desc*, %struct.ar5212_desc** %14, align 8
  %104 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @AR_RcvAntenna, align 4
  %107 = call i8* @MS(i32 %105, i32 %106)
  %108 = load %struct.ath_rx_status*, %struct.ath_rx_status** %13, align 8
  %109 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %108, i32 0, i32 5
  store i8* %107, i8** %109, align 8
  %110 = load %struct.ar5212_desc*, %struct.ar5212_desc** %14, align 8
  %111 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @AR_More, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i32 1, i32 0
  %118 = load %struct.ath_rx_status*, %struct.ath_rx_status** %13, align 8
  %119 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 8
  %120 = load %struct.ar5212_desc*, %struct.ar5212_desc** %14, align 8
  %121 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @AR_FrmRcvOK, align 4
  %124 = and i32 %122, %123
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %204

126:                                              ; preds = %95
  %127 = load %struct.ar5212_desc*, %struct.ar5212_desc** %14, align 8
  %128 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @AR_PHYErr, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %162

133:                                              ; preds = %126
  %134 = load i32, i32* @HAL_RXERR_PHY, align 4
  %135 = load %struct.ath_rx_status*, %struct.ath_rx_status** %13, align 8
  %136 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 4
  %139 = load %struct.ar5212_desc*, %struct.ar5212_desc** %14, align 8
  %140 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @AR_PHYErrCode, align 4
  %143 = call i8* @MS(i32 %141, i32 %142)
  %144 = ptrtoint i8* %143 to i64
  store i64 %144, i64* %16, align 8
  %145 = load i64, i64* %16, align 8
  %146 = load %struct.ath_rx_status*, %struct.ath_rx_status** %13, align 8
  %147 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %146, i32 0, i32 4
  store i64 %145, i64* %147, align 8
  %148 = load %struct.ath_hal*, %struct.ath_hal** %8, align 8
  %149 = call %struct.TYPE_2__* @AH5212(%struct.ath_hal* %148)
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %161, label %153

153:                                              ; preds = %133
  %154 = load i64, i64* %16, align 8
  %155 = load i64, i64* @HAL_PHYERR_RADAR, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %153
  %158 = load %struct.ath_hal*, %struct.ath_hal** %8, align 8
  %159 = load %struct.ath_rx_status*, %struct.ath_rx_status** %13, align 8
  %160 = call i32 @ar5212AniPhyErrReport(%struct.ath_hal* %158, %struct.ath_rx_status* %159)
  br label %161

161:                                              ; preds = %157, %153, %133
  br label %162

162:                                              ; preds = %161, %126
  %163 = load %struct.ar5212_desc*, %struct.ar5212_desc** %14, align 8
  %164 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @AR_CRCErr, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %162
  %170 = load i32, i32* @HAL_RXERR_CRC, align 4
  %171 = load %struct.ath_rx_status*, %struct.ath_rx_status** %13, align 8
  %172 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = or i32 %173, %170
  store i32 %174, i32* %172, align 4
  br label %203

175:                                              ; preds = %162
  %176 = load %struct.ar5212_desc*, %struct.ar5212_desc** %14, align 8
  %177 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @AR_DecryptCRCErr, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %175
  %183 = load i32, i32* @HAL_RXERR_DECRYPT, align 4
  %184 = load %struct.ath_rx_status*, %struct.ath_rx_status** %13, align 8
  %185 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = or i32 %186, %183
  store i32 %187, i32* %185, align 4
  br label %202

188:                                              ; preds = %175
  %189 = load %struct.ar5212_desc*, %struct.ar5212_desc** %14, align 8
  %190 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @AR_MichaelErr, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %188
  %196 = load i32, i32* @HAL_RXERR_MIC, align 4
  %197 = load %struct.ath_rx_status*, %struct.ath_rx_status** %13, align 8
  %198 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = or i32 %199, %196
  store i32 %200, i32* %198, align 4
  br label %201

201:                                              ; preds = %195, %188
  br label %202

202:                                              ; preds = %201, %182
  br label %203

203:                                              ; preds = %202, %169
  br label %204

204:                                              ; preds = %203, %95
  %205 = load i32, i32* @HAL_OK, align 4
  store i32 %205, i32* %7, align 4
  br label %206

206:                                              ; preds = %204, %42, %27
  %207 = load i32, i32* %7, align 4
  ret i32 %207
}

declare dso_local %struct.ar5212_desc* @AR5212DESC(%struct.ath_desc*) #1

declare dso_local i64 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i8* @MS(i32, i32) #1

declare dso_local %struct.TYPE_2__* @AH5212(%struct.ath_hal*) #1

declare dso_local i32 @ar5212AniPhyErrReport(%struct.ath_hal*, %struct.ath_rx_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
