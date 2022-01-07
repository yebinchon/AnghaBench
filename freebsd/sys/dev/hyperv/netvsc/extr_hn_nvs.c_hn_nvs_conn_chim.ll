; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_hn_nvs.c_hn_nvs_conn_chim.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_hn_nvs.c_hn_nvs_conn_chim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.vmbus_xact = type { i32 }
%struct.hn_nvs_chim_conn = type { i32, i32, i32 }
%struct.hn_nvs_chim_connresp = type { i32, i32 }

@HN_CHIM_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"chim gpadl conn failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"no xact for nvs chim conn\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@HN_NVS_TYPE_CHIM_CONN = common dso_local global i32 0, align 4
@HN_NVS_CHIM_SIG = common dso_local global i32 0, align 4
@HN_NVS_TYPE_CHIM_CONNRESP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"exec nvs chim conn failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@HN_NVS_STATUS_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"nvs chim conn failed: %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"zero chimney sending buffer section size\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"misaligned chimney sending buffers, section size: %u\0A\00", align 1
@HN_FLAG_CHIM_CONNECTED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [51 x i8] c"chimney sending sections are not properly aligned\0A\00", align 1
@LONG_BIT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"discard %d chimney sending sections\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [30 x i8] c"chimney sending buffer %d/%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hn_softc*)* @hn_nvs_conn_chim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hn_nvs_conn_chim(%struct.hn_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hn_softc*, align 8
  %4 = alloca %struct.vmbus_xact*, align 8
  %5 = alloca %struct.hn_nvs_chim_conn*, align 8
  %6 = alloca %struct.hn_nvs_chim_connresp*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hn_softc* %0, %struct.hn_softc** %3, align 8
  store %struct.vmbus_xact* null, %struct.vmbus_xact** %4, align 8
  %11 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %12 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %11, i32 0, i32 9
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %15 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %14, i32 0, i32 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @HN_CHIM_SIZE, align 4
  %19 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %20 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %19, i32 0, i32 6
  %21 = call i32 @vmbus_chan_gpadl_connect(i32 %13, i32 %17, i32 %18, i32* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %26 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 (i32, i8*, ...) @if_printf(i32 %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %200

30:                                               ; preds = %1
  %31 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %32 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.vmbus_xact* @vmbus_xact_get(i32 %33, i32 12)
  store %struct.vmbus_xact* %34, %struct.vmbus_xact** %4, align 8
  %35 = load %struct.vmbus_xact*, %struct.vmbus_xact** %4, align 8
  %36 = icmp eq %struct.vmbus_xact* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %39 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i32, i8*, ...) @if_printf(i32 %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @ENXIO, align 4
  store i32 %42, i32* %10, align 4
  br label %200

43:                                               ; preds = %30
  %44 = load %struct.vmbus_xact*, %struct.vmbus_xact** %4, align 8
  %45 = call %struct.hn_nvs_chim_conn* @vmbus_xact_req_data(%struct.vmbus_xact* %44)
  store %struct.hn_nvs_chim_conn* %45, %struct.hn_nvs_chim_conn** %5, align 8
  %46 = load i32, i32* @HN_NVS_TYPE_CHIM_CONN, align 4
  %47 = load %struct.hn_nvs_chim_conn*, %struct.hn_nvs_chim_conn** %5, align 8
  %48 = getelementptr inbounds %struct.hn_nvs_chim_conn, %struct.hn_nvs_chim_conn* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %50 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.hn_nvs_chim_conn*, %struct.hn_nvs_chim_conn** %5, align 8
  %53 = getelementptr inbounds %struct.hn_nvs_chim_conn, %struct.hn_nvs_chim_conn* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @HN_NVS_CHIM_SIG, align 4
  %55 = load %struct.hn_nvs_chim_conn*, %struct.hn_nvs_chim_conn** %5, align 8
  %56 = getelementptr inbounds %struct.hn_nvs_chim_conn, %struct.hn_nvs_chim_conn* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  store i64 8, i64* %7, align 8
  %57 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %58 = load %struct.vmbus_xact*, %struct.vmbus_xact** %4, align 8
  %59 = load %struct.hn_nvs_chim_conn*, %struct.hn_nvs_chim_conn** %5, align 8
  %60 = load i32, i32* @HN_NVS_TYPE_CHIM_CONNRESP, align 4
  %61 = call %struct.hn_nvs_chim_connresp* @hn_nvs_xact_execute(%struct.hn_softc* %57, %struct.vmbus_xact* %58, %struct.hn_nvs_chim_conn* %59, i32 12, i64* %7, i32 %60)
  store %struct.hn_nvs_chim_connresp* %61, %struct.hn_nvs_chim_connresp** %6, align 8
  %62 = load %struct.hn_nvs_chim_connresp*, %struct.hn_nvs_chim_connresp** %6, align 8
  %63 = icmp eq %struct.hn_nvs_chim_connresp* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %43
  %65 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %66 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i32, i8*, ...) @if_printf(i32 %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* @EIO, align 4
  store i32 %69, i32* %10, align 4
  br label %200

70:                                               ; preds = %43
  %71 = load %struct.hn_nvs_chim_connresp*, %struct.hn_nvs_chim_connresp** %6, align 8
  %72 = getelementptr inbounds %struct.hn_nvs_chim_connresp, %struct.hn_nvs_chim_connresp* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %8, align 4
  %74 = load %struct.hn_nvs_chim_connresp*, %struct.hn_nvs_chim_connresp** %6, align 8
  %75 = getelementptr inbounds %struct.hn_nvs_chim_connresp, %struct.hn_nvs_chim_connresp* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %9, align 4
  %77 = load %struct.vmbus_xact*, %struct.vmbus_xact** %4, align 8
  %78 = call i32 @vmbus_xact_put(%struct.vmbus_xact* %77)
  store %struct.vmbus_xact* null, %struct.vmbus_xact** %4, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @HN_NVS_STATUS_OK, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %70
  %83 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %84 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %8, align 4
  %87 = call i32 (i32, i8*, ...) @if_printf(i32 %85, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @EIO, align 4
  store i32 %88, i32* %10, align 4
  br label %200

89:                                               ; preds = %70
  %90 = load i32, i32* %9, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = urem i64 %94, 4
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %121

97:                                               ; preds = %92, %89
  %98 = load i32, i32* %9, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %102 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i32, i8*, ...) @if_printf(i32 %103, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  br label %111

105:                                              ; preds = %97
  %106 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %107 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %9, align 4
  %110 = call i32 (i32, i8*, ...) @if_printf(i32 %108, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %105, %100
  %112 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %113 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %112, i32 0, i32 0
  store i32 0, i32* %113, align 4
  %114 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %115 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %114, i32 0, i32 1
  store i32 0, i32* %115, align 4
  %116 = load i32, i32* @HN_FLAG_CHIM_CONNECTED, align 4
  %117 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %118 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 4
  store i32 0, i32* %2, align 4
  br label %210

121:                                              ; preds = %92
  %122 = load i32, i32* %9, align 4
  %123 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %124 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* @HN_CHIM_SIZE, align 4
  %126 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %127 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = sdiv i32 %125, %128
  %130 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %131 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* @HN_CHIM_SIZE, align 4
  %133 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %134 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = srem i32 %132, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %121
  %139 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %140 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = call i32 (i32, i8*, ...) @if_printf(i32 %141, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0))
  br label %143

143:                                              ; preds = %138, %121
  %144 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %145 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @LONG_BIT, align 4
  %148 = srem i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %143
  %151 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %152 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %155 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @LONG_BIT, align 4
  %158 = srem i32 %156, %157
  %159 = call i32 (i32, i8*, ...) @if_printf(i32 %153, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %158)
  br label %160

160:                                              ; preds = %150, %143
  %161 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %162 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @LONG_BIT, align 4
  %165 = sdiv i32 %163, %164
  %166 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %167 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 4
  %168 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %169 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = sext i32 %170 to i64
  %172 = mul i64 %171, 4
  %173 = trunc i64 %172 to i32
  %174 = load i32, i32* @M_DEVBUF, align 4
  %175 = load i32, i32* @M_WAITOK, align 4
  %176 = load i32, i32* @M_ZERO, align 4
  %177 = or i32 %175, %176
  %178 = call i32 @malloc(i32 %173, i32 %174, i32 %177)
  %179 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %180 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %179, i32 0, i32 5
  store i32 %178, i32* %180, align 4
  %181 = load i32, i32* @HN_FLAG_CHIM_CONNECTED, align 4
  %182 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %183 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 4
  %186 = load i64, i64* @bootverbose, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %199

188:                                              ; preds = %160
  %189 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %190 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %193 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %196 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = call i32 (i32, i8*, ...) @if_printf(i32 %191, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %194, i32 %197)
  br label %199

199:                                              ; preds = %188, %160
  store i32 0, i32* %2, align 4
  br label %210

200:                                              ; preds = %82, %64, %37, %24
  %201 = load %struct.vmbus_xact*, %struct.vmbus_xact** %4, align 8
  %202 = icmp ne %struct.vmbus_xact* %201, null
  br i1 %202, label %203, label %206

203:                                              ; preds = %200
  %204 = load %struct.vmbus_xact*, %struct.vmbus_xact** %4, align 8
  %205 = call i32 @vmbus_xact_put(%struct.vmbus_xact* %204)
  br label %206

206:                                              ; preds = %203, %200
  %207 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %208 = call i32 @hn_nvs_disconn_chim(%struct.hn_softc* %207)
  %209 = load i32, i32* %10, align 4
  store i32 %209, i32* %2, align 4
  br label %210

210:                                              ; preds = %206, %199, %111
  %211 = load i32, i32* %2, align 4
  ret i32 %211
}

declare dso_local i32 @vmbus_chan_gpadl_connect(i32, i32, i32, i32*) #1

declare dso_local i32 @if_printf(i32, i8*, ...) #1

declare dso_local %struct.vmbus_xact* @vmbus_xact_get(i32, i32) #1

declare dso_local %struct.hn_nvs_chim_conn* @vmbus_xact_req_data(%struct.vmbus_xact*) #1

declare dso_local %struct.hn_nvs_chim_connresp* @hn_nvs_xact_execute(%struct.hn_softc*, %struct.vmbus_xact*, %struct.hn_nvs_chim_conn*, i32, i64*, i32) #1

declare dso_local i32 @vmbus_xact_put(%struct.vmbus_xact*) #1

declare dso_local i32 @malloc(i32, i32, i32) #1

declare dso_local i32 @hn_nvs_disconn_chim(%struct.hn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
