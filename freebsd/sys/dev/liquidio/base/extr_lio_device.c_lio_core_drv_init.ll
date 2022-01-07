; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_device.c_lio_core_drv_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_device.c_lio_core_drv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lio_core_setup = type { i64, i32, i32, i32, i32 }
%struct.lio_recv_info = type { %struct.lio_recv_pkt* }
%struct.lio_recv_pkt = type { i64*, i64, %struct.TYPE_18__**, %struct.TYPE_12__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32, i32, i64, i64 }
%struct.octeon_device = type { i64, i64, %struct.TYPE_17__, i32, %struct.TYPE_16__, %struct.TYPE_15__**, %struct.TYPE_10__, i64 }
%struct.TYPE_17__ = type { i8*, i8*, i32, i32 }
%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i64, i64, i32, i64 }

@cn23xx_pf = common dso_local global i32 0, align 4
@LIO_DEV_RUNNING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Received CORE OK when device state is 0x%x\0A\00", align 1
@LIO_DRV_NIC_APP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"Config has more ports than firmware allows (%d > %d).\0A\00", align 1
@LIO_DEV_CORE_OK = common dso_local global i32 0, align 4
@core_setup = common dso_local global %struct.lio_core_setup* null, align 8
@LIO_DROQ_INFO_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"Core setup bytes expected %llu found %d\0A\00", align 1
@LIO_BOARD_NAME = common dso_local global i32 0, align 4
@LIO_SERIAL_NUM_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Running %s (%llu Hz)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lio_core_drv_init(%struct.lio_recv_info* %0, i8* %1) #0 {
  %3 = alloca %struct.lio_recv_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.octeon_device*, align 8
  %6 = alloca %struct.lio_recv_pkt*, align 8
  %7 = alloca %struct.lio_core_setup*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [16 x i8], align 16
  store %struct.lio_recv_info* %0, %struct.lio_recv_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.octeon_device*
  store %struct.octeon_device* %12, %struct.octeon_device** %5, align 8
  %13 = load %struct.lio_recv_info*, %struct.lio_recv_info** %3, align 8
  %14 = getelementptr inbounds %struct.lio_recv_info, %struct.lio_recv_info* %13, i32 0, i32 0
  %15 = load %struct.lio_recv_pkt*, %struct.lio_recv_pkt** %14, align 8
  store %struct.lio_recv_pkt* %15, %struct.lio_recv_pkt** %6, align 8
  store %struct.lio_core_setup* null, %struct.lio_core_setup** %7, align 8
  store i64 0, i64* %9, align 8
  %16 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %17 = call i64 @LIO_CN23XX_PF(%struct.octeon_device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %21 = load i32, i32* @cn23xx_pf, align 4
  %22 = call i32 @LIO_CHIP_CONF(%struct.octeon_device* %20, i32 %21)
  %23 = call i64 @LIO_GET_NUM_NIC_PORTS_CFG(i32 %22)
  store i64 %23, i64* %9, align 8
  br label %24

24:                                               ; preds = %19, %2
  %25 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %26 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %25, i32 0, i32 3
  %27 = call i64 @atomic_load_acq_int(i32* %26)
  %28 = load i64, i64* @LIO_DEV_RUNNING, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %32 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %33 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %32, i32 0, i32 3
  %34 = call i64 @atomic_load_acq_int(i32* %33)
  %35 = call i32 (%struct.octeon_device*, i8*, i64, ...) @lio_dev_err(%struct.octeon_device* %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %34)
  br label %228

36:                                               ; preds = %24
  %37 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %38 = load %struct.lio_recv_pkt*, %struct.lio_recv_pkt** %6, align 8
  %39 = getelementptr inbounds %struct.lio_recv_pkt, %struct.lio_recv_pkt* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @lio_get_app_string(i64 %42)
  %44 = call i32 @strncpy(i8* %37, i32 %43, i32 15)
  %45 = load %struct.lio_recv_pkt*, %struct.lio_recv_pkt** %6, align 8
  %46 = getelementptr inbounds %struct.lio_recv_pkt, %struct.lio_recv_pkt* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %51 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %50, i32 0, i32 7
  store i64 %49, i64* %51, align 8
  %52 = load %struct.lio_recv_pkt*, %struct.lio_recv_pkt** %6, align 8
  %53 = getelementptr inbounds %struct.lio_recv_pkt, %struct.lio_recv_pkt* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @LIO_DRV_NIC_APP, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %36
  %60 = load %struct.lio_recv_pkt*, %struct.lio_recv_pkt** %6, align 8
  %61 = getelementptr inbounds %struct.lio_recv_pkt, %struct.lio_recv_pkt* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %66 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %65, i32 0, i32 6
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  store i64 %64, i64* %67, align 8
  %68 = load %struct.lio_recv_pkt*, %struct.lio_recv_pkt** %6, align 8
  %69 = getelementptr inbounds %struct.lio_recv_pkt, %struct.lio_recv_pkt* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %74 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %73, i32 0, i32 6
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 3
  store i64 %72, i64* %75, align 8
  br label %76

76:                                               ; preds = %59, %36
  %77 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %78 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %77, i32 0, i32 6
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %9, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %76
  %84 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %85 = load i64, i64* %9, align 8
  %86 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %87 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %86, i32 0, i32 6
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 (%struct.octeon_device*, i8*, i64, ...) @lio_dev_err(%struct.octeon_device* %84, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %85, i64 %89)
  br label %228

91:                                               ; preds = %76
  %92 = load %struct.lio_recv_pkt*, %struct.lio_recv_pkt** %6, align 8
  %93 = getelementptr inbounds %struct.lio_recv_pkt, %struct.lio_recv_pkt* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %98 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %97, i32 0, i32 6
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 2
  store i32 %96, i32* %99, align 8
  %100 = load %struct.lio_recv_pkt*, %struct.lio_recv_pkt** %6, align 8
  %101 = getelementptr inbounds %struct.lio_recv_pkt, %struct.lio_recv_pkt* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %106 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %105, i32 0, i32 6
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  store i64 %104, i64* %107, align 8
  %108 = load %struct.lio_recv_pkt*, %struct.lio_recv_pkt** %6, align 8
  %109 = getelementptr inbounds %struct.lio_recv_pkt, %struct.lio_recv_pkt* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %114 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 1
  store i64 %112, i64* %115, align 8
  %116 = load %struct.lio_recv_pkt*, %struct.lio_recv_pkt** %6, align 8
  %117 = getelementptr inbounds %struct.lio_recv_pkt, %struct.lio_recv_pkt* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %122 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  store i32 %120, i32* %123, align 8
  store i64 0, i64* %8, align 8
  br label %124

124:                                              ; preds = %144, %91
  %125 = load i64, i64* %8, align 8
  %126 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %127 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp slt i64 %125, %128
  br i1 %129, label %130, label %147

130:                                              ; preds = %124
  %131 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %132 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %136 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %135, i32 0, i32 5
  %137 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %136, align 8
  %138 = load i64, i64* %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %137, i64 %138
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  store i32 %134, i32* %143, align 4
  br label %144

144:                                              ; preds = %130
  %145 = load i64, i64* %8, align 8
  %146 = add nsw i64 %145, 1
  store i64 %146, i64* %8, align 8
  br label %124

147:                                              ; preds = %124
  %148 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %149 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %148, i32 0, i32 3
  %150 = load i32, i32* @LIO_DEV_CORE_OK, align 4
  %151 = call i32 @atomic_store_rel_int(i32* %149, i32 %150)
  %152 = load %struct.lio_core_setup*, %struct.lio_core_setup** @core_setup, align 8
  %153 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %154 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds %struct.lio_core_setup, %struct.lio_core_setup* %152, i64 %155
  store %struct.lio_core_setup* %156, %struct.lio_core_setup** %7, align 8
  %157 = load %struct.lio_recv_pkt*, %struct.lio_recv_pkt** %6, align 8
  %158 = getelementptr inbounds %struct.lio_recv_pkt, %struct.lio_recv_pkt* %157, i32 0, i32 0
  %159 = load i64*, i64** %158, align 8
  %160 = getelementptr inbounds i64, i64* %159, i64 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @LIO_DROQ_INFO_SIZE, align 8
  %163 = add i64 24, %162
  %164 = icmp ne i64 %161, %163
  br i1 %164, label %165, label %176

165:                                              ; preds = %147
  %166 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %167 = load i64, i64* @LIO_DROQ_INFO_SIZE, align 8
  %168 = add i64 24, %167
  %169 = call i32 @LIO_CAST64(i64 %168)
  %170 = load %struct.lio_recv_pkt*, %struct.lio_recv_pkt** %6, align 8
  %171 = getelementptr inbounds %struct.lio_recv_pkt, %struct.lio_recv_pkt* %170, i32 0, i32 0
  %172 = load i64*, i64** %171, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 0
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @lio_dev_dbg(%struct.octeon_device* %166, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %169, i64 %174)
  br label %176

176:                                              ; preds = %165, %147
  %177 = load %struct.lio_core_setup*, %struct.lio_core_setup** %7, align 8
  %178 = load %struct.lio_recv_pkt*, %struct.lio_recv_pkt** %6, align 8
  %179 = getelementptr inbounds %struct.lio_recv_pkt, %struct.lio_recv_pkt* %178, i32 0, i32 2
  %180 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %180, i64 0
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @LIO_DROQ_INFO_SIZE, align 8
  %186 = add nsw i64 %184, %185
  %187 = call i32 @memcpy(%struct.lio_core_setup* %177, i64 %186, i32 24)
  %188 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %189 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  %192 = load %struct.lio_core_setup*, %struct.lio_core_setup** %7, align 8
  %193 = getelementptr inbounds %struct.lio_core_setup, %struct.lio_core_setup* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @LIO_BOARD_NAME, align 4
  %196 = call i32 @strncpy(i8* %191, i32 %194, i32 %195)
  %197 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %198 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 1
  %200 = load i8*, i8** %199, align 8
  %201 = load %struct.lio_core_setup*, %struct.lio_core_setup** %7, align 8
  %202 = getelementptr inbounds %struct.lio_core_setup, %struct.lio_core_setup* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @LIO_SERIAL_NUM_LEN, align 4
  %205 = call i32 @strncpy(i8* %200, i32 %203, i32 %204)
  %206 = load %struct.lio_core_setup*, %struct.lio_core_setup** %7, align 8
  %207 = bitcast %struct.lio_core_setup* %206 to i32*
  %208 = call i32 @lio_swap_8B_data(i32* %207, i32 3)
  %209 = load %struct.lio_core_setup*, %struct.lio_core_setup** %7, align 8
  %210 = getelementptr inbounds %struct.lio_core_setup, %struct.lio_core_setup* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %213 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 3
  store i32 %211, i32* %214, align 4
  %215 = load %struct.lio_core_setup*, %struct.lio_core_setup** %7, align 8
  %216 = getelementptr inbounds %struct.lio_core_setup, %struct.lio_core_setup* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %219 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 2
  store i32 %217, i32* %220, align 8
  %221 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %222 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %223 = load %struct.lio_core_setup*, %struct.lio_core_setup** %7, align 8
  %224 = getelementptr inbounds %struct.lio_core_setup, %struct.lio_core_setup* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = call i32 @LIO_CAST64(i64 %225)
  %227 = call i32 @lio_dev_info(%struct.octeon_device* %221, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %222, i32 %226)
  br label %228

228:                                              ; preds = %176, %83, %30
  store i64 0, i64* %8, align 8
  br label %229

229:                                              ; preds = %243, %228
  %230 = load i64, i64* %8, align 8
  %231 = load %struct.lio_recv_pkt*, %struct.lio_recv_pkt** %6, align 8
  %232 = getelementptr inbounds %struct.lio_recv_pkt, %struct.lio_recv_pkt* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = icmp slt i64 %230, %233
  br i1 %234, label %235, label %246

235:                                              ; preds = %229
  %236 = load %struct.lio_recv_pkt*, %struct.lio_recv_pkt** %6, align 8
  %237 = getelementptr inbounds %struct.lio_recv_pkt, %struct.lio_recv_pkt* %236, i32 0, i32 2
  %238 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %237, align 8
  %239 = load i64, i64* %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %238, i64 %239
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %240, align 8
  %242 = call i32 @lio_recv_buffer_free(%struct.TYPE_18__* %241)
  br label %243

243:                                              ; preds = %235
  %244 = load i64, i64* %8, align 8
  %245 = add nsw i64 %244, 1
  store i64 %245, i64* %8, align 8
  br label %229

246:                                              ; preds = %229
  %247 = load %struct.lio_recv_info*, %struct.lio_recv_info** %3, align 8
  %248 = call i32 @lio_free_recv_info(%struct.lio_recv_info* %247)
  ret i32 0
}

declare dso_local i64 @LIO_CN23XX_PF(%struct.octeon_device*) #1

declare dso_local i64 @LIO_GET_NUM_NIC_PORTS_CFG(i32) #1

declare dso_local i32 @LIO_CHIP_CONF(%struct.octeon_device*, i32) #1

declare dso_local i64 @atomic_load_acq_int(i32*) #1

declare dso_local i32 @lio_dev_err(%struct.octeon_device*, i8*, i64, ...) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i32 @lio_get_app_string(i64) #1

declare dso_local i32 @atomic_store_rel_int(i32*, i32) #1

declare dso_local i32 @lio_dev_dbg(%struct.octeon_device*, i8*, i32, i64) #1

declare dso_local i32 @LIO_CAST64(i64) #1

declare dso_local i32 @memcpy(%struct.lio_core_setup*, i64, i32) #1

declare dso_local i32 @lio_swap_8B_data(i32*, i32) #1

declare dso_local i32 @lio_dev_info(%struct.octeon_device*, i8*, i8*, i32) #1

declare dso_local i32 @lio_recv_buffer_free(%struct.TYPE_18__*) #1

declare dso_local i32 @lio_free_recv_info(%struct.lio_recv_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
