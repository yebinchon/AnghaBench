; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cmd_common_create_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cmd_common_create_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64, i32 }
%struct.TYPE_19__ = type { i32, i64 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_13__*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i8*, i8* }
%struct.TYPE_12__ = type { i32, i32, i8*, i8* }
%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_15__*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i8*, i8* }
%struct.TYPE_14__ = type { i32, i32, i8*, i8* }

@SLI_PAGE_SIZE = common dso_local global i32 0, align 4
@SLI4_CQE_BYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unsupported IF_TYPE %d\0A\00", align 1
@SLI4_PORT_TYPE_FC = common dso_local global i64 0, align 8
@SLI4_OPC_COMMON_CREATE_CQ = common dso_local global i8* null, align 8
@SLI4_SUBSYSTEM_COMMON = common dso_local global i8* null, align 8
@SLI4_CQ_CNT_256 = common dso_local global i8* null, align 8
@SLI4_CQ_CNT_512 = common dso_local global i8* null, align 8
@SLI4_CQ_CNT_1024 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"num_pages %d not valid\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@SLI4_COMMON_CREATE_CQ_V2_MAX_PAGES = common dso_local global i32 0, align 4
@SLI4_CQ_CNT_LARGE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i8*, i64, %struct.TYPE_19__*, i8*, i8*)* @sli_cmd_common_create_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sli_cmd_common_create_cq(%struct.TYPE_16__* %0, i8* %1, i64 %2, %struct.TYPE_19__* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %14, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %15, align 8
  store i32 0, i32* %16, align 4
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %29 = load i32, i32* %19, align 4
  switch i32 %29, label %66 [
    i32 129, label %30
    i32 128, label %42
  ]

30:                                               ; preds = %6
  %31 = load i32, i32* @SLI_PAGE_SIZE, align 4
  store i32 %31, i32* %20, align 4
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %20, align 4
  %36 = call i32 @sli_page_count(i32 %34, i32 %35)
  store i32 %36, i32* %21, align 4
  %37 = load i32, i32* %21, align 4
  %38 = mul nsw i32 8, %37
  %39 = sext i32 %38 to i64
  %40 = add i64 80, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %22, align 4
  br label %72

42:                                               ; preds = %6
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @SLI4_CQE_BYTES, align 4
  %47 = sdiv i32 %45, %46
  store i32 %47, i32* %24, align 4
  %48 = load i32, i32* %24, align 4
  switch i32 %48, label %51 [
    i32 256, label %49
    i32 512, label %49
    i32 1024, label %49
    i32 2048, label %49
    i32 4096, label %50
  ]

49:                                               ; preds = %42, %42, %42, %42
  store i32 1, i32* %23, align 4
  br label %52

50:                                               ; preds = %42
  store i32 2, i32* %23, align 4
  br label %52

51:                                               ; preds = %42
  store i32 0, i32* %7, align 4
  br label %315

52:                                               ; preds = %50, %49
  %53 = load i32, i32* %23, align 4
  %54 = load i32, i32* @SLI_PAGE_SIZE, align 4
  %55 = mul nsw i32 %53, %54
  store i32 %55, i32* %20, align 4
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %20, align 4
  %60 = call i32 @sli_page_count(i32 %58, i32 %59)
  store i32 %60, i32* %21, align 4
  %61 = load i32, i32* %21, align 4
  %62 = mul nsw i32 8, %61
  %63 = sext i32 %62 to i64
  %64 = add i64 88, %63
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %22, align 4
  br label %72

66:                                               ; preds = %6
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %19, align 4
  %71 = call i32 @ocs_log_test(i32 %69, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %70)
  store i32 -1, i32* %7, align 4
  br label %315

72:                                               ; preds = %52, %30
  %73 = load i64, i64* @SLI4_PORT_TYPE_FC, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %73, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %72
  %79 = load i32, i32* %22, align 4
  %80 = sext i32 %79 to i64
  %81 = call i32 @max(i64 %80, i32 4)
  store i32 %81, i32* %25, align 4
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = load i64, i64* %10, align 8
  %85 = load i32, i32* %25, align 4
  %86 = call i32 @sli_cmd_sli_config(%struct.TYPE_16__* %82, i8* %83, i64 %84, i32 %85, i32* null)
  store i32 %86, i32* %16, align 4
  br label %87

87:                                               ; preds = %78, %72
  %88 = load i32, i32* %19, align 4
  switch i32 %88, label %311 [
    i32 129, label %89
    i32 128, label %189
  ]

89:                                               ; preds = %87
  %90 = load i8*, i8** %9, align 8
  %91 = bitcast i8* %90 to i32*
  %92 = load i32, i32* %16, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = bitcast i32* %94 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %95, %struct.TYPE_18__** %14, align 8
  %96 = load i8*, i8** @SLI4_OPC_COMMON_CREATE_CQ, align 8
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 7
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 3
  store i8* %96, i8** %99, align 8
  %100 = load i8*, i8** @SLI4_SUBSYSTEM_COMMON, align 8
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 7
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 2
  store i8* %100, i8** %103, align 8
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 7
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  store i32 0, i32* %106, align 4
  %107 = load i32, i32* %22, align 4
  %108 = sext i32 %107 to i64
  %109 = sub i64 %108, 4
  %110 = trunc i64 %109 to i32
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 7
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 8
  %114 = load i32, i32* %21, align 4
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  switch i32 %119, label %132 [
    i32 1, label %120
    i32 2, label %124
    i32 4, label %128
  ]

120:                                              ; preds = %89
  %121 = load i8*, i8** @SLI4_CQ_CNT_256, align 8
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 6
  store i8* %121, i8** %123, align 8
  br label %140

124:                                              ; preds = %89
  %125 = load i8*, i8** @SLI4_CQ_CNT_512, align 8
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 6
  store i8* %125, i8** %127, align 8
  br label %140

128:                                              ; preds = %89
  %129 = load i8*, i8** @SLI4_CQ_CNT_1024, align 8
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 6
  store i8* %129, i8** %131, align 8
  br label %140

132:                                              ; preds = %89
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @ocs_log_test(i32 %135, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %138)
  store i32 -1, i32* %7, align 4
  br label %315

140:                                              ; preds = %128, %124, %120
  %141 = load i8*, i8** @TRUE, align 8
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 5
  store i8* %141, i8** %143, align 8
  %144 = load i8*, i8** @TRUE, align 8
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 4
  store i8* %144, i8** %146, align 8
  %147 = load i8*, i8** @FALSE, align 8
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 3
  store i8* %147, i8** %149, align 8
  %150 = load i8*, i8** %12, align 8
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 2
  store i8* %150, i8** %152, align 8
  store i32 0, i32* %17, align 4
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  store i64 %155, i64* %18, align 8
  br label %156

156:                                              ; preds = %181, %140
  %157 = load i32, i32* %17, align 4
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp slt i32 %157, %160
  br i1 %161, label %162, label %188

162:                                              ; preds = %156
  %163 = load i64, i64* %18, align 8
  %164 = call i8* @ocs_addr32_lo(i64 %163)
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %166, align 8
  %168 = load i32, i32* %17, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 1
  store i8* %164, i8** %171, align 8
  %172 = load i64, i64* %18, align 8
  %173 = call i8* @ocs_addr32_hi(i64 %172)
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %175, align 8
  %177 = load i32, i32* %17, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 0
  store i8* %173, i8** %180, align 8
  br label %181

181:                                              ; preds = %162
  %182 = load i32, i32* %17, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %17, align 4
  %184 = load i32, i32* %20, align 4
  %185 = sext i32 %184 to i64
  %186 = load i64, i64* %18, align 8
  %187 = add i64 %186, %185
  store i64 %187, i64* %18, align 8
  br label %156

188:                                              ; preds = %156
  br label %311

189:                                              ; preds = %87
  %190 = load i8*, i8** %9, align 8
  %191 = bitcast i8* %190 to i32*
  %192 = load i32, i32* %16, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = bitcast i32* %194 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %195, %struct.TYPE_17__** %15, align 8
  %196 = load i8*, i8** @SLI4_OPC_COMMON_CREATE_CQ, align 8
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 9
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 3
  store i8* %196, i8** %199, align 8
  %200 = load i8*, i8** @SLI4_SUBSYSTEM_COMMON, align 8
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 9
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 2
  store i8* %200, i8** %203, align 8
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 9
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 0
  store i32 2, i32* %206, align 8
  %207 = load i32, i32* %22, align 4
  %208 = sext i32 %207 to i64
  %209 = sub i64 %208, 4
  %210 = trunc i64 %209 to i32
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 9
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 1
  store i32 %210, i32* %213, align 4
  %214 = load i32, i32* %23, align 4
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 0
  store i32 %214, i32* %216, align 8
  %217 = load i32, i32* %21, align 4
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 1
  store i32 %217, i32* %219, align 4
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %230

224:                                              ; preds = %189
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @SLI4_COMMON_CREATE_CQ_V2_MAX_PAGES, align 4
  %229 = icmp sgt i32 %227, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %224, %189
  store i32 0, i32* %7, align 4
  br label %315

231:                                              ; preds = %224
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  switch i32 %234, label %254 [
    i32 1, label %235
    i32 2, label %239
    i32 4, label %243
    i32 8, label %247
  ]

235:                                              ; preds = %231
  %236 = load i8*, i8** @SLI4_CQ_CNT_256, align 8
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 8
  store i8* %236, i8** %238, align 8
  br label %262

239:                                              ; preds = %231
  %240 = load i8*, i8** @SLI4_CQ_CNT_512, align 8
  %241 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %242 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %241, i32 0, i32 8
  store i8* %240, i8** %242, align 8
  br label %262

243:                                              ; preds = %231
  %244 = load i8*, i8** @SLI4_CQ_CNT_1024, align 8
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 8
  store i8* %244, i8** %246, align 8
  br label %262

247:                                              ; preds = %231
  %248 = load i8*, i8** @SLI4_CQ_CNT_LARGE, align 8
  %249 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %250 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %249, i32 0, i32 8
  store i8* %248, i8** %250, align 8
  %251 = load i32, i32* %24, align 4
  %252 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %253 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %252, i32 0, i32 2
  store i32 %251, i32* %253, align 8
  br label %262

254:                                              ; preds = %231
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %259 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @ocs_log_test(i32 %257, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %260)
  store i32 -1, i32* %7, align 4
  br label %315

262:                                              ; preds = %247, %243, %239, %235
  %263 = load i8*, i8** @TRUE, align 8
  %264 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %265 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %264, i32 0, i32 7
  store i8* %263, i8** %265, align 8
  %266 = load i8*, i8** @TRUE, align 8
  %267 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %268 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %267, i32 0, i32 6
  store i8* %266, i8** %268, align 8
  %269 = load i8*, i8** @FALSE, align 8
  %270 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %271 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %270, i32 0, i32 5
  store i8* %269, i8** %271, align 8
  %272 = load i8*, i8** %12, align 8
  %273 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %274 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %273, i32 0, i32 4
  store i8* %272, i8** %274, align 8
  store i32 0, i32* %17, align 4
  %275 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %276 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  store i64 %277, i64* %18, align 8
  br label %278

278:                                              ; preds = %303, %262
  %279 = load i32, i32* %17, align 4
  %280 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %281 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = icmp slt i32 %279, %282
  br i1 %283, label %284, label %310

284:                                              ; preds = %278
  %285 = load i64, i64* %18, align 8
  %286 = call i8* @ocs_addr32_lo(i64 %285)
  %287 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %288 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %287, i32 0, i32 3
  %289 = load %struct.TYPE_15__*, %struct.TYPE_15__** %288, align 8
  %290 = load i32, i32* %17, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %292, i32 0, i32 1
  store i8* %286, i8** %293, align 8
  %294 = load i64, i64* %18, align 8
  %295 = call i8* @ocs_addr32_hi(i64 %294)
  %296 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %297 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %296, i32 0, i32 3
  %298 = load %struct.TYPE_15__*, %struct.TYPE_15__** %297, align 8
  %299 = load i32, i32* %17, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %298, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %301, i32 0, i32 0
  store i8* %295, i8** %302, align 8
  br label %303

303:                                              ; preds = %284
  %304 = load i32, i32* %17, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %17, align 4
  %306 = load i32, i32* %20, align 4
  %307 = sext i32 %306 to i64
  %308 = load i64, i64* %18, align 8
  %309 = add i64 %308, %307
  store i64 %309, i64* %18, align 8
  br label %278

310:                                              ; preds = %278
  br label %311

311:                                              ; preds = %87, %310, %188
  %312 = load i32, i32* %16, align 4
  %313 = load i32, i32* %22, align 4
  %314 = add nsw i32 %312, %313
  store i32 %314, i32* %7, align 4
  br label %315

315:                                              ; preds = %311, %254, %230, %132, %66, %51
  %316 = load i32, i32* %7, align 4
  ret i32 %316
}

declare dso_local i32 @sli_page_count(i32, i32) #1

declare dso_local i32 @ocs_log_test(i32, i8*, i32) #1

declare dso_local i32 @max(i64, i32) #1

declare dso_local i32 @sli_cmd_sli_config(%struct.TYPE_16__*, i8*, i64, i32, i32*) #1

declare dso_local i8* @ocs_addr32_lo(i64) #1

declare dso_local i8* @ocs_addr32_hi(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
