; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_slice_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_slice_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxge_slice_state = type { %struct.TYPE_20__, %struct.TYPE_21__*, %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_20__ = type { i32, i32, i32, %struct.TYPE_19__*, i64, %struct.TYPE_17__*, i32* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_18__*, i64, %struct.mxge_slice_state* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__*, i32* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32*, i32*, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_18__* }
%struct.TYPE_22__ = type { i32 }

@MXGEFW_CMD_GET_SEND_OFFSET = common dso_local global i32 0, align 4
@MXGEFW_ETH_SEND_GO = common dso_local global i64 0, align 8
@MXGEFW_ETH_SEND_STOP = common dso_local global i64 0, align 8
@MXGEFW_CMD_GET_SMALL_RX_OFFSET = common dso_local global i32 0, align 4
@MXGEFW_CMD_GET_BIG_RX_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to get ring sizes or locations\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"alloced %d/%d smalls\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ETHER_HDR_LEN = common dso_local global i64 0, align 8
@ETHER_VLAN_ENCAP_LEN = common dso_local global i64 0, align 8
@MXGEFW_PAD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"alloced %d/%d bigs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxge_slice_state*, i32, i32)* @mxge_slice_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxge_slice_open(%struct.mxge_slice_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mxge_slice_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_22__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mxge_slice_state* %0, %struct.mxge_slice_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %15 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %14, i32 0, i32 1
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  store %struct.TYPE_21__* %16, %struct.TYPE_21__** %8, align 8
  %17 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 3
  %20 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %19, align 8
  %21 = ptrtoint %struct.mxge_slice_state* %17 to i64
  %22 = ptrtoint %struct.mxge_slice_state* %20 to i64
  %23 = sub i64 %21, %22
  %24 = sdiv exact i64 %23, 112
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %13, align 4
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  %29 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %30 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  store %struct.TYPE_18__* %28, %struct.TYPE_18__** %31, align 8
  store i32 0, i32* %11, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %77

34:                                               ; preds = %3
  %35 = load i32, i32* %13, align 4
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %38 = load i32, i32* @MXGEFW_CMD_GET_SEND_OFFSET, align 4
  %39 = call i32 @mxge_send_cmd(%struct.TYPE_21__* %37, i32 %38, %struct.TYPE_22__* %9)
  store i32 %39, i32* %11, align 4
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %42, %45
  %47 = inttoptr i64 %46 to i32*
  %48 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %49 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 2
  store i32* %47, i32** %50, align 8
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @MXGEFW_ETH_SEND_GO, align 8
  %55 = add nsw i64 %53, %54
  %56 = load i32, i32* %13, align 4
  %57 = mul nsw i32 64, %56
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %55, %58
  %60 = inttoptr i64 %59 to i32*
  %61 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %62 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  store i32* %60, i32** %63, align 8
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @MXGEFW_ETH_SEND_STOP, align 8
  %68 = add nsw i64 %66, %67
  %69 = load i32, i32* %13, align 4
  %70 = mul nsw i32 64, %69
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %68, %71
  %73 = inttoptr i64 %72 to i32*
  %74 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %75 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  store i32* %73, i32** %76, align 8
  br label %77

77:                                               ; preds = %34, %3
  %78 = load i32, i32* %13, align 4
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  store i32 %78, i32* %79, align 4
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %81 = load i32, i32* @MXGEFW_CMD_GET_SMALL_RX_OFFSET, align 4
  %82 = call i32 @mxge_send_cmd(%struct.TYPE_21__* %80, i32 %81, %struct.TYPE_22__* %9)
  %83 = load i32, i32* %11, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %11, align 4
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %87, %90
  %92 = inttoptr i64 %91 to i32*
  %93 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %94 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 2
  store i32* %92, i32** %95, align 8
  %96 = load i32, i32* %13, align 4
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  store i32 %96, i32* %97, align 4
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %99 = load i32, i32* @MXGEFW_CMD_GET_BIG_RX_OFFSET, align 4
  %100 = call i32 @mxge_send_cmd(%struct.TYPE_21__* %98, i32 %99, %struct.TYPE_22__* %9)
  %101 = load i32, i32* %11, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %11, align 4
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %105, %108
  %110 = inttoptr i64 %109 to i32*
  %111 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %112 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 6
  store i32* %110, i32** %113, align 8
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %77
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (i32, i8*, ...) @device_printf(i32 %119, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %121 = load i32, i32* @EIO, align 4
  store i32 %121, i32* %4, align 4
  br label %259

122:                                              ; preds = %77
  store i32 0, i32* %12, align 4
  br label %123

123:                                              ; preds = %159, %122
  %124 = load i32, i32* %12, align 4
  %125 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %126 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp sle i32 %124, %128
  br i1 %129, label %130, label %162

130:                                              ; preds = %123
  %131 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %132 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %133, align 8
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %10, align 4
  %140 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %12, align 4
  %143 = call i32 @mxge_get_buf_small(%struct.mxge_slice_state* %140, i32 %141, i32 %142)
  store i32 %143, i32* %11, align 4
  %144 = load i32, i32* %11, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %158

146:                                              ; preds = %130
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %12, align 4
  %151 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %152 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, 1
  %156 = call i32 (i32, i8*, ...) @device_printf(i32 %149, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %150, i32 %155)
  %157 = load i32, i32* @ENOMEM, align 4
  store i32 %157, i32* %4, align 4
  br label %259

158:                                              ; preds = %130
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %12, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %12, align 4
  br label %123

162:                                              ; preds = %123
  store i32 0, i32* %12, align 4
  br label %163

163:                                              ; preds = %187, %162
  %164 = load i32, i32* %12, align 4
  %165 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %166 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp sle i32 %164, %168
  br i1 %169, label %170, label %190

170:                                              ; preds = %163
  %171 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %172 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i32 0, i32 5
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %173, align 8
  %175 = load i32, i32* %12, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 0
  store i32 -1, i32* %178, align 4
  %179 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %180 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 5
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %181, align 8
  %183 = load i32, i32* %12, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 1
  store i32 -1, i32* %186, align 4
  br label %187

187:                                              ; preds = %170
  %188 = load i32, i32* %12, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %12, align 4
  br label %163

190:                                              ; preds = %163
  %191 = load i32, i32* %6, align 4
  %192 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %193 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 1
  store i32 %191, i32* %194, align 4
  %195 = load i32, i32* %7, align 4
  %196 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %197 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 2
  store i32 %195, i32* %198, align 8
  %199 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %200 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %199, i32 0, i32 1
  %201 = load %struct.TYPE_21__*, %struct.TYPE_21__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @ETHER_HDR_LEN, align 8
  %207 = add nsw i64 %205, %206
  %208 = load i64, i64* @ETHER_VLAN_ENCAP_LEN, align 8
  %209 = add nsw i64 %207, %208
  %210 = load i64, i64* @MXGEFW_PAD, align 8
  %211 = add nsw i64 %209, %210
  %212 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %213 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %213, i32 0, i32 4
  store i64 %211, i64* %214, align 8
  store i32 0, i32* %12, align 4
  br label %215

215:                                              ; preds = %251, %190
  %216 = load i32, i32* %12, align 4
  %217 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %218 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = icmp sle i32 %216, %220
  br i1 %221, label %222, label %258

222:                                              ; preds = %215
  %223 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %224 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %224, i32 0, i32 3
  %226 = load %struct.TYPE_19__*, %struct.TYPE_19__** %225, align 8
  %227 = load i32, i32* %12, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  store i32 %231, i32* %10, align 4
  %232 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %233 = load i32, i32* %10, align 4
  %234 = load i32, i32* %12, align 4
  %235 = call i32 @mxge_get_buf_big(%struct.mxge_slice_state* %232, i32 %233, i32 %234)
  store i32 %235, i32* %11, align 4
  %236 = load i32, i32* %11, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %250

238:                                              ; preds = %222
  %239 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* %12, align 4
  %243 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %244 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = add nsw i32 %246, 1
  %248 = call i32 (i32, i8*, ...) @device_printf(i32 %241, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %242, i32 %247)
  %249 = load i32, i32* @ENOMEM, align 4
  store i32 %249, i32* %4, align 4
  br label %259

250:                                              ; preds = %222
  br label %251

251:                                              ; preds = %250
  %252 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %5, align 8
  %253 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* %12, align 4
  %257 = add nsw i32 %256, %255
  store i32 %257, i32* %12, align 4
  br label %215

258:                                              ; preds = %215
  store i32 0, i32* %4, align 4
  br label %259

259:                                              ; preds = %258, %238, %146, %116
  %260 = load i32, i32* %4, align 4
  ret i32 %260
}

declare dso_local i32 @mxge_send_cmd(%struct.TYPE_21__*, i32, %struct.TYPE_22__*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @mxge_get_buf_small(%struct.mxge_slice_state*, i32, i32) #1

declare dso_local i32 @mxge_get_buf_big(%struct.mxge_slice_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
