; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_workaround_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_workaround_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.ocs_hw_s = type { i8*, %struct.TYPE_13__, i32, %struct.TYPE_11__, i32* }
%struct.TYPE_13__ = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32*, i64* }

@hw_workarounds = common dso_local global %struct.TYPE_12__* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"Override: test: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"HW Workaround: retain TSEND IO length\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"HW Workaround: override max_qentries: %d\0A\00", align 1
@SLI_QTYPE_EQ = common dso_local global i64 0, align 8
@SLI_QTYPE_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"HW Workaround: override RQ max_qentries: %d\0A\00", align 1
@SLI_QTYPE_RQ = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"HW Workaround: set WQE count method=%d\0A\00", align 1
@SLI_QTYPE_WQ = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [40 x i8] c"HW Workaround: set RQE count method=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"HW Workaround: use unreg'd RPI if rnode->indicator == 0xFFFF\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@SLI_RSRC_FCOE_RPI = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [44 x i8] c"sli_resource_alloc unregistered RPI failed\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [43 x i8] c"HW Workaround: disable AR on T10-PI TSEND\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"HW Workaround: disable set_dump_loc\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"HW Workaround: use DIF quarantine\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"HW Workaround: use DIF secondary xri\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"HW Workaround: override FCFI in SRB\0A\00", align 1
@.str.13 = private unnamed_addr constant [64 x i8] c"HW Workaround: fw version is below the minimum for this driver\0A\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"HW Workaround: SGLC misreported - chaining is enabled\0A\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"HW Workaround: not SEND_FRAME capable - disabled\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocs_hw_workaround_setup(%struct.ocs_hw_s* %0) #0 {
  %2 = alloca %struct.ocs_hw_s*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ocs_hw_s* %0, %struct.ocs_hw_s** %2, align 8
  %7 = load %struct.ocs_hw_s*, %struct.ocs_hw_s** %2, align 8
  %8 = getelementptr inbounds %struct.ocs_hw_s, %struct.ocs_hw_s* %7, i32 0, i32 3
  store %struct.TYPE_11__* %8, %struct.TYPE_11__** %4, align 8
  %9 = load %struct.ocs_hw_s*, %struct.ocs_hw_s** %2, align 8
  %10 = getelementptr inbounds %struct.ocs_hw_s, %struct.ocs_hw_s* %9, i32 0, i32 1
  %11 = call i32 @ocs_memset(%struct.TYPE_13__* %10, i32 0, i32 96)
  %12 = load %struct.ocs_hw_s*, %struct.ocs_hw_s** %2, align 8
  %13 = getelementptr inbounds %struct.ocs_hw_s, %struct.ocs_hw_s* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.ocs_hw_s*, %struct.ocs_hw_s** %2, align 8
  %18 = getelementptr inbounds %struct.ocs_hw_s, %struct.ocs_hw_s* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i8* @parse_fw_version(i8* %19)
  %21 = load %struct.ocs_hw_s*, %struct.ocs_hw_s** %2, align 8
  %22 = getelementptr inbounds %struct.ocs_hw_s, %struct.ocs_hw_s* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 12
  store i8* %20, i8** %23, align 8
  br label %36

24:                                               ; preds = %1
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = call i8* @parse_fw_version(i8* %31)
  %33 = load %struct.ocs_hw_s*, %struct.ocs_hw_s** %2, align 8
  %34 = getelementptr inbounds %struct.ocs_hw_s, %struct.ocs_hw_s* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 12
  store i8* %32, i8** %35, align 8
  br label %36

36:                                               ; preds = %24, %16
  store i64 0, i64* %5, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** @hw_workarounds, align 8
  store %struct.TYPE_12__* %37, %struct.TYPE_12__** %3, align 8
  br label %38

38:                                               ; preds = %276, %36
  %39 = load i64, i64* %5, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** @hw_workarounds, align 8
  %41 = call i64 @ARRAY_SIZE(%struct.TYPE_12__* %40)
  %42 = icmp slt i64 %39, %41
  br i1 %42, label %43, label %281

43:                                               ; preds = %38
  %44 = load %struct.ocs_hw_s*, %struct.ocs_hw_s** %2, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %46 = call i64 @ocs_hw_workaround_match(%struct.ocs_hw_s* %44, %struct.TYPE_12__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %275

48:                                               ; preds = %43
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %274 [
    i32 132, label %52
    i32 135, label %60
    i32 138, label %68
    i32 137, label %106
    i32 128, label %134
    i32 134, label %153
    i32 129, label %172
    i32 142, label %202
    i32 141, label %211
    i32 131, label %220
    i32 130, label %229
    i32 136, label %238
    i32 140, label %247
    i32 133, label %256
    i32 139, label %265
  ]

52:                                               ; preds = %48
  %53 = load %struct.ocs_hw_s*, %struct.ocs_hw_s** %2, align 8
  %54 = getelementptr inbounds %struct.ocs_hw_s, %struct.ocs_hw_s* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32, i8*, ...) @ocs_log_debug(i32 %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %274

60:                                               ; preds = %48
  %61 = load %struct.ocs_hw_s*, %struct.ocs_hw_s** %2, align 8
  %62 = getelementptr inbounds %struct.ocs_hw_s, %struct.ocs_hw_s* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i32, i8*, ...) @ocs_log_debug(i32 %63, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %65 = load %struct.ocs_hw_s*, %struct.ocs_hw_s** %2, align 8
  %66 = getelementptr inbounds %struct.ocs_hw_s, %struct.ocs_hw_s* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  br label %274

68:                                               ; preds = %48
  %69 = load %struct.ocs_hw_s*, %struct.ocs_hw_s** %2, align 8
  %70 = getelementptr inbounds %struct.ocs_hw_s, %struct.ocs_hw_s* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i32, i8*, ...) @ocs_log_debug(i32 %71, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load i64, i64* @SLI_QTYPE_EQ, align 8
  store i64 %76, i64* %6, align 8
  br label %77

77:                                               ; preds = %102, %68
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* @SLI_QTYPE_MAX, align 8
  %80 = icmp ult i64 %78, %79
  br i1 %80, label %81, label %105

81:                                               ; preds = %77
  %82 = load %struct.ocs_hw_s*, %struct.ocs_hw_s** %2, align 8
  %83 = getelementptr inbounds %struct.ocs_hw_s, %struct.ocs_hw_s* %82, i32 0, i32 4
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* %6, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp sgt i32 %87, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %81
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.ocs_hw_s*, %struct.ocs_hw_s** %2, align 8
  %97 = getelementptr inbounds %struct.ocs_hw_s, %struct.ocs_hw_s* %96, i32 0, i32 4
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* %6, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32 %95, i32* %100, align 4
  br label %101

101:                                              ; preds = %92, %81
  br label %102

102:                                              ; preds = %101
  %103 = load i64, i64* %6, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %6, align 8
  br label %77

105:                                              ; preds = %77
  br label %274

106:                                              ; preds = %48
  %107 = load %struct.ocs_hw_s*, %struct.ocs_hw_s** %2, align 8
  %108 = getelementptr inbounds %struct.ocs_hw_s, %struct.ocs_hw_s* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i32, i8*, ...) @ocs_log_debug(i32 %109, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %112)
  %114 = load %struct.ocs_hw_s*, %struct.ocs_hw_s** %2, align 8
  %115 = getelementptr inbounds %struct.ocs_hw_s, %struct.ocs_hw_s* %114, i32 0, i32 4
  %116 = load i32*, i32** %115, align 8
  %117 = load i64, i64* @SLI_QTYPE_RQ, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp sgt i32 %119, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %106
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.ocs_hw_s*, %struct.ocs_hw_s** %2, align 8
  %129 = getelementptr inbounds %struct.ocs_hw_s, %struct.ocs_hw_s* %128, i32 0, i32 4
  %130 = load i32*, i32** %129, align 8
  %131 = load i64, i64* @SLI_QTYPE_RQ, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  store i32 %127, i32* %132, align 4
  br label %133

133:                                              ; preds = %124, %106
  br label %274

134:                                              ; preds = %48
  %135 = load %struct.ocs_hw_s*, %struct.ocs_hw_s** %2, align 8
  %136 = getelementptr inbounds %struct.ocs_hw_s, %struct.ocs_hw_s* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 (i32, i8*, ...) @ocs_log_debug(i32 %137, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %140)
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = load i64, i64* @SLI_QTYPE_WQ, align 8
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  store i32 %144, i32* %150, align 4
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %152 = call i32 @sli_calc_max_qentries(%struct.TYPE_11__* %151)
  br label %274

153:                                              ; preds = %48
  %154 = load %struct.ocs_hw_s*, %struct.ocs_hw_s** %2, align 8
  %155 = getelementptr inbounds %struct.ocs_hw_s, %struct.ocs_hw_s* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 (i32, i8*, ...) @ocs_log_debug(i32 %156, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %159)
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = load i64, i64* @SLI_QTYPE_RQ, align 8
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  store i32 %163, i32* %169, align 4
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %171 = call i32 @sli_calc_max_qentries(%struct.TYPE_11__* %170)
  br label %274

172:                                              ; preds = %48
  %173 = load %struct.ocs_hw_s*, %struct.ocs_hw_s** %2, align 8
  %174 = getelementptr inbounds %struct.ocs_hw_s, %struct.ocs_hw_s* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = call i32 (i32, i8*, ...) @ocs_log_debug(i32 %175, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0))
  %177 = load i8*, i8** @TRUE, align 8
  %178 = load %struct.ocs_hw_s*, %struct.ocs_hw_s** %2, align 8
  %179 = getelementptr inbounds %struct.ocs_hw_s, %struct.ocs_hw_s* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 9
  store i8* %177, i8** %180, align 8
  %181 = load %struct.ocs_hw_s*, %struct.ocs_hw_s** %2, align 8
  %182 = getelementptr inbounds %struct.ocs_hw_s, %struct.ocs_hw_s* %181, i32 0, i32 3
  %183 = load i32, i32* @SLI_RSRC_FCOE_RPI, align 4
  %184 = load %struct.ocs_hw_s*, %struct.ocs_hw_s** %2, align 8
  %185 = getelementptr inbounds %struct.ocs_hw_s, %struct.ocs_hw_s* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 11
  %187 = load %struct.ocs_hw_s*, %struct.ocs_hw_s** %2, align 8
  %188 = getelementptr inbounds %struct.ocs_hw_s, %struct.ocs_hw_s* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 10
  %190 = call i32 @sli_resource_alloc(%struct.TYPE_11__* %182, i32 %183, i32* %186, i32* %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %201

192:                                              ; preds = %172
  %193 = load %struct.ocs_hw_s*, %struct.ocs_hw_s** %2, align 8
  %194 = getelementptr inbounds %struct.ocs_hw_s, %struct.ocs_hw_s* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @ocs_log_err(i32 %195, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  %197 = load i8*, i8** @FALSE, align 8
  %198 = load %struct.ocs_hw_s*, %struct.ocs_hw_s** %2, align 8
  %199 = getelementptr inbounds %struct.ocs_hw_s, %struct.ocs_hw_s* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 9
  store i8* %197, i8** %200, align 8
  br label %201

201:                                              ; preds = %192, %172
  br label %274

202:                                              ; preds = %48
  %203 = load %struct.ocs_hw_s*, %struct.ocs_hw_s** %2, align 8
  %204 = getelementptr inbounds %struct.ocs_hw_s, %struct.ocs_hw_s* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = call i32 (i32, i8*, ...) @ocs_log_debug(i32 %205, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0))
  %207 = load i8*, i8** @TRUE, align 8
  %208 = load %struct.ocs_hw_s*, %struct.ocs_hw_s** %2, align 8
  %209 = getelementptr inbounds %struct.ocs_hw_s, %struct.ocs_hw_s* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 8
  store i8* %207, i8** %210, align 8
  br label %274

211:                                              ; preds = %48
  %212 = load %struct.ocs_hw_s*, %struct.ocs_hw_s** %2, align 8
  %213 = getelementptr inbounds %struct.ocs_hw_s, %struct.ocs_hw_s* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = call i32 (i32, i8*, ...) @ocs_log_debug(i32 %214, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  %216 = load i8*, i8** @TRUE, align 8
  %217 = load %struct.ocs_hw_s*, %struct.ocs_hw_s** %2, align 8
  %218 = getelementptr inbounds %struct.ocs_hw_s, %struct.ocs_hw_s* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 7
  store i8* %216, i8** %219, align 8
  br label %274

220:                                              ; preds = %48
  %221 = load %struct.ocs_hw_s*, %struct.ocs_hw_s** %2, align 8
  %222 = getelementptr inbounds %struct.ocs_hw_s, %struct.ocs_hw_s* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = call i32 (i32, i8*, ...) @ocs_log_debug(i32 %223, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  %225 = load i8*, i8** @TRUE, align 8
  %226 = load %struct.ocs_hw_s*, %struct.ocs_hw_s** %2, align 8
  %227 = getelementptr inbounds %struct.ocs_hw_s, %struct.ocs_hw_s* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 6
  store i8* %225, i8** %228, align 8
  br label %274

229:                                              ; preds = %48
  %230 = load %struct.ocs_hw_s*, %struct.ocs_hw_s** %2, align 8
  %231 = getelementptr inbounds %struct.ocs_hw_s, %struct.ocs_hw_s* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = call i32 (i32, i8*, ...) @ocs_log_debug(i32 %232, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0))
  %234 = load i8*, i8** @TRUE, align 8
  %235 = load %struct.ocs_hw_s*, %struct.ocs_hw_s** %2, align 8
  %236 = getelementptr inbounds %struct.ocs_hw_s, %struct.ocs_hw_s* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 5
  store i8* %234, i8** %237, align 8
  br label %274

238:                                              ; preds = %48
  %239 = load %struct.ocs_hw_s*, %struct.ocs_hw_s** %2, align 8
  %240 = getelementptr inbounds %struct.ocs_hw_s, %struct.ocs_hw_s* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = call i32 (i32, i8*, ...) @ocs_log_debug(i32 %241, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  %243 = load i8*, i8** @TRUE, align 8
  %244 = load %struct.ocs_hw_s*, %struct.ocs_hw_s** %2, align 8
  %245 = getelementptr inbounds %struct.ocs_hw_s, %struct.ocs_hw_s* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 4
  store i8* %243, i8** %246, align 8
  br label %274

247:                                              ; preds = %48
  %248 = load %struct.ocs_hw_s*, %struct.ocs_hw_s** %2, align 8
  %249 = getelementptr inbounds %struct.ocs_hw_s, %struct.ocs_hw_s* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = call i32 (i32, i8*, ...) @ocs_log_debug(i32 %250, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.13, i64 0, i64 0))
  %252 = load i8*, i8** @TRUE, align 8
  %253 = load %struct.ocs_hw_s*, %struct.ocs_hw_s** %2, align 8
  %254 = getelementptr inbounds %struct.ocs_hw_s, %struct.ocs_hw_s* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 3
  store i8* %252, i8** %255, align 8
  br label %274

256:                                              ; preds = %48
  %257 = load %struct.ocs_hw_s*, %struct.ocs_hw_s** %2, align 8
  %258 = getelementptr inbounds %struct.ocs_hw_s, %struct.ocs_hw_s* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = call i32 (i32, i8*, ...) @ocs_log_debug(i32 %259, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.14, i64 0, i64 0))
  %261 = load i8*, i8** @TRUE, align 8
  %262 = load %struct.ocs_hw_s*, %struct.ocs_hw_s** %2, align 8
  %263 = getelementptr inbounds %struct.ocs_hw_s, %struct.ocs_hw_s* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i32 0, i32 2
  store i8* %261, i8** %264, align 8
  br label %274

265:                                              ; preds = %48
  %266 = load %struct.ocs_hw_s*, %struct.ocs_hw_s** %2, align 8
  %267 = getelementptr inbounds %struct.ocs_hw_s, %struct.ocs_hw_s* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = call i32 (i32, i8*, ...) @ocs_log_debug(i32 %268, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i64 0, i64 0))
  %270 = load i8*, i8** @TRUE, align 8
  %271 = load %struct.ocs_hw_s*, %struct.ocs_hw_s** %2, align 8
  %272 = getelementptr inbounds %struct.ocs_hw_s, %struct.ocs_hw_s* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %272, i32 0, i32 1
  store i8* %270, i8** %273, align 8
  br label %274

274:                                              ; preds = %48, %265, %256, %247, %238, %229, %220, %211, %202, %201, %153, %134, %133, %105, %60, %52
  br label %275

275:                                              ; preds = %274, %43
  br label %276

276:                                              ; preds = %275
  %277 = load i64, i64* %5, align 8
  %278 = add nsw i64 %277, 1
  store i64 %278, i64* %5, align 8
  %279 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i32 1
  store %struct.TYPE_12__* %280, %struct.TYPE_12__** %3, align 8
  br label %38

281:                                              ; preds = %38
  ret void
}

declare dso_local i32 @ocs_memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i8* @parse_fw_version(i8*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_12__*) #1

declare dso_local i64 @ocs_hw_workaround_match(%struct.ocs_hw_s*, %struct.TYPE_12__*) #1

declare dso_local i32 @ocs_log_debug(i32, i8*, ...) #1

declare dso_local i32 @sli_calc_max_qentries(%struct.TYPE_11__*) #1

declare dso_local i32 @sli_resource_alloc(%struct.TYPE_11__*, i32, i32*, i32*) #1

declare dso_local i32 @ocs_log_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
