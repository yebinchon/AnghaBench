; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_os.c_qlnxr_init_hw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_os.c_qlnxr_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { i32, i32, i32, i64, i8*, i32, %struct.TYPE_11__*, %struct.TYPE_7__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i64, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.ecore_rdma_events = type { i32, i32, i64, i64, %struct.qlnxr_dev*, i32, i32 }
%struct.ecore_rdma_add_user_out_params = type { i32, i32, i64, i64, %struct.qlnxr_dev*, i32, i32 }
%struct.ecore_rdma_cnq_params = type { i64, i32 }
%struct.ecore_rdma_start_in_params = type { i32, i32, i32*, %struct.TYPE_9__, %struct.TYPE_8__, %struct.ecore_rdma_events*, %struct.ecore_rdma_cnq_params* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@qlnxr_affiliated_event = common dso_local global i32 0, align 4
@qlnxr_unaffiliated_event = common dso_local global i32 0, align 4
@ECORE_RDMA_CQ_MODE_32_BITS = common dso_local global i32 0, align 4
@delayed_ack = common dso_local global i64 0, align 8
@ECORE_IWARP_DA_EN = common dso_local global i32 0, align 4
@timestamp = common dso_local global i64 0, align 8
@ECORE_IWARP_TS_EN = common dso_local global i32 0, align 4
@rcv_wnd_size = common dso_local global i32 0, align 4
@crc_needed = common dso_local global i32 0, align 4
@MAX_RXMIT_CONNS = common dso_local global i32 0, align 4
@peer2peer = common dso_local global i32 0, align 4
@mpa_enhanced = common dso_local global i64 0, align 8
@ECORE_MPA_REV2 = common dso_local global i32 0, align 4
@ECORE_MPA_REV1 = common dso_local global i32 0, align 4
@rtr_type = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"cdev->doorbells = %p, db_phys_addr = %p db_size = 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"db_addr = %p db_phys_addr = %p db_size = 0x%x dpi = 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlnxr_dev*)* @qlnxr_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnxr_init_hw(%struct.qlnxr_dev* %0) #0 {
  %2 = alloca %struct.qlnxr_dev*, align 8
  %3 = alloca %struct.ecore_rdma_events, align 8
  %4 = alloca %struct.ecore_rdma_add_user_out_params, align 8
  %5 = alloca %struct.ecore_rdma_cnq_params*, align 8
  %6 = alloca %struct.ecore_rdma_start_in_params*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %2, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %13 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %12, i32 0, i32 6
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %11, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %16 = call i32 (%struct.TYPE_11__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_11__* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.ecore_rdma_start_in_params* @kzalloc(i32 64, i32 %17)
  store %struct.ecore_rdma_start_in_params* %18, %struct.ecore_rdma_start_in_params** %6, align 8
  %19 = load %struct.ecore_rdma_start_in_params*, %struct.ecore_rdma_start_in_params** %6, align 8
  %20 = icmp ne %struct.ecore_rdma_start_in_params* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %9, align 4
  br label %236

24:                                               ; preds = %1
  %25 = bitcast %struct.ecore_rdma_add_user_out_params* %4 to %struct.ecore_rdma_events*
  %26 = call i32 @bzero(%struct.ecore_rdma_events* %25, i32 40)
  %27 = call i32 @bzero(%struct.ecore_rdma_events* %3, i32 40)
  %28 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %29 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ecore_rdma_start_in_params*, %struct.ecore_rdma_start_in_params** %6, align 8
  %32 = getelementptr inbounds %struct.ecore_rdma_start_in_params, %struct.ecore_rdma_start_in_params* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %68, %24
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %36 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %71

39:                                               ; preds = %33
  %40 = load %struct.ecore_rdma_start_in_params*, %struct.ecore_rdma_start_in_params** %6, align 8
  %41 = getelementptr inbounds %struct.ecore_rdma_start_in_params, %struct.ecore_rdma_start_in_params* %40, i32 0, i32 6
  %42 = load %struct.ecore_rdma_cnq_params*, %struct.ecore_rdma_cnq_params** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.ecore_rdma_cnq_params, %struct.ecore_rdma_cnq_params* %42, i64 %44
  store %struct.ecore_rdma_cnq_params* %45, %struct.ecore_rdma_cnq_params** %5, align 8
  %46 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %47 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %46, i32 0, i32 7
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = call i32 @ecore_chain_get_page_cnt(i32* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.ecore_rdma_cnq_params*, %struct.ecore_rdma_cnq_params** %5, align 8
  %56 = getelementptr inbounds %struct.ecore_rdma_cnq_params, %struct.ecore_rdma_cnq_params* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %58 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %57, i32 0, i32 7
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = call i64 @ecore_chain_get_pbl_phys(i32* %63)
  store i64 %64, i64* %7, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load %struct.ecore_rdma_cnq_params*, %struct.ecore_rdma_cnq_params** %5, align 8
  %67 = getelementptr inbounds %struct.ecore_rdma_cnq_params, %struct.ecore_rdma_cnq_params* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %39
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %33

71:                                               ; preds = %33
  %72 = load i32, i32* @qlnxr_affiliated_event, align 4
  %73 = getelementptr inbounds %struct.ecore_rdma_events, %struct.ecore_rdma_events* %3, i32 0, i32 6
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* @qlnxr_unaffiliated_event, align 4
  %75 = getelementptr inbounds %struct.ecore_rdma_events, %struct.ecore_rdma_events* %3, i32 0, i32 5
  store i32 %74, i32* %75, align 8
  %76 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %77 = getelementptr inbounds %struct.ecore_rdma_events, %struct.ecore_rdma_events* %3, i32 0, i32 4
  store %struct.qlnxr_dev* %76, %struct.qlnxr_dev** %77, align 8
  %78 = load %struct.ecore_rdma_start_in_params*, %struct.ecore_rdma_start_in_params** %6, align 8
  %79 = getelementptr inbounds %struct.ecore_rdma_start_in_params, %struct.ecore_rdma_start_in_params* %78, i32 0, i32 5
  store %struct.ecore_rdma_events* %3, %struct.ecore_rdma_events** %79, align 8
  %80 = load i32, i32* @ECORE_RDMA_CQ_MODE_32_BITS, align 4
  %81 = load %struct.ecore_rdma_start_in_params*, %struct.ecore_rdma_start_in_params** %6, align 8
  %82 = getelementptr inbounds %struct.ecore_rdma_start_in_params, %struct.ecore_rdma_start_in_params* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 4
  %84 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %85 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %84, i32 0, i32 6
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.ecore_rdma_start_in_params*, %struct.ecore_rdma_start_in_params** %6, align 8
  %90 = getelementptr inbounds %struct.ecore_rdma_start_in_params, %struct.ecore_rdma_start_in_params* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %92 = call i64 @QLNX_IS_IWARP(%struct.qlnxr_dev* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %156

94:                                               ; preds = %71
  %95 = load i64, i64* @delayed_ack, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load i32, i32* @ECORE_IWARP_DA_EN, align 4
  %99 = load %struct.ecore_rdma_start_in_params*, %struct.ecore_rdma_start_in_params** %6, align 8
  %100 = getelementptr inbounds %struct.ecore_rdma_start_in_params, %struct.ecore_rdma_start_in_params* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %98
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %97, %94
  %105 = load i64, i64* @timestamp, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %104
  %108 = load i32, i32* @ECORE_IWARP_TS_EN, align 4
  %109 = load %struct.ecore_rdma_start_in_params*, %struct.ecore_rdma_start_in_params** %6, align 8
  %110 = getelementptr inbounds %struct.ecore_rdma_start_in_params, %struct.ecore_rdma_start_in_params* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %108
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %107, %104
  %115 = load i32, i32* @rcv_wnd_size, align 4
  %116 = mul nsw i32 %115, 1024
  %117 = load %struct.ecore_rdma_start_in_params*, %struct.ecore_rdma_start_in_params** %6, align 8
  %118 = getelementptr inbounds %struct.ecore_rdma_start_in_params, %struct.ecore_rdma_start_in_params* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  store i32 %116, i32* %119, align 8
  %120 = load i32, i32* @crc_needed, align 4
  %121 = load %struct.ecore_rdma_start_in_params*, %struct.ecore_rdma_start_in_params** %6, align 8
  %122 = getelementptr inbounds %struct.ecore_rdma_start_in_params, %struct.ecore_rdma_start_in_params* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 5
  store i32 %120, i32* %123, align 4
  %124 = load i32, i32* @MAX_RXMIT_CONNS, align 4
  %125 = load %struct.ecore_rdma_start_in_params*, %struct.ecore_rdma_start_in_params** %6, align 8
  %126 = getelementptr inbounds %struct.ecore_rdma_start_in_params, %struct.ecore_rdma_start_in_params* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = mul nsw i32 %124, %128
  %130 = load %struct.ecore_rdma_start_in_params*, %struct.ecore_rdma_start_in_params** %6, align 8
  %131 = getelementptr inbounds %struct.ecore_rdma_start_in_params, %struct.ecore_rdma_start_in_params* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = sdiv i32 %129, %132
  %134 = load %struct.ecore_rdma_start_in_params*, %struct.ecore_rdma_start_in_params** %6, align 8
  %135 = getelementptr inbounds %struct.ecore_rdma_start_in_params, %struct.ecore_rdma_start_in_params* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 1
  store i32 %133, i32* %136, align 4
  %137 = load i32, i32* @peer2peer, align 4
  %138 = load %struct.ecore_rdma_start_in_params*, %struct.ecore_rdma_start_in_params** %6, align 8
  %139 = getelementptr inbounds %struct.ecore_rdma_start_in_params, %struct.ecore_rdma_start_in_params* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 4
  store i32 %137, i32* %140, align 8
  %141 = load i64, i64* @mpa_enhanced, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %114
  %144 = load i32, i32* @ECORE_MPA_REV2, align 4
  br label %147

145:                                              ; preds = %114
  %146 = load i32, i32* @ECORE_MPA_REV1, align 4
  br label %147

147:                                              ; preds = %145, %143
  %148 = phi i32 [ %144, %143 ], [ %146, %145 ]
  %149 = load %struct.ecore_rdma_start_in_params*, %struct.ecore_rdma_start_in_params** %6, align 8
  %150 = getelementptr inbounds %struct.ecore_rdma_start_in_params, %struct.ecore_rdma_start_in_params* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 3
  store i32 %148, i32* %151, align 4
  %152 = load i32, i32* @rtr_type, align 4
  %153 = load %struct.ecore_rdma_start_in_params*, %struct.ecore_rdma_start_in_params** %6, align 8
  %154 = getelementptr inbounds %struct.ecore_rdma_start_in_params, %struct.ecore_rdma_start_in_params* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 2
  store i32 %152, i32* %155, align 8
  br label %156

156:                                              ; preds = %147, %71
  %157 = load %struct.ecore_rdma_start_in_params*, %struct.ecore_rdma_start_in_params** %6, align 8
  %158 = getelementptr inbounds %struct.ecore_rdma_start_in_params, %struct.ecore_rdma_start_in_params* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  %161 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %162 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %161, i32 0, i32 6
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @ETH_ALEN, align 4
  %167 = call i32 @memcpy(i32* %160, i32 %165, i32 %166)
  %168 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %169 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.ecore_rdma_start_in_params*, %struct.ecore_rdma_start_in_params** %6, align 8
  %172 = call i32 @ecore_rdma_start(i32 %170, %struct.ecore_rdma_start_in_params* %171)
  store i32 %172, i32* %9, align 4
  %173 = load i32, i32* %9, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %156
  br label %236

176:                                              ; preds = %156
  %177 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %178 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 8
  %180 = bitcast %struct.ecore_rdma_add_user_out_params* %4 to %struct.ecore_rdma_events*
  %181 = call i32 @ecore_rdma_add_user(i32 %179, %struct.ecore_rdma_events* %180)
  store i32 %181, i32* %9, align 4
  %182 = load i32, i32* %9, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %176
  br label %236

185:                                              ; preds = %176
  %186 = getelementptr inbounds %struct.ecore_rdma_add_user_out_params, %struct.ecore_rdma_add_user_out_params* %4, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = inttoptr i64 %187 to i8*
  %189 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %190 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %189, i32 0, i32 4
  store i8* %188, i8** %190, align 8
  %191 = getelementptr inbounds %struct.ecore_rdma_add_user_out_params, %struct.ecore_rdma_add_user_out_params* %4, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %194 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %193, i32 0, i32 3
  store i64 %192, i64* %194, align 8
  %195 = getelementptr inbounds %struct.ecore_rdma_add_user_out_params, %struct.ecore_rdma_add_user_out_params* %4, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %198 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %197, i32 0, i32 2
  store i32 %196, i32* %198, align 8
  %199 = getelementptr inbounds %struct.ecore_rdma_add_user_out_params, %struct.ecore_rdma_add_user_out_params* %4, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %202 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %201, i32 0, i32 1
  store i32 %200, i32* %202, align 4
  %203 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %204 = call i32 @qlnxr_set_device_attr(%struct.qlnxr_dev* %203)
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = inttoptr i64 %209 to i8*
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = inttoptr i64 %214 to i8*
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = call i32 (%struct.TYPE_11__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_11__* %205, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i8* %210, i8* %215, i32 %219)
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %222 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %223 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %222, i32 0, i32 4
  %224 = load i8*, i8** %223, align 8
  %225 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %226 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %225, i32 0, i32 3
  %227 = load i64, i64* %226, align 8
  %228 = inttoptr i64 %227 to i8*
  %229 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %230 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %2, align 8
  %233 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = call i32 (%struct.TYPE_11__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_11__* %221, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i8* %224, i8* %228, i32 %231, i32 %234)
  br label %236

236:                                              ; preds = %185, %184, %175, %21
  %237 = load %struct.ecore_rdma_start_in_params*, %struct.ecore_rdma_start_in_params** %6, align 8
  %238 = call i32 @kfree(%struct.ecore_rdma_start_in_params* %237)
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %240 = call i32 (%struct.TYPE_11__*, i8*, ...) @QL_DPRINT12(%struct.TYPE_11__* %239, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %241 = load i32, i32* %9, align 4
  ret i32 %241
}

declare dso_local i32 @QL_DPRINT12(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local %struct.ecore_rdma_start_in_params* @kzalloc(i32, i32) #1

declare dso_local i32 @bzero(%struct.ecore_rdma_events*, i32) #1

declare dso_local i32 @ecore_chain_get_page_cnt(i32*) #1

declare dso_local i64 @ecore_chain_get_pbl_phys(i32*) #1

declare dso_local i64 @QLNX_IS_IWARP(%struct.qlnxr_dev*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ecore_rdma_start(i32, %struct.ecore_rdma_start_in_params*) #1

declare dso_local i32 @ecore_rdma_add_user(i32, %struct.ecore_rdma_events*) #1

declare dso_local i32 @qlnxr_set_device_attr(%struct.qlnxr_dev*) #1

declare dso_local i32 @kfree(%struct.ecore_rdma_start_in_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
