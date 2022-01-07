; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_async_event_log_page_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ctrlr.c_nvme_ctrlr_async_event_log_page_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_completion = type { i32 }
%struct.nvme_async_event_request = type { i32, %struct.TYPE_8__*, i32, i32*, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.nvme_health_information_page = type { i32 }
%struct.nvme_ns_list = type { i64* }
%struct.nvme_error_information_entry = type { i32 }
%struct.nvme_firmware_page = type { i32 }
%struct.nvme_command_effects_page = type { i32 }
%struct.nvme_res_notification_page = type { i32 }
%struct.nvme_sanitize_status_page = type { i32 }
%struct.intel_log_temp_stats = type { i32 }

@nvme_use_nvd = common dso_local global i32 0, align 4
@NVME_MAX_NAMESPACES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.nvme_completion*)* @nvme_ctrlr_async_event_log_page_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_ctrlr_async_event_log_page_cb(i8* %0, %struct.nvme_completion* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.nvme_completion*, align 8
  %5 = alloca %struct.nvme_async_event_request*, align 8
  %6 = alloca %struct.nvme_health_information_page*, align 8
  %7 = alloca %struct.nvme_ns_list*, align 8
  %8 = alloca %struct.nvme_error_information_entry*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.nvme_completion* %1, %struct.nvme_completion** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.nvme_async_event_request*
  store %struct.nvme_async_event_request* %11, %struct.nvme_async_event_request** %5, align 8
  %12 = load %struct.nvme_completion*, %struct.nvme_completion** %4, align 8
  %13 = call i64 @nvme_completion_is_error(%struct.nvme_completion* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %17 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %20 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %19, i32 0, i32 4
  %21 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %22 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @nvme_notify_async_consumers(%struct.TYPE_8__* %18, i32* %20, i32 %23, i32* null, i32 0)
  br label %207

25:                                               ; preds = %2
  %26 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %27 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %95 [
    i32 132, label %29
    i32 130, label %53
    i32 131, label %59
    i32 134, label %65
    i32 133, label %71
    i32 129, label %77
    i32 128, label %83
    i32 135, label %89
  ]

29:                                               ; preds = %25
  %30 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %31 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = bitcast i32* %32 to %struct.nvme_error_information_entry*
  store %struct.nvme_error_information_entry* %33, %struct.nvme_error_information_entry** %8, align 8
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %49, %29
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %37 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  %43 = icmp slt i32 %35, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %34
  %45 = load %struct.nvme_error_information_entry*, %struct.nvme_error_information_entry** %8, align 8
  %46 = getelementptr inbounds %struct.nvme_error_information_entry, %struct.nvme_error_information_entry* %45, i32 1
  store %struct.nvme_error_information_entry* %46, %struct.nvme_error_information_entry** %8, align 8
  %47 = ptrtoint %struct.nvme_error_information_entry* %45 to i32
  %48 = call i32 @nvme_error_information_entry_swapbytes(i32 %47)
  br label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %34

52:                                               ; preds = %34
  br label %96

53:                                               ; preds = %25
  %54 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %55 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = bitcast i32* %56 to %struct.nvme_health_information_page*
  %58 = call i32 @nvme_health_information_page_swapbytes(%struct.nvme_health_information_page* %57)
  br label %96

59:                                               ; preds = %25
  %60 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %61 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = bitcast i32* %62 to %struct.nvme_firmware_page*
  %64 = call i32 @nvme_firmware_page_swapbytes(%struct.nvme_firmware_page* %63)
  br label %96

65:                                               ; preds = %25
  %66 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %67 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = bitcast i32* %68 to %struct.nvme_ns_list*
  %70 = call i32 @nvme_ns_list_swapbytes(%struct.nvme_ns_list* %69)
  br label %96

71:                                               ; preds = %25
  %72 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %73 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = bitcast i32* %74 to %struct.nvme_command_effects_page*
  %76 = call i32 @nvme_command_effects_page_swapbytes(%struct.nvme_command_effects_page* %75)
  br label %96

77:                                               ; preds = %25
  %78 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %79 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = bitcast i32* %80 to %struct.nvme_res_notification_page*
  %82 = call i32 @nvme_res_notification_page_swapbytes(%struct.nvme_res_notification_page* %81)
  br label %96

83:                                               ; preds = %25
  %84 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %85 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = bitcast i32* %86 to %struct.nvme_sanitize_status_page*
  %88 = call i32 @nvme_sanitize_status_page_swapbytes(%struct.nvme_sanitize_status_page* %87)
  br label %96

89:                                               ; preds = %25
  %90 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %91 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = bitcast i32* %92 to %struct.intel_log_temp_stats*
  %94 = call i32 @intel_log_temp_stats_swapbytes(%struct.intel_log_temp_stats* %93)
  br label %96

95:                                               ; preds = %25
  br label %96

96:                                               ; preds = %95, %89, %83, %77, %71, %65, %59, %53, %52
  %97 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %98 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %99, 130
  br i1 %100, label %101, label %132

101:                                              ; preds = %96
  %102 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %103 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %102, i32 0, i32 3
  %104 = load i32*, i32** %103, align 8
  %105 = bitcast i32* %104 to %struct.nvme_health_information_page*
  store %struct.nvme_health_information_page* %105, %struct.nvme_health_information_page** %6, align 8
  %106 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %107 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %106, i32 0, i32 1
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = load %struct.nvme_health_information_page*, %struct.nvme_health_information_page** %6, align 8
  %110 = getelementptr inbounds %struct.nvme_health_information_page, %struct.nvme_health_information_page* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @nvme_ctrlr_log_critical_warnings(%struct.TYPE_8__* %108, i32 %111)
  %113 = load %struct.nvme_health_information_page*, %struct.nvme_health_information_page** %6, align 8
  %114 = getelementptr inbounds %struct.nvme_health_information_page, %struct.nvme_health_information_page* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = xor i32 %115, -1
  %117 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %118 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %117, i32 0, i32 1
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, %116
  store i32 %122, i32* %120, align 4
  %123 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %124 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %123, i32 0, i32 1
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %127 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %126, i32 0, i32 1
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @nvme_ctrlr_cmd_set_async_event_config(%struct.TYPE_8__* %125, i32 %130, i32* null, i32* null)
  br label %191

132:                                              ; preds = %96
  %133 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %134 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp eq i32 %135, 134
  br i1 %136, label %137, label %190

137:                                              ; preds = %132
  %138 = load i32, i32* @nvme_use_nvd, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %190, label %140

140:                                              ; preds = %137
  %141 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %142 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %141, i32 0, i32 3
  %143 = load i32*, i32** %142, align 8
  %144 = bitcast i32* %143 to %struct.nvme_ns_list*
  store %struct.nvme_ns_list* %144, %struct.nvme_ns_list** %7, align 8
  store i32 0, i32* %9, align 4
  br label %145

145:                                              ; preds = %186, %140
  %146 = load i32, i32* %9, align 4
  %147 = load %struct.nvme_ns_list*, %struct.nvme_ns_list** %7, align 8
  %148 = getelementptr inbounds %struct.nvme_ns_list, %struct.nvme_ns_list* %147, i32 0, i32 0
  %149 = load i64*, i64** %148, align 8
  %150 = call i32 @nitems(i64* %149)
  %151 = icmp slt i32 %146, %150
  br i1 %151, label %152, label %161

152:                                              ; preds = %145
  %153 = load %struct.nvme_ns_list*, %struct.nvme_ns_list** %7, align 8
  %154 = getelementptr inbounds %struct.nvme_ns_list, %struct.nvme_ns_list* %153, i32 0, i32 0
  %155 = load i64*, i64** %154, align 8
  %156 = load i32, i32* %9, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i64, i64* %155, i64 %157
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br label %161

161:                                              ; preds = %152, %145
  %162 = phi i1 [ false, %145 ], [ %160, %152 ]
  br i1 %162, label %163, label %189

163:                                              ; preds = %161
  %164 = load %struct.nvme_ns_list*, %struct.nvme_ns_list** %7, align 8
  %165 = getelementptr inbounds %struct.nvme_ns_list, %struct.nvme_ns_list* %164, i32 0, i32 0
  %166 = load i64*, i64** %165, align 8
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64, i64* %166, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @NVME_MAX_NAMESPACES, align 8
  %172 = icmp sgt i64 %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %163
  br label %189

174:                                              ; preds = %163
  %175 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %176 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %175, i32 0, i32 1
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %176, align 8
  %178 = load %struct.nvme_ns_list*, %struct.nvme_ns_list** %7, align 8
  %179 = getelementptr inbounds %struct.nvme_ns_list, %struct.nvme_ns_list* %178, i32 0, i32 0
  %180 = load i64*, i64** %179, align 8
  %181 = load i32, i32* %9, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i64, i64* %180, i64 %182
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @nvme_notify_ns(%struct.TYPE_8__* %177, i64 %184)
  br label %186

186:                                              ; preds = %174
  %187 = load i32, i32* %9, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %9, align 4
  br label %145

189:                                              ; preds = %173, %161
  br label %190

190:                                              ; preds = %189, %137, %132
  br label %191

191:                                              ; preds = %190, %101
  %192 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %193 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %192, i32 0, i32 1
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %193, align 8
  %195 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %196 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %195, i32 0, i32 4
  %197 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %198 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %201 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %200, i32 0, i32 3
  %202 = load i32*, i32** %201, align 8
  %203 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %204 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @nvme_notify_async_consumers(%struct.TYPE_8__* %194, i32* %196, i32 %199, i32* %202, i32 %205)
  br label %207

207:                                              ; preds = %191, %15
  %208 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %209 = getelementptr inbounds %struct.nvme_async_event_request, %struct.nvme_async_event_request* %208, i32 0, i32 1
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %209, align 8
  %211 = load %struct.nvme_async_event_request*, %struct.nvme_async_event_request** %5, align 8
  %212 = call i32 @nvme_ctrlr_construct_and_submit_aer(%struct.TYPE_8__* %210, %struct.nvme_async_event_request* %211)
  ret void
}

declare dso_local i64 @nvme_completion_is_error(%struct.nvme_completion*) #1

declare dso_local i32 @nvme_notify_async_consumers(%struct.TYPE_8__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @nvme_error_information_entry_swapbytes(i32) #1

declare dso_local i32 @nvme_health_information_page_swapbytes(%struct.nvme_health_information_page*) #1

declare dso_local i32 @nvme_firmware_page_swapbytes(%struct.nvme_firmware_page*) #1

declare dso_local i32 @nvme_ns_list_swapbytes(%struct.nvme_ns_list*) #1

declare dso_local i32 @nvme_command_effects_page_swapbytes(%struct.nvme_command_effects_page*) #1

declare dso_local i32 @nvme_res_notification_page_swapbytes(%struct.nvme_res_notification_page*) #1

declare dso_local i32 @nvme_sanitize_status_page_swapbytes(%struct.nvme_sanitize_status_page*) #1

declare dso_local i32 @intel_log_temp_stats_swapbytes(%struct.intel_log_temp_stats*) #1

declare dso_local i32 @nvme_ctrlr_log_critical_warnings(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @nvme_ctrlr_cmd_set_async_event_config(%struct.TYPE_8__*, i32, i32*, i32*) #1

declare dso_local i32 @nitems(i64*) #1

declare dso_local i32 @nvme_notify_ns(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @nvme_ctrlr_construct_and_submit_aer(%struct.TYPE_8__*, %struct.nvme_async_event_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
