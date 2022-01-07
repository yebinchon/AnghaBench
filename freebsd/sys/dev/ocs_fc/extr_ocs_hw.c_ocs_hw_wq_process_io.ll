; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_wq_process_io.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_wq_process_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i32, i32, i32, %struct.TYPE_35__*, i32, i8*, i8*, i8*, i32 (%struct.TYPE_27__*, i32, i8*, i8*, i8*, i8*)*, i8*, %struct.TYPE_27__*, i32, i32, i32, i8*, i8*, i32, i8*, %struct.TYPE_38__* }
%struct.TYPE_35__ = type { %struct.TYPE_29__, %struct.TYPE_29__*, i32, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32, i32, i32 }
%struct.TYPE_38__ = type { %struct.TYPE_34__, %struct.TYPE_33__, %struct.TYPE_30__, i32, i32, %struct.TYPE_36__ }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_33__ = type { i32 (i32, %struct.TYPE_29__*)*, i32 (i32, %struct.TYPE_29__*, i8*, i8*, i8*)* }
%struct.TYPE_30__ = type { i64, i64 }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_37__ = type { i32, i64 }

@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"XXX unhandled io type %#x for XRI 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"aborting xri=%#x tag=%#x\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@OCS_HW_RTN_SUCCESS = common dso_local global i64 0, align 8
@OCS_HW_RTN_IO_ABORT_IN_PROGRESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"abort in progress xri=%#x tag=%#x\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Failed to abort xri=%#x tag=%#x rc=%d\0A\00", align 1
@ocs_hw_unsol_process_bounce = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i8*)* @ocs_hw_wq_process_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocs_hw_wq_process_io(i8* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca %struct.TYPE_38__*, align 8
  %9 = alloca %struct.TYPE_37__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32 (%struct.TYPE_27__*, i32, i8*, i8*, i8*, i8*)*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_28__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.TYPE_28__*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %28, %struct.TYPE_27__** %7, align 8
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %29, i32 0, i32 19
  %31 = load %struct.TYPE_38__*, %struct.TYPE_38__** %30, align 8
  store %struct.TYPE_38__* %31, %struct.TYPE_38__** %8, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = bitcast i32* %32 to i8*
  %34 = bitcast i8* %33 to %struct.TYPE_37__*
  store %struct.TYPE_37__* %34, %struct.TYPE_37__** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %3
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %40, i32 0, i32 18
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %58

44:                                               ; preds = %39
  %45 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 1
  %49 = zext i1 %48 to i32
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 17
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %57 = call i32 @ocs_hw_io_quarantine(%struct.TYPE_38__* %52, i32 %55, %struct.TYPE_27__* %56)
  br label %58

58:                                               ; preds = %44, %39, %3
  %59 = load i8*, i8** @FALSE, align 8
  %60 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %60, i32 0, i32 18
  store i8* %59, i8** %61, align 8
  %62 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %62, i32 0, i32 11
  %64 = load %struct.TYPE_27__*, %struct.TYPE_27__** %63, align 8
  %65 = icmp ne %struct.TYPE_27__* %64, null
  br i1 %65, label %66, label %91

66:                                               ; preds = %58
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %67, i32 0, i32 11
  %69 = load %struct.TYPE_27__*, %struct.TYPE_27__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %66
  %74 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, 1
  %78 = zext i1 %77 to i32
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %79, i32 0, i32 11
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %81, i32 0, i32 0
  store i32 %78, i32* %82, align 8
  %83 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %84 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %84, i32 0, i32 17
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %87, i32 0, i32 11
  %89 = load %struct.TYPE_27__*, %struct.TYPE_27__** %88, align 8
  %90 = call i32 @ocs_hw_io_quarantine(%struct.TYPE_38__* %83, i32 %86, %struct.TYPE_27__* %89)
  br label %91

91:                                               ; preds = %73, %66, %58
  %92 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %93 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %94 = call i32 @ocs_hw_remove_io_timed_wqe(%struct.TYPE_38__* %92, %struct.TYPE_27__* %93)
  %95 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %95, i32 0, i32 16
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %108

99:                                               ; preds = %91
  %100 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load i8*, i8** @FALSE, align 8
  %106 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %106, i32 0, i32 16
  store i8* %105, i8** %107, align 8
  br label %108

108:                                              ; preds = %104, %99, %91
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  switch i32 %111, label %192 [
    i32 141, label %112
    i32 140, label %112
    i32 139, label %113
    i32 138, label %122
    i32 137, label %122
    i32 135, label %122
    i32 136, label %123
    i32 128, label %128
    i32 130, label %133
    i32 129, label %154
    i32 132, label %180
    i32 131, label %185
    i32 133, label %190
    i32 134, label %191
  ]

112:                                              ; preds = %108, %108
  br label %203

113:                                              ; preds = %108
  %114 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %114, i32 0, i32 4
  %116 = load i32*, i32** %5, align 8
  %117 = call i32 @sli_fc_els_did(i32* %115, i32* %116, i8** %11)
  %118 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %118, i32 0, i32 4
  %120 = load i32*, i32** %5, align 8
  %121 = call i8* @sli_fc_response_length(i32* %119, i32* %120)
  store i8* %121, i8** %10, align 8
  br label %203

122:                                              ; preds = %108, %108, %108
  br label %203

123:                                              ; preds = %108
  %124 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %124, i32 0, i32 4
  %126 = load i32*, i32** %5, align 8
  %127 = call i8* @sli_fc_response_length(i32* %125, i32* %126)
  store i8* %127, i8** %10, align 8
  br label %203

128:                                              ; preds = %108
  %129 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %129, i32 0, i32 4
  %131 = load i32*, i32** %5, align 8
  %132 = call i8* @sli_fc_io_length(i32* %130, i32* %131)
  store i8* %132, i8** %10, align 8
  br label %203

133:                                              ; preds = %108
  %134 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %134, i32 0, i32 4
  %136 = load i32*, i32** %5, align 8
  %137 = call i8* @sli_fc_io_length(i32* %135, i32* %136)
  store i8* %137, i8** %10, align 8
  %138 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %138, i32 0, i32 5
  %140 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %133
  %144 = load i8*, i8** %10, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %153, label %146

146:                                              ; preds = %143
  %147 = load i8*, i8** %6, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %153, label %149

149:                                              ; preds = %146
  %150 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %150, i32 0, i32 15
  %152 = load i8*, i8** %151, align 8
  store i8* %152, i8** %10, align 8
  br label %153

153:                                              ; preds = %149, %146, %143, %133
  br label %203

154:                                              ; preds = %108
  %155 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %155, i32 0, i32 14
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %179

159:                                              ; preds = %154
  %160 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %160, i32 0, i32 3
  %162 = call i32 @ocs_lock(i32* %161)
  store i32 1, i32* %14, align 4
  %163 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %163, i32 0, i32 4
  %165 = load %struct.TYPE_35__*, %struct.TYPE_35__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %159
  store i32 1, i32* %12, align 4
  br label %170

170:                                              ; preds = %169, %159
  %171 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %171, i32 0, i32 4
  %173 = load %struct.TYPE_35__*, %struct.TYPE_35__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %170
  store i32 1, i32* %13, align 4
  br label %178

178:                                              ; preds = %177, %170
  br label %179

179:                                              ; preds = %178, %154
  br label %203

180:                                              ; preds = %108
  %181 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %181, i32 0, i32 4
  %183 = load i32*, i32** %5, align 8
  %184 = call i8* @sli_fc_io_length(i32* %182, i32* %183)
  store i8* %184, i8** %10, align 8
  br label %203

185:                                              ; preds = %108
  %186 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %186, i32 0, i32 4
  %188 = load i32*, i32** %5, align 8
  %189 = call i8* @sli_fc_io_length(i32* %187, i32* %188)
  store i8* %189, i8** %10, align 8
  br label %203

190:                                              ; preds = %108
  br label %203

191:                                              ; preds = %108
  br label %203

192:                                              ; preds = %108
  %193 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %199, i32 0, i32 13
  %201 = load i32, i32* %200, align 4
  %202 = call i32 (i32, i8*, i32, i32, ...) @ocs_log_test(i32 %195, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %198, i32 %201)
  br label %203

203:                                              ; preds = %192, %191, %190, %185, %180, %179, %153, %128, %123, %122, %113, %112
  %204 = load i8*, i8** %6, align 8
  %205 = icmp ne i8* %204, null
  br i1 %205, label %206, label %360

206:                                              ; preds = %203
  %207 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %207, i32 0, i32 4
  %209 = load i32*, i32** %5, align 8
  %210 = call i8* @sli_fc_ext_status(i32* %208, i32* %209)
  store i8* %210, i8** %11, align 8
  %211 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %289

216:                                              ; preds = %206
  %217 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = call i64 @ocs_hw_iotype_is_originator(i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %289

222:                                              ; preds = %216
  %223 = load i8*, i8** %6, align 8
  %224 = load i8*, i8** %11, align 8
  %225 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %226 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = call i64 @ocs_hw_wcqe_abort_needed(i8* %223, i8* %224, i64 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %289

230:                                              ; preds = %222
  %231 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %234, i32 0, i32 13
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %237, i32 0, i32 12
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @ocs_log_debug(i32 %233, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %236, i32 %239)
  %241 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %242 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %243 = load i8*, i8** @TRUE, align 8
  %244 = call i64 @ocs_hw_io_abort(%struct.TYPE_38__* %241, %struct.TYPE_27__* %242, i8* %243, i32* null, i32* null)
  store i64 %244, i64* %15, align 8
  %245 = load i64, i64* %15, align 8
  %246 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %260

248:                                              ; preds = %230
  %249 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %249, i32 0, i32 2
  store i32 1, i32* %250, align 8
  %251 = load i8*, i8** %6, align 8
  %252 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %252, i32 0, i32 8
  store i8* %251, i8** %253, align 8
  %254 = load i8*, i8** %11, align 8
  %255 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %255, i32 0, i32 6
  store i8* %254, i8** %256, align 8
  %257 = load i8*, i8** %10, align 8
  %258 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %258, i32 0, i32 7
  store i8* %257, i8** %259, align 8
  br label %553

260:                                              ; preds = %230
  %261 = load i64, i64* %15, align 8
  %262 = load i64, i64* @OCS_HW_RTN_IO_ABORT_IN_PROGRESS, align 8
  %263 = icmp eq i64 %261, %262
  br i1 %263, label %264, label %275

264:                                              ; preds = %260
  %265 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %269 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %268, i32 0, i32 13
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %271, i32 0, i32 12
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @ocs_log_debug(i32 %267, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %270, i32 %273)
  br label %287

275:                                              ; preds = %260
  %276 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %277 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %276, i32 0, i32 3
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %279, i32 0, i32 13
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %282, i32 0, i32 12
  %284 = load i32, i32* %283, align 8
  %285 = load i64, i64* %15, align 8
  %286 = call i32 (i32, i8*, i32, i32, ...) @ocs_log_test(i32 %278, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %281, i32 %284, i64 %285)
  br label %287

287:                                              ; preds = %275, %264
  br label %288

288:                                              ; preds = %287
  br label %289

289:                                              ; preds = %288, %222, %216, %206
  %290 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %291 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = call i64 @ocs_hw_iotype_is_originator(i32 %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %359, label %295

295:                                              ; preds = %289
  %296 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %297 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %296, i32 0, i32 1
  %298 = load i64, i64* %297, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %359

300:                                              ; preds = %295
  %301 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %302 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %301, i32 0, i32 3
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %305 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %304, i32 0, i32 13
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %308 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %307, i32 0, i32 12
  %309 = load i32, i32* %308, align 8
  %310 = call i32 @ocs_log_debug(i32 %303, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %306, i32 %309)
  %311 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %312 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %313 = load i8*, i8** @FALSE, align 8
  %314 = call i64 @ocs_hw_io_abort(%struct.TYPE_38__* %311, %struct.TYPE_27__* %312, i8* %313, i32* null, i32* null)
  store i64 %314, i64* %16, align 8
  %315 = load i64, i64* %16, align 8
  %316 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  %317 = icmp eq i64 %315, %316
  br i1 %317, label %318, label %330

318:                                              ; preds = %300
  %319 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %320 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %319, i32 0, i32 2
  store i32 1, i32* %320, align 8
  %321 = load i8*, i8** %6, align 8
  %322 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %323 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %322, i32 0, i32 8
  store i8* %321, i8** %323, align 8
  %324 = load i8*, i8** %11, align 8
  %325 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %326 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %325, i32 0, i32 6
  store i8* %324, i8** %326, align 8
  %327 = load i8*, i8** %10, align 8
  %328 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %329 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %328, i32 0, i32 7
  store i8* %327, i8** %329, align 8
  br label %553

330:                                              ; preds = %300
  %331 = load i64, i64* %16, align 8
  %332 = load i64, i64* @OCS_HW_RTN_IO_ABORT_IN_PROGRESS, align 8
  %333 = icmp eq i64 %331, %332
  br i1 %333, label %334, label %345

334:                                              ; preds = %330
  %335 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %336 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 8
  %338 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %339 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %338, i32 0, i32 13
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %342 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %341, i32 0, i32 12
  %343 = load i32, i32* %342, align 8
  %344 = call i32 @ocs_log_debug(i32 %337, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %340, i32 %343)
  br label %357

345:                                              ; preds = %330
  %346 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %347 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %346, i32 0, i32 3
  %348 = load i32, i32* %347, align 8
  %349 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %350 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %349, i32 0, i32 13
  %351 = load i32, i32* %350, align 4
  %352 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %353 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %352, i32 0, i32 12
  %354 = load i32, i32* %353, align 8
  %355 = load i64, i64* %16, align 8
  %356 = call i32 (i32, i8*, i32, i32, ...) @ocs_log_test(i32 %348, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %351, i32 %354, i64 %355)
  br label %357

357:                                              ; preds = %345, %334
  br label %358

358:                                              ; preds = %357
  br label %359

359:                                              ; preds = %358, %295, %289
  br label %360

360:                                              ; preds = %359, %203
  %361 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %362 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %361, i32 0, i32 11
  %363 = load %struct.TYPE_27__*, %struct.TYPE_27__** %362, align 8
  %364 = icmp ne %struct.TYPE_27__* %363, null
  br i1 %364, label %365, label %373

365:                                              ; preds = %360
  %366 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %367 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %368 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %367, i32 0, i32 11
  %369 = load %struct.TYPE_27__*, %struct.TYPE_27__** %368, align 8
  %370 = call i32 @ocs_hw_io_free(%struct.TYPE_38__* %366, %struct.TYPE_27__* %369)
  %371 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %372 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %371, i32 0, i32 11
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %372, align 8
  br label %373

373:                                              ; preds = %365, %360
  %374 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %375 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %374, i32 0, i32 9
  %376 = load i32 (%struct.TYPE_27__*, i32, i8*, i8*, i8*, i8*)*, i32 (%struct.TYPE_27__*, i32, i8*, i8*, i8*, i8*)** %375, align 8
  %377 = icmp ne i32 (%struct.TYPE_27__*, i32, i8*, i8*, i8*, i8*)* %376, null
  br i1 %377, label %378, label %417

378:                                              ; preds = %373
  %379 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %380 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %379, i32 0, i32 9
  %381 = load i32 (%struct.TYPE_27__*, i32, i8*, i8*, i8*, i8*)*, i32 (%struct.TYPE_27__*, i32, i8*, i8*, i8*, i8*)** %380, align 8
  store i32 (%struct.TYPE_27__*, i32, i8*, i8*, i8*, i8*)* %381, i32 (%struct.TYPE_27__*, i32, i8*, i8*, i8*, i8*)** %17, align 8
  %382 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %383 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %382, i32 0, i32 10
  %384 = load i8*, i8** %383, align 8
  store i8* %384, i8** %18, align 8
  %385 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %386 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %385, i32 0, i32 9
  store i32 (%struct.TYPE_27__*, i32, i8*, i8*, i8*, i8*)* null, i32 (%struct.TYPE_27__*, i32, i8*, i8*, i8*, i8*)** %386, align 8
  %387 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %388 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %387, i32 0, i32 2
  %389 = load i32, i32* %388, align 8
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %403

391:                                              ; preds = %378
  %392 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %393 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %392, i32 0, i32 8
  %394 = load i8*, i8** %393, align 8
  store i8* %394, i8** %6, align 8
  %395 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %396 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %395, i32 0, i32 7
  %397 = load i8*, i8** %396, align 8
  store i8* %397, i8** %10, align 8
  %398 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %399 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %398, i32 0, i32 6
  %400 = load i8*, i8** %399, align 8
  store i8* %400, i8** %11, align 8
  %401 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %402 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %401, i32 0, i32 2
  store i32 0, i32* %402, align 8
  br label %403

403:                                              ; preds = %391, %378
  %404 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %405 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %406 = call i32 @ocs_hw_io_restore_sgl(%struct.TYPE_38__* %404, %struct.TYPE_27__* %405)
  %407 = load i32 (%struct.TYPE_27__*, i32, i8*, i8*, i8*, i8*)*, i32 (%struct.TYPE_27__*, i32, i8*, i8*, i8*, i8*)** %17, align 8
  %408 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %409 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %410 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %409, i32 0, i32 5
  %411 = load i32, i32* %410, align 8
  %412 = load i8*, i8** %10, align 8
  %413 = load i8*, i8** %6, align 8
  %414 = load i8*, i8** %11, align 8
  %415 = load i8*, i8** %18, align 8
  %416 = call i32 %407(%struct.TYPE_27__* %408, i32 %411, i8* %412, i8* %413, i8* %414, i8* %415)
  br label %417

417:                                              ; preds = %403, %373
  %418 = load i32, i32* %12, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %552

420:                                              ; preds = %417
  %421 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %422 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %421, i32 0, i32 2
  %423 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %422, i32 0, i32 0
  %424 = load i64, i64* %423, align 8
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %470

426:                                              ; preds = %420
  %427 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %428 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %427, i32 0, i32 4
  %429 = load %struct.TYPE_35__*, %struct.TYPE_35__** %428, align 8
  %430 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %429, i32 0, i32 1
  %431 = load %struct.TYPE_29__*, %struct.TYPE_29__** %430, align 8
  %432 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %431, i32 0, i32 0
  %433 = load %struct.TYPE_32__*, %struct.TYPE_32__** %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %433, i32 0, i32 0
  %435 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %434, i32 0, i32 0
  %436 = load %struct.TYPE_28__*, %struct.TYPE_28__** %435, align 8
  store %struct.TYPE_28__* %436, %struct.TYPE_28__** %19, align 8
  %437 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %438 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %437, i32 0, i32 2
  %439 = load i32, i32* %438, align 4
  %440 = call i8* @fc_be24toh(i32 %439)
  store i8* %440, i8** %20, align 8
  %441 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %442 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %441, i32 0, i32 1
  %443 = load i32, i32* %442, align 4
  %444 = call i8* @fc_be24toh(i32 %443)
  store i8* %444, i8** %21, align 8
  %445 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %446 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 4
  %448 = call i8* @ocs_be16toh(i32 %447)
  store i8* %448, i8** %22, align 8
  %449 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %450 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %449, i32 0, i32 1
  %451 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %450, i32 0, i32 1
  %452 = load i32 (i32, %struct.TYPE_29__*, i8*, i8*, i8*)*, i32 (i32, %struct.TYPE_29__*, i8*, i8*, i8*)** %451, align 8
  %453 = icmp ne i32 (i32, %struct.TYPE_29__*, i8*, i8*, i8*)* %452, null
  br i1 %453, label %454, label %469

454:                                              ; preds = %426
  %455 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %456 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %455, i32 0, i32 1
  %457 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %456, i32 0, i32 1
  %458 = load i32 (i32, %struct.TYPE_29__*, i8*, i8*, i8*)*, i32 (i32, %struct.TYPE_29__*, i8*, i8*, i8*)** %457, align 8
  %459 = load i32, i32* @ocs_hw_unsol_process_bounce, align 4
  %460 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %461 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %460, i32 0, i32 4
  %462 = load %struct.TYPE_35__*, %struct.TYPE_35__** %461, align 8
  %463 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %462, i32 0, i32 1
  %464 = load %struct.TYPE_29__*, %struct.TYPE_29__** %463, align 8
  %465 = load i8*, i8** %20, align 8
  %466 = load i8*, i8** %21, align 8
  %467 = load i8*, i8** %22, align 8
  %468 = call i32 %458(i32 %459, %struct.TYPE_29__* %464, i8* %465, i8* %466, i8* %467)
  br label %469

469:                                              ; preds = %454, %426
  br label %485

470:                                              ; preds = %420
  %471 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %472 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %471, i32 0, i32 1
  %473 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %472, i32 0, i32 0
  %474 = load i32 (i32, %struct.TYPE_29__*)*, i32 (i32, %struct.TYPE_29__*)** %473, align 8
  %475 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %476 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %475, i32 0, i32 0
  %477 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %476, i32 0, i32 0
  %478 = load i32, i32* %477, align 8
  %479 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %480 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %479, i32 0, i32 4
  %481 = load %struct.TYPE_35__*, %struct.TYPE_35__** %480, align 8
  %482 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %481, i32 0, i32 1
  %483 = load %struct.TYPE_29__*, %struct.TYPE_29__** %482, align 8
  %484 = call i32 %474(i32 %478, %struct.TYPE_29__* %483)
  br label %485

485:                                              ; preds = %470, %469
  %486 = load i32, i32* %13, align 4
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %488, label %551

488:                                              ; preds = %485
  %489 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %490 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %489, i32 0, i32 2
  %491 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %490, i32 0, i32 0
  %492 = load i64, i64* %491, align 8
  %493 = icmp ne i64 %492, 0
  br i1 %493, label %494, label %536

494:                                              ; preds = %488
  %495 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %496 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %495, i32 0, i32 4
  %497 = load %struct.TYPE_35__*, %struct.TYPE_35__** %496, align 8
  %498 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %497, i32 0, i32 0
  %499 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %498, i32 0, i32 0
  %500 = load %struct.TYPE_32__*, %struct.TYPE_32__** %499, align 8
  %501 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %500, i32 0, i32 0
  %502 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %501, i32 0, i32 0
  %503 = load %struct.TYPE_28__*, %struct.TYPE_28__** %502, align 8
  store %struct.TYPE_28__* %503, %struct.TYPE_28__** %23, align 8
  %504 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %505 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %504, i32 0, i32 2
  %506 = load i32, i32* %505, align 4
  %507 = call i8* @fc_be24toh(i32 %506)
  store i8* %507, i8** %24, align 8
  %508 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %509 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %508, i32 0, i32 1
  %510 = load i32, i32* %509, align 4
  %511 = call i8* @fc_be24toh(i32 %510)
  store i8* %511, i8** %25, align 8
  %512 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %513 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %512, i32 0, i32 0
  %514 = load i32, i32* %513, align 4
  %515 = call i8* @ocs_be16toh(i32 %514)
  store i8* %515, i8** %26, align 8
  %516 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %517 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %516, i32 0, i32 1
  %518 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %517, i32 0, i32 1
  %519 = load i32 (i32, %struct.TYPE_29__*, i8*, i8*, i8*)*, i32 (i32, %struct.TYPE_29__*, i8*, i8*, i8*)** %518, align 8
  %520 = icmp ne i32 (i32, %struct.TYPE_29__*, i8*, i8*, i8*)* %519, null
  br i1 %520, label %521, label %535

521:                                              ; preds = %494
  %522 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %523 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %522, i32 0, i32 1
  %524 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %523, i32 0, i32 1
  %525 = load i32 (i32, %struct.TYPE_29__*, i8*, i8*, i8*)*, i32 (i32, %struct.TYPE_29__*, i8*, i8*, i8*)** %524, align 8
  %526 = load i32, i32* @ocs_hw_unsol_process_bounce, align 4
  %527 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %528 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %527, i32 0, i32 4
  %529 = load %struct.TYPE_35__*, %struct.TYPE_35__** %528, align 8
  %530 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %529, i32 0, i32 0
  %531 = load i8*, i8** %24, align 8
  %532 = load i8*, i8** %25, align 8
  %533 = load i8*, i8** %26, align 8
  %534 = call i32 %525(i32 %526, %struct.TYPE_29__* %530, i8* %531, i8* %532, i8* %533)
  br label %535

535:                                              ; preds = %521, %494
  br label %550

536:                                              ; preds = %488
  %537 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %538 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %537, i32 0, i32 1
  %539 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %538, i32 0, i32 0
  %540 = load i32 (i32, %struct.TYPE_29__*)*, i32 (i32, %struct.TYPE_29__*)** %539, align 8
  %541 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %542 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %541, i32 0, i32 0
  %543 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %542, i32 0, i32 0
  %544 = load i32, i32* %543, align 8
  %545 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %546 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %545, i32 0, i32 4
  %547 = load %struct.TYPE_35__*, %struct.TYPE_35__** %546, align 8
  %548 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %547, i32 0, i32 0
  %549 = call i32 %540(i32 %544, %struct.TYPE_29__* %548)
  br label %550

550:                                              ; preds = %536, %535
  br label %551

551:                                              ; preds = %550, %485
  br label %552

552:                                              ; preds = %551, %417
  br label %553

553:                                              ; preds = %552, %318, %248
  %554 = load i32, i32* %14, align 4
  %555 = icmp ne i32 %554, 0
  br i1 %555, label %556, label %560

556:                                              ; preds = %553
  %557 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %558 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %557, i32 0, i32 3
  %559 = call i32 @ocs_unlock(i32* %558)
  br label %560

560:                                              ; preds = %556, %553
  ret void
}

declare dso_local i32 @ocs_hw_io_quarantine(%struct.TYPE_38__*, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @ocs_hw_remove_io_timed_wqe(%struct.TYPE_38__*, %struct.TYPE_27__*) #1

declare dso_local i32 @sli_fc_els_did(i32*, i32*, i8**) #1

declare dso_local i8* @sli_fc_response_length(i32*, i32*) #1

declare dso_local i8* @sli_fc_io_length(i32*, i32*) #1

declare dso_local i32 @ocs_lock(i32*) #1

declare dso_local i32 @ocs_log_test(i32, i8*, i32, i32, ...) #1

declare dso_local i8* @sli_fc_ext_status(i32*, i32*) #1

declare dso_local i64 @ocs_hw_iotype_is_originator(i32) #1

declare dso_local i64 @ocs_hw_wcqe_abort_needed(i8*, i8*, i64) #1

declare dso_local i32 @ocs_log_debug(i32, i8*, i32, i32) #1

declare dso_local i64 @ocs_hw_io_abort(%struct.TYPE_38__*, %struct.TYPE_27__*, i8*, i32*, i32*) #1

declare dso_local i32 @ocs_hw_io_free(%struct.TYPE_38__*, %struct.TYPE_27__*) #1

declare dso_local i32 @ocs_hw_io_restore_sgl(%struct.TYPE_38__*, %struct.TYPE_27__*) #1

declare dso_local i8* @fc_be24toh(i32) #1

declare dso_local i8* @ocs_be16toh(i32) #1

declare dso_local i32 @ocs_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
