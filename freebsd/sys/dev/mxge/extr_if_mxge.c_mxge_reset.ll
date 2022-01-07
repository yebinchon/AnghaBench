; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_25__*, %struct.mxge_slice_state*, i32, i32*, i64, i32* }
%struct.TYPE_25__ = type { i32 }
%struct.mxge_slice_state = type { i32*, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_27__, i32* }
%struct.TYPE_24__ = type { i64, i64, i64 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_21__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_27__ = type { i64, i64, %struct.TYPE_20__, %struct.TYPE_28__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_28__ = type { i32, i32, i32 }

@MXGEFW_CMD_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"failed reset\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@MXGEFW_CMD_SET_INTRQ_SIZE = common dso_local global i32 0, align 4
@MXGEFW_CMD_GET_MAX_RSS_QUEUES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to get number of slices\0A\00", align 1
@MXGEFW_SLICE_INTR_MODE_ONE_PER_SLICE = common dso_local global i32 0, align 4
@MXGEFW_CMD_ENABLE_RSS_QUEUES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to set number of slices\0A\00", align 1
@MXGEFW_CMD_SET_INTRQ_DMA = common dso_local global i32 0, align 4
@MXGEFW_CMD_GET_INTR_COAL_DELAY_OFFSET = common dso_local global i32 0, align 4
@MXGEFW_CMD_GET_IRQ_ACK_OFFSET = common dso_local global i32 0, align 4
@MXGEFW_CMD_GET_IRQ_DEASSERT_OFFSET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"failed set interrupt parameters\0A\00", align 1
@MXGEFW_DMA_TEST = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@MXGEFW_CMD_SET_THROTTLE_FACTOR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"can't enable throttle\0A\00", align 1
@MXGEFW_SLICE_ENABLE_MULTIPLE_TX_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, i32)* @mxge_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxge_reset(%struct.TYPE_26__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mxge_slice_state*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_28__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = call i32 @memset(%struct.TYPE_28__* %9, i32 0, i32 12)
  %13 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %14 = load i32, i32* @MXGEFW_CMD_RESET, align 4
  %15 = call i32 @mxge_send_cmd(%struct.TYPE_26__* %13, i32 %14, %struct.TYPE_28__* %9)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %3, align 4
  br label %303

24:                                               ; preds = %2
  %25 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %26 = call i32 @mxge_dummy_rdma(%struct.TYPE_26__* %25, i32 1)
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %32 = load i32, i32* @MXGEFW_CMD_SET_INTRQ_SIZE, align 4
  %33 = call i32 @mxge_send_cmd(%struct.TYPE_26__* %31, i32 %32, %struct.TYPE_28__* %9)
  store i32 %33, i32* %11, align 4
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %69

38:                                               ; preds = %24
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %40 = load i32, i32* @MXGEFW_CMD_GET_MAX_RSS_QUEUES, align 4
  %41 = call i32 @mxge_send_cmd(%struct.TYPE_26__* %39, i32 %40, %struct.TYPE_28__* %9)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @device_printf(i32 %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %3, align 4
  br label %303

50:                                               ; preds = %38
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @MXGEFW_SLICE_INTR_MODE_ONE_PER_SLICE, align 4
  %56 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 2
  store i32 %55, i32* %56, align 4
  %57 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %58 = load i32, i32* @MXGEFW_CMD_ENABLE_RSS_QUEUES, align 4
  %59 = call i32 @mxge_send_cmd(%struct.TYPE_26__* %57, i32 %58, %struct.TYPE_28__* %9)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %50
  %63 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @device_printf(i32 %65, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %3, align 4
  br label %303

68:                                               ; preds = %50
  br label %69

69:                                               ; preds = %68, %24
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %117

72:                                               ; preds = %69
  store i32 0, i32* %10, align 4
  br label %73

73:                                               ; preds = %113, %72
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %116

79:                                               ; preds = %73
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %80, i32 0, i32 7
  %82 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %82, i64 %84
  %86 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %85, i32 0, i32 5
  store %struct.TYPE_27__* %86, %struct.TYPE_27__** %7, align 8
  %87 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %87, i32 0, i32 3
  %89 = load %struct.TYPE_28__*, %struct.TYPE_28__** %88, align 8
  %90 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @memset(%struct.TYPE_28__* %89, i32 0, i32 %92)
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @MXGE_LOWPART_TO_U32(i32 %97)
  %99 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 0
  store i32 %98, i32* %99, align 4
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @MXGE_HIGHPART_TO_U32(i32 %103)
  %105 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 2
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* %10, align 4
  %107 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 1
  store i32 %106, i32* %107, align 4
  %108 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %109 = load i32, i32* @MXGEFW_CMD_SET_INTRQ_DMA, align 4
  %110 = call i32 @mxge_send_cmd(%struct.TYPE_26__* %108, i32 %109, %struct.TYPE_28__* %9)
  %111 = load i32, i32* %11, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %11, align 4
  br label %113

113:                                              ; preds = %79
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %10, align 4
  br label %73

116:                                              ; preds = %73
  br label %117

117:                                              ; preds = %116, %69
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %119 = load i32, i32* @MXGEFW_CMD_GET_INTR_COAL_DELAY_OFFSET, align 4
  %120 = call i32 @mxge_send_cmd(%struct.TYPE_26__* %118, i32 %119, %struct.TYPE_28__* %9)
  %121 = load i32, i32* %11, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %11, align 4
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %123, i32 0, i32 10
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %125, %128
  %130 = inttoptr i64 %129 to i32*
  %131 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %131, i32 0, i32 9
  store i32* %130, i32** %132, align 8
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %134 = load i32, i32* @MXGEFW_CMD_GET_IRQ_ACK_OFFSET, align 4
  %135 = call i32 @mxge_send_cmd(%struct.TYPE_26__* %133, i32 %134, %struct.TYPE_28__* %9)
  %136 = load i32, i32* %11, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %11, align 4
  %138 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %138, i32 0, i32 10
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = add nsw i64 %140, %143
  %145 = inttoptr i64 %144 to i32*
  store i32* %145, i32** %8, align 8
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %147 = load i32, i32* @MXGEFW_CMD_GET_IRQ_DEASSERT_OFFSET, align 4
  %148 = call i32 @mxge_send_cmd(%struct.TYPE_26__* %146, i32 %147, %struct.TYPE_28__* %9)
  %149 = load i32, i32* %11, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %11, align 4
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %151, i32 0, i32 10
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %153, %156
  %158 = inttoptr i64 %157 to i32*
  %159 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %159, i32 0, i32 11
  store i32* %158, i32** %160, align 8
  %161 = load i32, i32* %11, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %117
  %164 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @device_printf(i32 %166, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %168 = load i32, i32* %11, align 4
  store i32 %168, i32* %3, align 4
  br label %303

169:                                              ; preds = %117
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %170, i32 0, i32 8
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @htobe32(i32 %172)
  %174 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %174, i32 0, i32 9
  %176 = load i32*, i32** %175, align 8
  store volatile i32 %173, i32* %176, align 4
  %177 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %178 = load i32, i32* @MXGEFW_DMA_TEST, align 4
  %179 = call i32 @mxge_dma_test(%struct.TYPE_26__* %177, i32 %178)
  store i32 0, i32* %10, align 4
  br label %180

180:                                              ; preds = %258, %169
  %181 = load i32, i32* %10, align 4
  %182 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = icmp slt i32 %181, %184
  br i1 %185, label %186, label %261

186:                                              ; preds = %180
  %187 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %187, i32 0, i32 7
  %189 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %188, align 8
  %190 = load i32, i32* %10, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %189, i64 %191
  store %struct.mxge_slice_state* %192, %struct.mxge_slice_state** %6, align 8
  %193 = load i32*, i32** %8, align 8
  %194 = load i32, i32* %10, align 4
  %195 = mul nsw i32 2, %194
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %193, i64 %196
  %198 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %6, align 8
  %199 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %198, i32 0, i32 6
  store i32* %197, i32** %199, align 8
  %200 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %6, align 8
  %201 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %200, i32 0, i32 5
  %202 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %201, i32 0, i32 1
  store i64 0, i64* %202, align 8
  %203 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %6, align 8
  %204 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %203, i32 0, i32 5
  %205 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %204, i32 0, i32 0
  store i64 0, i64* %205, align 8
  %206 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %6, align 8
  %207 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %206, i32 0, i32 4
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %207, i32 0, i32 8
  store i64 0, i64* %208, align 8
  %209 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %6, align 8
  %210 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %209, i32 0, i32 4
  %211 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %210, i32 0, i32 7
  store i64 0, i64* %211, align 8
  %212 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %6, align 8
  %213 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %212, i32 0, i32 4
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 6
  store i64 0, i64* %214, align 8
  %215 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %6, align 8
  %216 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %215, i32 0, i32 4
  %217 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %216, i32 0, i32 5
  store i64 0, i64* %217, align 8
  %218 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %6, align 8
  %219 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %218, i32 0, i32 4
  %220 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %219, i32 0, i32 4
  store i64 0, i64* %220, align 8
  %221 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %6, align 8
  %222 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %221, i32 0, i32 4
  %223 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %222, i32 0, i32 3
  store i64 0, i64* %223, align 8
  %224 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %6, align 8
  %225 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %224, i32 0, i32 4
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 2
  store i64 0, i64* %226, align 8
  %227 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %6, align 8
  %228 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %227, i32 0, i32 4
  %229 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %228, i32 0, i32 1
  store i64 0, i64* %229, align 8
  %230 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %6, align 8
  %231 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %230, i32 0, i32 4
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %231, i32 0, i32 0
  store i64 0, i64* %232, align 8
  %233 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %6, align 8
  %234 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %233, i32 0, i32 3
  %235 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %234, i32 0, i32 0
  store i64 0, i64* %235, align 8
  %236 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %6, align 8
  %237 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %237, i32 0, i32 0
  store i64 0, i64* %238, align 8
  %239 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %6, align 8
  %240 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %240, i32 0, i32 2
  store i64 0, i64* %241, align 8
  %242 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %6, align 8
  %243 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %243, i32 0, i32 1
  store i64 0, i64* %244, align 8
  %245 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %6, align 8
  %246 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %246, i32 0, i32 0
  store i64 0, i64* %247, align 8
  %248 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %6, align 8
  %249 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = icmp ne i32* %250, null
  br i1 %251, label %252, label %257

252:                                              ; preds = %186
  %253 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %6, align 8
  %254 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %253, i32 0, i32 0
  %255 = load i32*, i32** %254, align 8
  %256 = call i32 @bzero(i32* %255, i32 4)
  br label %257

257:                                              ; preds = %252, %186
  br label %258

258:                                              ; preds = %257
  %259 = load i32, i32* %10, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %10, align 4
  br label %180

261:                                              ; preds = %180
  %262 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %262, i32 0, i32 2
  store i32 15, i32* %263, align 8
  %264 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %265 = call i32 @mxge_update_mac_address(%struct.TYPE_26__* %264)
  store i32 %265, i32* %11, align 4
  %266 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %267 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %267, i32 0, i32 6
  %269 = load %struct.TYPE_25__*, %struct.TYPE_25__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @IFF_PROMISC, align 4
  %273 = and i32 %271, %272
  %274 = call i32 @mxge_change_promisc(%struct.TYPE_26__* %266, i32 %273)
  %275 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %276 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %276, i32 0, i32 5
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @mxge_change_pause(%struct.TYPE_26__* %275, i32 %278)
  %280 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %281 = call i32 @mxge_set_multicast_list(%struct.TYPE_26__* %280)
  %282 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %301

286:                                              ; preds = %261
  %287 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 4
  %290 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 0
  store i32 %289, i32* %290, align 4
  %291 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %292 = load i32, i32* @MXGEFW_CMD_SET_THROTTLE_FACTOR, align 4
  %293 = call i32 @mxge_send_cmd(%struct.TYPE_26__* %291, i32 %292, %struct.TYPE_28__* %9)
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %300

295:                                              ; preds = %286
  %296 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %296, i32 0, i32 4
  %298 = load i32, i32* %297, align 8
  %299 = call i32 @device_printf(i32 %298, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %300

300:                                              ; preds = %295, %286
  br label %301

301:                                              ; preds = %300, %261
  %302 = load i32, i32* %11, align 4
  store i32 %302, i32* %3, align 4
  br label %303

303:                                              ; preds = %301, %163, %62, %44, %18
  %304 = load i32, i32* %3, align 4
  ret i32 %304
}

declare dso_local i32 @memset(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @mxge_send_cmd(%struct.TYPE_26__*, i32, %struct.TYPE_28__*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mxge_dummy_rdma(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @MXGE_LOWPART_TO_U32(i32) #1

declare dso_local i32 @MXGE_HIGHPART_TO_U32(i32) #1

declare dso_local i32 @htobe32(i32) #1

declare dso_local i32 @mxge_dma_test(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @mxge_update_mac_address(%struct.TYPE_26__*) #1

declare dso_local i32 @mxge_change_promisc(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @mxge_change_pause(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @mxge_set_multicast_list(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
