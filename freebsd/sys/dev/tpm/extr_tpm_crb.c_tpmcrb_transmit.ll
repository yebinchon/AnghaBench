; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm_crb.c_tpmcrb_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm_crb.c_tpmcrb_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_sc = type { i32, i32*, i32, i32, i32 }
%struct.tpmcrb_sc = type { i64, i64, i32 }

@SA_XLOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Requested transfer is bigger than buffer size\0A\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@TPM_CRB_CTRL_STS = common dso_local global i32 0, align 4
@TPM_CRB_CTRL_STS_ERR_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Device has Error bit set\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to obtain locality\0A\00", align 1
@TPM_CRB_CTRL_CANCEL = common dso_local global i32 0, align 4
@TPM_CRB_CTRL_CANCEL_CMD = common dso_local global i32 0, align 4
@TPM_CRB_CTRL_STS_IDLE_BIT = common dso_local global i32 0, align 4
@TPM_CRB_CTRL_REQ = common dso_local global i32 0, align 4
@TPM_CRB_CTRL_REQ_GO_IDLE = common dso_local global i32 0, align 4
@TPM_TIMEOUT_C = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to transition to idle state\0A\00", align 1
@TPM_CRB_CTRL_REQ_GO_READY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to transition to ready state\0A\00", align 1
@BUS_SPACE_BARRIER_WRITE = common dso_local global i32 0, align 4
@TPM_CRB_CTRL_START = common dso_local global i32 0, align 4
@TPM_CRB_CTRL_START_CMD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"Timeout while waiting for device to process cmd\0A\00", align 1
@TPM_HEADER_SIZE = common dso_local global i32 0, align 4
@TPM_BUFSIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"Incorrect response size: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpmcrb_transmit(%struct.tpm_sc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tpm_sc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tpmcrb_sc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tpm_sc* %0, %struct.tpm_sc** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %12 = bitcast %struct.tpm_sc* %11 to %struct.tpmcrb_sc*
  store %struct.tpmcrb_sc* %12, %struct.tpmcrb_sc** %6, align 8
  %13 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %14 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %13, i32 0, i32 4
  %15 = load i32, i32* @SA_XLOCKED, align 4
  %16 = call i32 @sx_assert(i32* %14, i32 %15)
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.tpmcrb_sc*, %struct.tpmcrb_sc** %6, align 8
  %19 = getelementptr inbounds %struct.tpmcrb_sc, %struct.tpmcrb_sc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ugt i64 %17, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %24 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i32, i8*, ...) @device_printf(i32 %25, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @E2BIG, align 4
  store i32 %27, i32* %3, align 4
  br label %227

28:                                               ; preds = %2
  %29 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %30 = load i32, i32* @TPM_CRB_CTRL_STS, align 4
  %31 = call i32 @RD4(%struct.tpm_sc* %29, i32 %30)
  %32 = load i32, i32* @TPM_CRB_CTRL_STS_ERR_BIT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %37 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, ...) @device_printf(i32 %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @EIO, align 4
  store i32 %40, i32* %3, align 4
  br label %227

41:                                               ; preds = %28
  %42 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %43 = call i32 @tpmcrb_request_locality(%struct.tpm_sc* %42, i32 0)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %41
  %46 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %47 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i32, i8*, ...) @device_printf(i32 %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @EIO, align 4
  store i32 %50, i32* %3, align 4
  br label %227

51:                                               ; preds = %41
  %52 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %53 = load i32, i32* @TPM_CRB_CTRL_CANCEL, align 4
  %54 = load i32, i32* @TPM_CRB_CTRL_CANCEL_CMD, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @WR4(%struct.tpm_sc* %52, i32 %53, i32 %57)
  %59 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %60 = load i32, i32* @TPM_CRB_CTRL_STS, align 4
  %61 = call i32 @RD4(%struct.tpm_sc* %59, i32 %60)
  %62 = load i32, i32* @TPM_CRB_CTRL_STS_IDLE_BIT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %85, label %65

65:                                               ; preds = %51
  %66 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %67 = load i32, i32* @TPM_CRB_CTRL_REQ, align 4
  %68 = load i32, i32* @TPM_CRB_CTRL_REQ_GO_IDLE, align 4
  %69 = call i32 @OR4(%struct.tpm_sc* %66, i32 %67, i32 %68)
  %70 = load i32, i32* @TPM_CRB_CTRL_STS_IDLE_BIT, align 4
  store i32 %70, i32* %7, align 4
  %71 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %72 = load i32, i32* @TPM_CRB_CTRL_STS, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @TPM_TIMEOUT_C, align 4
  %76 = call i32 @tpm_wait_for_u32(%struct.tpm_sc* %71, i32 %72, i32 %73, i32 %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %65
  %79 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %80 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i32, i8*, ...) @device_printf(i32 %81, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %83 = load i32, i32* @EIO, align 4
  store i32 %83, i32* %3, align 4
  br label %227

84:                                               ; preds = %65
  br label %85

85:                                               ; preds = %84, %51
  %86 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %87 = load i32, i32* @TPM_CRB_CTRL_REQ, align 4
  %88 = load i32, i32* @TPM_CRB_CTRL_REQ_GO_READY, align 4
  %89 = call i32 @OR4(%struct.tpm_sc* %86, i32 %87, i32 %88)
  %90 = load i32, i32* @TPM_CRB_CTRL_REQ_GO_READY, align 4
  store i32 %90, i32* %7, align 4
  %91 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %92 = load i32, i32* @TPM_CRB_CTRL_STS, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = load i32, i32* @TPM_TIMEOUT_C, align 4
  %99 = call i32 @tpm_wait_for_u32(%struct.tpm_sc* %91, i32 %92, i32 %93, i32 %97, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %85
  %102 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %103 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (i32, i8*, ...) @device_printf(i32 %104, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %106 = load i32, i32* @EIO, align 4
  store i32 %106, i32* %3, align 4
  br label %227

107:                                              ; preds = %85
  %108 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %109 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 6
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @be32toh(i32 %112)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @tpm20_get_timeout(i32 %114)
  store i32 %115, i32* %9, align 4
  %116 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %117 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.tpmcrb_sc*, %struct.tpmcrb_sc** %6, align 8
  %120 = getelementptr inbounds %struct.tpmcrb_sc, %struct.tpmcrb_sc* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %123 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i64, i64* %5, align 8
  %126 = call i32 @bus_write_region_stream_1(i32 %118, i32 %121, i32* %124, i64 %125)
  %127 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %128 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.tpmcrb_sc*, %struct.tpmcrb_sc** %6, align 8
  %131 = getelementptr inbounds %struct.tpmcrb_sc, %struct.tpmcrb_sc* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i64, i64* %5, align 8
  %134 = trunc i64 %133 to i32
  %135 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %136 = call i32 @bus_barrier(i32 %129, i32 %132, i32 %134, i32 %135)
  %137 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %138 = load i32, i32* @TPM_CRB_CTRL_START, align 4
  %139 = load i32, i32* @TPM_CRB_CTRL_START_CMD, align 4
  %140 = call i32 @WR4(%struct.tpm_sc* %137, i32 %138, i32 %139)
  %141 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %142 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @TPM_CRB_CTRL_START, align 4
  %145 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %146 = call i32 @bus_barrier(i32 %143, i32 %144, i32 4, i32 %145)
  store i32 -1, i32* %7, align 4
  %147 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %148 = load i32, i32* @TPM_CRB_CTRL_START, align 4
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* %7, align 4
  %151 = xor i32 %150, -1
  %152 = load i32, i32* %9, align 4
  %153 = call i32 @tpm_wait_for_u32(%struct.tpm_sc* %147, i32 %148, i32 %149, i32 %151, i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %166, label %155

155:                                              ; preds = %107
  %156 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %157 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = call i32 (i32, i8*, ...) @device_printf(i32 %158, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  %160 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %161 = call i32 @tpmcrb_cancel_cmd(%struct.tpm_sc* %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %165, label %163

163:                                              ; preds = %155
  %164 = load i32, i32* @EIO, align 4
  store i32 %164, i32* %3, align 4
  br label %227

165:                                              ; preds = %155
  br label %166

166:                                              ; preds = %165, %107
  %167 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %168 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.tpmcrb_sc*, %struct.tpmcrb_sc** %6, align 8
  %171 = getelementptr inbounds %struct.tpmcrb_sc, %struct.tpmcrb_sc* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %174 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* @TPM_HEADER_SIZE, align 4
  %177 = call i32 @bus_read_region_stream_1(i32 %169, i64 %172, i32* %175, i32 %176)
  %178 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %179 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 2
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @be32toh(i32 %182)
  store i32 %183, i32* %10, align 4
  %184 = load i32, i32* %10, align 4
  %185 = load i32, i32* @TPM_BUFSIZE, align 4
  %186 = icmp sgt i32 %184, %185
  br i1 %186, label %191, label %187

187:                                              ; preds = %166
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* @TPM_HEADER_SIZE, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %198

191:                                              ; preds = %187, %166
  %192 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %193 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %10, align 4
  %196 = call i32 (i32, i8*, ...) @device_printf(i32 %194, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %195)
  %197 = load i32, i32* @EIO, align 4
  store i32 %197, i32* %3, align 4
  br label %227

198:                                              ; preds = %187
  %199 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %200 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.tpmcrb_sc*, %struct.tpmcrb_sc** %6, align 8
  %203 = getelementptr inbounds %struct.tpmcrb_sc, %struct.tpmcrb_sc* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = load i32, i32* @TPM_HEADER_SIZE, align 4
  %206 = sext i32 %205 to i64
  %207 = add nsw i64 %204, %206
  %208 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %209 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %208, i32 0, i32 1
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* @TPM_HEADER_SIZE, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %10, align 4
  %215 = load i32, i32* @TPM_HEADER_SIZE, align 4
  %216 = sub nsw i32 %214, %215
  %217 = call i32 @bus_read_region_stream_1(i32 %201, i64 %207, i32* %213, i32 %216)
  %218 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %219 = load i32, i32* @TPM_CRB_CTRL_REQ, align 4
  %220 = load i32, i32* @TPM_CRB_CTRL_REQ_GO_IDLE, align 4
  %221 = call i32 @OR4(%struct.tpm_sc* %218, i32 %219, i32 %220)
  %222 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %223 = call i32 @tpmcrb_relinquish_locality(%struct.tpm_sc* %222)
  %224 = load i32, i32* %10, align 4
  %225 = load %struct.tpm_sc*, %struct.tpm_sc** %4, align 8
  %226 = getelementptr inbounds %struct.tpm_sc, %struct.tpm_sc* %225, i32 0, i32 0
  store i32 %224, i32* %226, align 8
  store i32 0, i32* %3, align 4
  br label %227

227:                                              ; preds = %198, %191, %163, %101, %78, %45, %35, %22
  %228 = load i32, i32* %3, align 4
  ret i32 %228
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @RD4(%struct.tpm_sc*, i32) #1

declare dso_local i32 @tpmcrb_request_locality(%struct.tpm_sc*, i32) #1

declare dso_local i32 @WR4(%struct.tpm_sc*, i32, i32) #1

declare dso_local i32 @OR4(%struct.tpm_sc*, i32, i32) #1

declare dso_local i32 @tpm_wait_for_u32(%struct.tpm_sc*, i32, i32, i32, i32) #1

declare dso_local i32 @be32toh(i32) #1

declare dso_local i32 @tpm20_get_timeout(i32) #1

declare dso_local i32 @bus_write_region_stream_1(i32, i32, i32*, i64) #1

declare dso_local i32 @bus_barrier(i32, i32, i32, i32) #1

declare dso_local i32 @tpmcrb_cancel_cmd(%struct.tpm_sc*) #1

declare dso_local i32 @bus_read_region_stream_1(i32, i64, i32*, i32) #1

declare dso_local i32 @tpmcrb_relinquish_locality(%struct.tpm_sc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
