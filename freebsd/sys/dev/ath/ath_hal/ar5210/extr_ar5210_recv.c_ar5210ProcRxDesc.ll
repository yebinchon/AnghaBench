; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5210/extr_ar5210_recv.c_ar5210ProcRxDesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5210/extr_ar5210_recv.c_ar5210ProcRxDesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_desc = type { i32 }
%struct.ath_rx_status = type { i32, i32, i32, i32, i32, i8*, i8*, i8*, i32 }
%struct.ar5210_desc = type { i32, i32 }

@AR_Done = common dso_local global i32 0, align 4
@HAL_EINPROGRESS = common dso_local global i32 0, align 4
@AR_RXDP = common dso_local global i32 0, align 4
@AR_DataLen = common dso_local global i32 0, align 4
@AR_RcvTimestamp = common dso_local global i32 0, align 4
@AR_TSF_L32 = common dso_local global i32 0, align 4
@AR_FrmRcvOK = common dso_local global i32 0, align 4
@AR_CRCErr = common dso_local global i32 0, align 4
@HAL_RXERR_CRC = common dso_local global i32 0, align 4
@AR_DecryptCRCErr = common dso_local global i32 0, align 4
@HAL_RXERR_DECRYPT = common dso_local global i32 0, align 4
@AR_FIFOOverrun = common dso_local global i32 0, align 4
@HAL_RXERR_FIFO = common dso_local global i32 0, align 4
@HAL_RXERR_PHY = common dso_local global i32 0, align 4
@AR_PHYErr = common dso_local global i32 0, align 4
@AR_PHYErr_S = common dso_local global i32 0, align 4
@AR_RcvSigStrength = common dso_local global i32 0, align 4
@AR_KeyIdxValid = common dso_local global i32 0, align 4
@AR_KeyIdx = common dso_local global i32 0, align 4
@HAL_RXKEYIX_INVALID = common dso_local global i8* null, align 8
@AR_RcvRate = common dso_local global i32 0, align 4
@AR_RcvAntenna = common dso_local global i32 0, align 4
@AR_More = common dso_local global i32 0, align 4
@HAL_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar5210ProcRxDesc(%struct.ath_hal* %0, %struct.ath_desc* %1, i32 %2, %struct.ath_desc* %3, i32 %4, %struct.ath_rx_status* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath_hal*, align 8
  %9 = alloca %struct.ath_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ath_desc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ath_rx_status*, align 8
  %14 = alloca %struct.ar5210_desc*, align 8
  %15 = alloca %struct.ar5210_desc*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %8, align 8
  store %struct.ath_desc* %1, %struct.ath_desc** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.ath_desc* %3, %struct.ath_desc** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.ath_rx_status* %5, %struct.ath_rx_status** %13, align 8
  %18 = load %struct.ath_desc*, %struct.ath_desc** %9, align 8
  %19 = call %struct.ar5210_desc* @AR5210DESC(%struct.ath_desc* %18)
  store %struct.ar5210_desc* %19, %struct.ar5210_desc** %14, align 8
  %20 = load %struct.ath_desc*, %struct.ath_desc** %11, align 8
  %21 = call %struct.ar5210_desc* @AR5210DESC(%struct.ath_desc* %20)
  store %struct.ar5210_desc* %21, %struct.ar5210_desc** %15, align 8
  %22 = load %struct.ar5210_desc*, %struct.ar5210_desc** %14, align 8
  %23 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @AR_Done, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %6
  %29 = load i32, i32* @HAL_EINPROGRESS, align 4
  store i32 %29, i32* %7, align 4
  br label %203

30:                                               ; preds = %6
  %31 = load %struct.ar5210_desc*, %struct.ar5210_desc** %15, align 8
  %32 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @AR_Done, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load %struct.ath_hal*, %struct.ath_hal** %8, align 8
  %39 = load i32, i32* @AR_RXDP, align 4
  %40 = call i32 @OS_REG_READ(%struct.ath_hal* %38, i32 %39)
  %41 = load i32, i32* %10, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @HAL_EINPROGRESS, align 4
  store i32 %44, i32* %7, align 4
  br label %203

45:                                               ; preds = %37, %30
  %46 = load %struct.ar5210_desc*, %struct.ar5210_desc** %14, align 8
  %47 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @AR_DataLen, align 4
  %50 = and i32 %48, %49
  %51 = load %struct.ath_rx_status*, %struct.ath_rx_status** %13, align 8
  %52 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.ar5210_desc*, %struct.ar5210_desc** %14, align 8
  %54 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @AR_RcvTimestamp, align 4
  %57 = call i8* @MS(i32 %55, i32 %56)
  %58 = ptrtoint i8* %57 to i32
  store i32 %58, i32* %17, align 4
  %59 = load %struct.ath_hal*, %struct.ath_hal** %8, align 8
  %60 = load i32, i32* @AR_TSF_L32, align 4
  %61 = call i32 @OS_REG_READ(%struct.ath_hal* %59, i32 %60)
  %62 = ashr i32 %61, 10
  %63 = and i32 %62, 65535
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = and i32 %64, 8191
  %66 = load i32, i32* %17, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %45
  %69 = load i32, i32* %16, align 4
  %70 = sub nsw i32 %69, 8192
  %71 = and i32 %70, 65535
  %72 = load i32, i32* %17, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %17, align 4
  br label %78

74:                                               ; preds = %45
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %17, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %17, align 4
  br label %78

78:                                               ; preds = %74, %68
  %79 = load i32, i32* %17, align 4
  %80 = and i32 %79, 32767
  %81 = load %struct.ath_rx_status*, %struct.ath_rx_status** %13, align 8
  %82 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.ath_rx_status*, %struct.ath_rx_status** %13, align 8
  %84 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %83, i32 0, i32 8
  store i32 0, i32* %84, align 8
  %85 = load %struct.ar5210_desc*, %struct.ar5210_desc** %14, align 8
  %86 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @AR_FrmRcvOK, align 4
  %89 = and i32 %87, %88
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %148

91:                                               ; preds = %78
  %92 = load %struct.ar5210_desc*, %struct.ar5210_desc** %14, align 8
  %93 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @AR_CRCErr, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %91
  %99 = load i32, i32* @HAL_RXERR_CRC, align 4
  %100 = load %struct.ath_rx_status*, %struct.ath_rx_status** %13, align 8
  %101 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %100, i32 0, i32 8
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  br label %147

104:                                              ; preds = %91
  %105 = load %struct.ar5210_desc*, %struct.ar5210_desc** %14, align 8
  %106 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @AR_DecryptCRCErr, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %104
  %112 = load i32, i32* @HAL_RXERR_DECRYPT, align 4
  %113 = load %struct.ath_rx_status*, %struct.ath_rx_status** %13, align 8
  %114 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %113, i32 0, i32 8
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  br label %146

117:                                              ; preds = %104
  %118 = load %struct.ar5210_desc*, %struct.ar5210_desc** %14, align 8
  %119 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @AR_FIFOOverrun, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %117
  %125 = load i32, i32* @HAL_RXERR_FIFO, align 4
  %126 = load %struct.ath_rx_status*, %struct.ath_rx_status** %13, align 8
  %127 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %126, i32 0, i32 8
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 8
  br label %145

130:                                              ; preds = %117
  %131 = load i32, i32* @HAL_RXERR_PHY, align 4
  %132 = load %struct.ath_rx_status*, %struct.ath_rx_status** %13, align 8
  %133 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %132, i32 0, i32 8
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 8
  %136 = load %struct.ar5210_desc*, %struct.ar5210_desc** %14, align 8
  %137 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @AR_PHYErr, align 4
  %140 = and i32 %138, %139
  %141 = load i32, i32* @AR_PHYErr_S, align 4
  %142 = ashr i32 %140, %141
  %143 = load %struct.ath_rx_status*, %struct.ath_rx_status** %13, align 8
  %144 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 8
  br label %145

145:                                              ; preds = %130, %124
  br label %146

146:                                              ; preds = %145, %111
  br label %147

147:                                              ; preds = %146, %98
  br label %148

148:                                              ; preds = %147, %78
  %149 = load %struct.ar5210_desc*, %struct.ar5210_desc** %14, align 8
  %150 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @AR_RcvSigStrength, align 4
  %153 = call i8* @MS(i32 %151, i32 %152)
  %154 = load %struct.ath_rx_status*, %struct.ath_rx_status** %13, align 8
  %155 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %154, i32 0, i32 7
  store i8* %153, i8** %155, align 8
  %156 = load %struct.ar5210_desc*, %struct.ar5210_desc** %14, align 8
  %157 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @AR_KeyIdxValid, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %170

162:                                              ; preds = %148
  %163 = load %struct.ar5210_desc*, %struct.ar5210_desc** %14, align 8
  %164 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @AR_KeyIdx, align 4
  %167 = call i8* @MS(i32 %165, i32 %166)
  %168 = load %struct.ath_rx_status*, %struct.ath_rx_status** %13, align 8
  %169 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %168, i32 0, i32 6
  store i8* %167, i8** %169, align 8
  br label %174

170:                                              ; preds = %148
  %171 = load i8*, i8** @HAL_RXKEYIX_INVALID, align 8
  %172 = load %struct.ath_rx_status*, %struct.ath_rx_status** %13, align 8
  %173 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %172, i32 0, i32 6
  store i8* %171, i8** %173, align 8
  br label %174

174:                                              ; preds = %170, %162
  %175 = load %struct.ar5210_desc*, %struct.ar5210_desc** %14, align 8
  %176 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @AR_RcvRate, align 4
  %179 = call i8* @MS(i32 %177, i32 %178)
  %180 = load %struct.ath_rx_status*, %struct.ath_rx_status** %13, align 8
  %181 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %180, i32 0, i32 5
  store i8* %179, i8** %181, align 8
  %182 = load %struct.ar5210_desc*, %struct.ar5210_desc** %14, align 8
  %183 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @AR_RcvAntenna, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  %188 = zext i1 %187 to i64
  %189 = select i1 %187, i32 1, i32 0
  %190 = load %struct.ath_rx_status*, %struct.ath_rx_status** %13, align 8
  %191 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %190, i32 0, i32 3
  store i32 %189, i32* %191, align 4
  %192 = load %struct.ar5210_desc*, %struct.ar5210_desc** %14, align 8
  %193 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @AR_More, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  %198 = zext i1 %197 to i64
  %199 = select i1 %197, i32 1, i32 0
  %200 = load %struct.ath_rx_status*, %struct.ath_rx_status** %13, align 8
  %201 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %200, i32 0, i32 4
  store i32 %199, i32* %201, align 8
  %202 = load i32, i32* @HAL_OK, align 4
  store i32 %202, i32* %7, align 4
  br label %203

203:                                              ; preds = %174, %43, %28
  %204 = load i32, i32* %7, align 4
  ret i32 %204
}

declare dso_local %struct.ar5210_desc* @AR5210DESC(%struct.ath_desc*) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i8* @MS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
