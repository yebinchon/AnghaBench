; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_query.c_on_transform_request_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_query.c_on_transform_request_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_state = type { i32, i64, %struct.configuration_entry*, i32, i32, i32, i32, i32 }
%struct.configuration_entry = type { i32 }
%struct.cache_transform_request = type { i32, i32* }
%struct.cache_transform_response = type { i32 }

@CET_TRANSFORM_RESPONSE = common dso_local global i32 0, align 4
@s_configuration = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"transform_request\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"can't find configuration entry '%s'. aborting request\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"can't transform the cache entry %s, because it ised for actual lookups\00", align 1
@on_transform_response_write1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.query_state*)* @on_transform_request_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_transform_request_process(%struct.query_state* %0) #0 {
  %2 = alloca %struct.query_state*, align 8
  %3 = alloca %struct.cache_transform_request*, align 8
  %4 = alloca %struct.cache_transform_response*, align 8
  %5 = alloca %struct.configuration_entry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.query_state* %0, %struct.query_state** %2, align 8
  %8 = call i32 @TRACE_IN(i32 (%struct.query_state*)* @on_transform_request_process)
  %9 = load %struct.query_state*, %struct.query_state** %2, align 8
  %10 = getelementptr inbounds %struct.query_state, %struct.query_state* %9, i32 0, i32 7
  %11 = load i32, i32* @CET_TRANSFORM_RESPONSE, align 4
  %12 = call i32 @init_comm_element(i32* %10, i32 %11)
  %13 = load %struct.query_state*, %struct.query_state** %2, align 8
  %14 = getelementptr inbounds %struct.query_state, %struct.query_state* %13, i32 0, i32 7
  %15 = call %struct.cache_transform_response* @get_cache_transform_response(i32* %14)
  store %struct.cache_transform_response* %15, %struct.cache_transform_response** %4, align 8
  %16 = load %struct.query_state*, %struct.query_state** %2, align 8
  %17 = getelementptr inbounds %struct.query_state, %struct.query_state* %16, i32 0, i32 6
  %18 = call %struct.cache_transform_request* @get_cache_transform_request(i32* %17)
  store %struct.cache_transform_request* %18, %struct.cache_transform_request** %3, align 8
  %19 = load %struct.cache_transform_request*, %struct.cache_transform_request** %3, align 8
  %20 = getelementptr inbounds %struct.cache_transform_request, %struct.cache_transform_request* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %158 [
    i32 128, label %22
    i32 129, label %102
  ]

22:                                               ; preds = %1
  %23 = load %struct.cache_transform_request*, %struct.cache_transform_request** %3, align 8
  %24 = getelementptr inbounds %struct.cache_transform_request, %struct.cache_transform_request* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %56

27:                                               ; preds = %22
  %28 = load i32, i32* @s_configuration, align 4
  %29 = call i64 @configuration_get_entries_size(i32 %28)
  store i64 %29, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %30

30:                                               ; preds = %52, %27
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %55

34:                                               ; preds = %30
  %35 = load i32, i32* @s_configuration, align 4
  %36 = load i64, i64* %6, align 8
  %37 = call %struct.configuration_entry* @configuration_get_entry(i32 %35, i64 %36)
  store %struct.configuration_entry* %37, %struct.configuration_entry** %5, align 8
  %38 = load %struct.configuration_entry*, %struct.configuration_entry** %5, align 8
  %39 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %34
  %43 = load %struct.configuration_entry*, %struct.configuration_entry** %5, align 8
  %44 = load %struct.query_state*, %struct.query_state** %2, align 8
  %45 = getelementptr inbounds %struct.query_state, %struct.query_state* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.query_state*, %struct.query_state** %2, align 8
  %48 = getelementptr inbounds %struct.query_state, %struct.query_state* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @clear_config_entry_part(%struct.configuration_entry* %43, i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %42, %34
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %6, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %6, align 8
  br label %30

55:                                               ; preds = %30
  br label %101

56:                                               ; preds = %22
  %57 = load i32, i32* @s_configuration, align 4
  %58 = load %struct.cache_transform_request*, %struct.cache_transform_request** %3, align 8
  %59 = getelementptr inbounds %struct.cache_transform_request, %struct.cache_transform_request* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = call i8* @configuration_find_entry(i32 %57, i32* %60)
  %62 = bitcast i8* %61 to %struct.configuration_entry*
  %63 = load %struct.query_state*, %struct.query_state** %2, align 8
  %64 = getelementptr inbounds %struct.query_state, %struct.query_state* %63, i32 0, i32 2
  store %struct.configuration_entry* %62, %struct.configuration_entry** %64, align 8
  %65 = load %struct.query_state*, %struct.query_state** %2, align 8
  %66 = getelementptr inbounds %struct.query_state, %struct.query_state* %65, i32 0, i32 2
  %67 = load %struct.configuration_entry*, %struct.configuration_entry** %66, align 8
  %68 = icmp eq %struct.configuration_entry* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %56
  %70 = load %struct.cache_transform_request*, %struct.cache_transform_request** %3, align 8
  %71 = getelementptr inbounds %struct.cache_transform_request, %struct.cache_transform_request* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @LOG_ERR_2(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32* %72)
  %74 = load %struct.cache_transform_response*, %struct.cache_transform_response** %4, align 8
  %75 = getelementptr inbounds %struct.cache_transform_response, %struct.cache_transform_response* %74, i32 0, i32 0
  store i32 -1, i32* %75, align 4
  br label %162

76:                                               ; preds = %56
  %77 = load %struct.query_state*, %struct.query_state** %2, align 8
  %78 = getelementptr inbounds %struct.query_state, %struct.query_state* %77, i32 0, i32 2
  %79 = load %struct.configuration_entry*, %struct.configuration_entry** %78, align 8
  %80 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %76
  %84 = load %struct.cache_transform_request*, %struct.cache_transform_request** %3, align 8
  %85 = getelementptr inbounds %struct.cache_transform_request, %struct.cache_transform_request* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @LOG_ERR_2(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32* %86)
  %88 = load %struct.cache_transform_response*, %struct.cache_transform_response** %4, align 8
  %89 = getelementptr inbounds %struct.cache_transform_response, %struct.cache_transform_response* %88, i32 0, i32 0
  store i32 -1, i32* %89, align 4
  br label %162

90:                                               ; preds = %76
  %91 = load %struct.query_state*, %struct.query_state** %2, align 8
  %92 = getelementptr inbounds %struct.query_state, %struct.query_state* %91, i32 0, i32 2
  %93 = load %struct.configuration_entry*, %struct.configuration_entry** %92, align 8
  %94 = load %struct.query_state*, %struct.query_state** %2, align 8
  %95 = getelementptr inbounds %struct.query_state, %struct.query_state* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.query_state*, %struct.query_state** %2, align 8
  %98 = getelementptr inbounds %struct.query_state, %struct.query_state* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @clear_config_entry_part(%struct.configuration_entry* %93, i32 %96, i32 %99)
  br label %101

101:                                              ; preds = %90, %55
  br label %161

102:                                              ; preds = %1
  %103 = load %struct.query_state*, %struct.query_state** %2, align 8
  %104 = getelementptr inbounds %struct.query_state, %struct.query_state* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load %struct.cache_transform_response*, %struct.cache_transform_response** %4, align 8
  %109 = getelementptr inbounds %struct.cache_transform_response, %struct.cache_transform_response* %108, i32 0, i32 0
  store i32 -1, i32* %109, align 4
  br label %157

110:                                              ; preds = %102
  %111 = load %struct.cache_transform_request*, %struct.cache_transform_request** %3, align 8
  %112 = getelementptr inbounds %struct.cache_transform_request, %struct.cache_transform_request* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = icmp eq i32* %113, null
  br i1 %114, label %115, label %131

115:                                              ; preds = %110
  %116 = load i32, i32* @s_configuration, align 4
  %117 = call i64 @configuration_get_entries_size(i32 %116)
  store i64 %117, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %118

118:                                              ; preds = %127, %115
  %119 = load i64, i64* %6, align 8
  %120 = load i64, i64* %7, align 8
  %121 = icmp ult i64 %119, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %118
  %123 = load i32, i32* @s_configuration, align 4
  %124 = load i64, i64* %6, align 8
  %125 = call %struct.configuration_entry* @configuration_get_entry(i32 %123, i64 %124)
  %126 = call i32 @clear_config_entry(%struct.configuration_entry* %125)
  br label %127

127:                                              ; preds = %122
  %128 = load i64, i64* %6, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %6, align 8
  br label %118

130:                                              ; preds = %118
  br label %156

131:                                              ; preds = %110
  %132 = load i32, i32* @s_configuration, align 4
  %133 = load %struct.cache_transform_request*, %struct.cache_transform_request** %3, align 8
  %134 = getelementptr inbounds %struct.cache_transform_request, %struct.cache_transform_request* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = call i8* @configuration_find_entry(i32 %132, i32* %135)
  %137 = bitcast i8* %136 to %struct.configuration_entry*
  %138 = load %struct.query_state*, %struct.query_state** %2, align 8
  %139 = getelementptr inbounds %struct.query_state, %struct.query_state* %138, i32 0, i32 2
  store %struct.configuration_entry* %137, %struct.configuration_entry** %139, align 8
  %140 = load %struct.query_state*, %struct.query_state** %2, align 8
  %141 = getelementptr inbounds %struct.query_state, %struct.query_state* %140, i32 0, i32 2
  %142 = load %struct.configuration_entry*, %struct.configuration_entry** %141, align 8
  %143 = icmp eq %struct.configuration_entry* %142, null
  br i1 %143, label %144, label %151

144:                                              ; preds = %131
  %145 = load %struct.cache_transform_request*, %struct.cache_transform_request** %3, align 8
  %146 = getelementptr inbounds %struct.cache_transform_request, %struct.cache_transform_request* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @LOG_ERR_2(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32* %147)
  %149 = load %struct.cache_transform_response*, %struct.cache_transform_response** %4, align 8
  %150 = getelementptr inbounds %struct.cache_transform_response, %struct.cache_transform_response* %149, i32 0, i32 0
  store i32 -1, i32* %150, align 4
  br label %162

151:                                              ; preds = %131
  %152 = load %struct.query_state*, %struct.query_state** %2, align 8
  %153 = getelementptr inbounds %struct.query_state, %struct.query_state* %152, i32 0, i32 2
  %154 = load %struct.configuration_entry*, %struct.configuration_entry** %153, align 8
  %155 = call i32 @clear_config_entry(%struct.configuration_entry* %154)
  br label %156

156:                                              ; preds = %151, %130
  br label %157

157:                                              ; preds = %156, %107
  br label %161

158:                                              ; preds = %1
  %159 = load %struct.cache_transform_response*, %struct.cache_transform_response** %4, align 8
  %160 = getelementptr inbounds %struct.cache_transform_response, %struct.cache_transform_response* %159, i32 0, i32 0
  store i32 -1, i32* %160, align 4
  br label %161

161:                                              ; preds = %158, %157, %101
  br label %162

162:                                              ; preds = %161, %144, %83, %69
  %163 = load %struct.query_state*, %struct.query_state** %2, align 8
  %164 = getelementptr inbounds %struct.query_state, %struct.query_state* %163, i32 0, i32 1
  store i64 0, i64* %164, align 8
  %165 = load i32, i32* @on_transform_response_write1, align 4
  %166 = load %struct.query_state*, %struct.query_state** %2, align 8
  %167 = getelementptr inbounds %struct.query_state, %struct.query_state* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 8
  %168 = call i32 @TRACE_OUT(i32 (%struct.query_state*)* @on_transform_request_process)
  ret i32 0
}

declare dso_local i32 @TRACE_IN(i32 (%struct.query_state*)*) #1

declare dso_local i32 @init_comm_element(i32*, i32) #1

declare dso_local %struct.cache_transform_response* @get_cache_transform_response(i32*) #1

declare dso_local %struct.cache_transform_request* @get_cache_transform_request(i32*) #1

declare dso_local i64 @configuration_get_entries_size(i32) #1

declare dso_local %struct.configuration_entry* @configuration_get_entry(i32, i64) #1

declare dso_local i32 @clear_config_entry_part(%struct.configuration_entry*, i32, i32) #1

declare dso_local i8* @configuration_find_entry(i32, i32*) #1

declare dso_local i32 @LOG_ERR_2(i8*, i8*, i32*) #1

declare dso_local i32 @clear_config_entry(%struct.configuration_entry*) #1

declare dso_local i32 @TRACE_OUT(i32 (%struct.query_state*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
