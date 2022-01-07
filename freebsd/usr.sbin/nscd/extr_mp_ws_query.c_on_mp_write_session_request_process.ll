; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_mp_ws_query.c_on_mp_write_session_request_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_mp_ws_query.c_on_mp_write_session_request_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_state = type { i32, i32, i32, %struct.TYPE_10__*, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i64, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.cache_mp_write_session_request = type { i32 }
%struct.cache_mp_write_session_response = type { i32 }

@CET_MP_WRITE_SESSION_RESPONSE = common dso_local global i32 0, align 4
@s_configuration = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"write_session_request\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"can't find configuration entry '%s'. aborting request\00", align 1
@EACCES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"configuration entry '%s' is disabled\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"entry '%s' performs lookups by itself: can't write to it\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@s_cache = common dso_local global i32 0, align 4
@INVALID_CACHE_ENTRY = common dso_local global i32* null, align 8
@CELT_MULTIPART = common dso_local global i32 0, align 4
@INVALID_CACHE_MP_WRITE_SESSION = common dso_local global i64 0, align 8
@on_mp_write_session_destroy = common dso_local global i32 0, align 4
@on_mp_write_session_response_write1 = common dso_local global i32 0, align 4
@EVFILT_WRITE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.query_state*)* @on_mp_write_session_request_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_mp_write_session_request_process(%struct.query_state* %0) #0 {
  %2 = alloca %struct.query_state*, align 8
  %3 = alloca %struct.cache_mp_write_session_request*, align 8
  %4 = alloca %struct.cache_mp_write_session_response*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store %struct.query_state* %0, %struct.query_state** %2, align 8
  %8 = call i32 @TRACE_IN(i32 (%struct.query_state*)* @on_mp_write_session_request_process)
  %9 = load %struct.query_state*, %struct.query_state** %2, align 8
  %10 = getelementptr inbounds %struct.query_state, %struct.query_state* %9, i32 0, i32 9
  %11 = load i32, i32* @CET_MP_WRITE_SESSION_RESPONSE, align 4
  %12 = call i32 @init_comm_element(i32* %10, i32 %11)
  %13 = load %struct.query_state*, %struct.query_state** %2, align 8
  %14 = getelementptr inbounds %struct.query_state, %struct.query_state* %13, i32 0, i32 9
  %15 = call %struct.cache_mp_write_session_response* @get_cache_mp_write_session_response(i32* %14)
  store %struct.cache_mp_write_session_response* %15, %struct.cache_mp_write_session_response** %4, align 8
  %16 = load %struct.query_state*, %struct.query_state** %2, align 8
  %17 = getelementptr inbounds %struct.query_state, %struct.query_state* %16, i32 0, i32 8
  %18 = call %struct.cache_mp_write_session_request* @get_cache_mp_write_session_request(i32* %17)
  store %struct.cache_mp_write_session_request* %18, %struct.cache_mp_write_session_request** %3, align 8
  %19 = load i32, i32* @s_configuration, align 4
  %20 = load %struct.cache_mp_write_session_request*, %struct.cache_mp_write_session_request** %3, align 8
  %21 = getelementptr inbounds %struct.cache_mp_write_session_request, %struct.cache_mp_write_session_request* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_10__* @configuration_find_entry(i32 %19, i32 %22)
  %24 = load %struct.query_state*, %struct.query_state** %2, align 8
  %25 = getelementptr inbounds %struct.query_state, %struct.query_state* %24, i32 0, i32 3
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %25, align 8
  %26 = load %struct.query_state*, %struct.query_state** %2, align 8
  %27 = getelementptr inbounds %struct.query_state, %struct.query_state* %26, i32 0, i32 3
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = icmp eq %struct.TYPE_10__* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %1
  %31 = load i32, i32* @ENOENT, align 4
  %32 = load %struct.cache_mp_write_session_response*, %struct.cache_mp_write_session_response** %4, align 8
  %33 = getelementptr inbounds %struct.cache_mp_write_session_response, %struct.cache_mp_write_session_response* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.cache_mp_write_session_request*, %struct.cache_mp_write_session_request** %3, align 8
  %35 = getelementptr inbounds %struct.cache_mp_write_session_request, %struct.cache_mp_write_session_request* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @LOG_ERR_2(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %156

38:                                               ; preds = %1
  %39 = load %struct.query_state*, %struct.query_state** %2, align 8
  %40 = getelementptr inbounds %struct.query_state, %struct.query_state* %39, i32 0, i32 3
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %38
  %46 = load i32, i32* @EACCES, align 4
  %47 = load %struct.cache_mp_write_session_response*, %struct.cache_mp_write_session_response** %4, align 8
  %48 = getelementptr inbounds %struct.cache_mp_write_session_response, %struct.cache_mp_write_session_response* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.cache_mp_write_session_request*, %struct.cache_mp_write_session_request** %3, align 8
  %50 = getelementptr inbounds %struct.cache_mp_write_session_request, %struct.cache_mp_write_session_request* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @LOG_ERR_2(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %156

53:                                               ; preds = %38
  %54 = load %struct.query_state*, %struct.query_state** %2, align 8
  %55 = getelementptr inbounds %struct.query_state, %struct.query_state* %54, i32 0, i32 3
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %53
  %61 = load i32, i32* @EOPNOTSUPP, align 4
  %62 = load %struct.cache_mp_write_session_response*, %struct.cache_mp_write_session_response** %4, align 8
  %63 = getelementptr inbounds %struct.cache_mp_write_session_response, %struct.cache_mp_write_session_response* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load %struct.cache_mp_write_session_request*, %struct.cache_mp_write_session_request** %3, align 8
  %65 = getelementptr inbounds %struct.cache_mp_write_session_request, %struct.cache_mp_write_session_request* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @LOG_ERR_2(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  br label %156

68:                                               ; preds = %53
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.query_state*, %struct.query_state** %2, align 8
  %71 = getelementptr inbounds %struct.query_state, %struct.query_state* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.query_state*, %struct.query_state** %2, align 8
  %74 = getelementptr inbounds %struct.query_state, %struct.query_state* %73, i32 0, i32 3
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @asprintf(i8** %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %72, i32 %79)
  %81 = load i8*, i8** %7, align 8
  %82 = icmp ne i8* %81, null
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = load i32, i32* @s_configuration, align 4
  %86 = call i32 @configuration_lock_rdlock(i32 %85)
  %87 = load i32, i32* @s_cache, align 4
  %88 = load i8*, i8** %7, align 8
  %89 = call i32* @find_cache_entry(i32 %87, i8* %88)
  store i32* %89, i32** %6, align 8
  %90 = load i32, i32* @s_configuration, align 4
  %91 = call i32 @configuration_unlock(i32 %90)
  %92 = load i32*, i32** %6, align 8
  %93 = load i32*, i32** @INVALID_CACHE_ENTRY, align 8
  %94 = icmp eq i32* %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %69
  %96 = load %struct.query_state*, %struct.query_state** %2, align 8
  %97 = load i8*, i8** %7, align 8
  %98 = call i32* @register_new_mp_cache_entry(%struct.query_state* %96, i8* %97)
  store i32* %98, i32** %6, align 8
  br label %99

99:                                               ; preds = %95, %69
  %100 = load i8*, i8** %7, align 8
  %101 = call i32 @free(i8* %100)
  %102 = load i32*, i32** %6, align 8
  %103 = icmp ne i32* %102, null
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  %106 = load %struct.query_state*, %struct.query_state** %2, align 8
  %107 = getelementptr inbounds %struct.query_state, %struct.query_state* %106, i32 0, i32 3
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = load i32, i32* @CELT_MULTIPART, align 4
  %110 = call i32 @configuration_lock_entry(%struct.TYPE_10__* %108, i32 %109)
  %111 = load i32*, i32** %6, align 8
  %112 = call i64 @open_cache_mp_write_session(i32* %111)
  store i64 %112, i64* %5, align 8
  %113 = load i64, i64* %5, align 8
  %114 = load i64, i64* @INVALID_CACHE_MP_WRITE_SESSION, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %99
  %117 = load %struct.cache_mp_write_session_response*, %struct.cache_mp_write_session_response** %4, align 8
  %118 = getelementptr inbounds %struct.cache_mp_write_session_response, %struct.cache_mp_write_session_response* %117, i32 0, i32 0
  store i32 -1, i32* %118, align 4
  br label %150

119:                                              ; preds = %99
  %120 = load i64, i64* %5, align 8
  %121 = load %struct.query_state*, %struct.query_state** %2, align 8
  %122 = getelementptr inbounds %struct.query_state, %struct.query_state* %121, i32 0, i32 6
  store i64 %120, i64* %122, align 8
  %123 = load i32, i32* @on_mp_write_session_destroy, align 4
  %124 = load %struct.query_state*, %struct.query_state** %2, align 8
  %125 = getelementptr inbounds %struct.query_state, %struct.query_state* %124, i32 0, i32 5
  store i32 %123, i32* %125, align 4
  %126 = load %struct.query_state*, %struct.query_state** %2, align 8
  %127 = getelementptr inbounds %struct.query_state, %struct.query_state* %126, i32 0, i32 3
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %141, label %133

133:                                              ; preds = %119
  %134 = load %struct.query_state*, %struct.query_state** %2, align 8
  %135 = getelementptr inbounds %struct.query_state, %struct.query_state* %134, i32 0, i32 3
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %133, %119
  %142 = load %struct.query_state*, %struct.query_state** %2, align 8
  %143 = getelementptr inbounds %struct.query_state, %struct.query_state* %142, i32 0, i32 4
  %144 = load %struct.query_state*, %struct.query_state** %2, align 8
  %145 = getelementptr inbounds %struct.query_state, %struct.query_state* %144, i32 0, i32 3
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 2
  %148 = call i32 @memcpy(i32* %143, %struct.TYPE_9__* %147, i32 4)
  br label %149

149:                                              ; preds = %141, %133
  br label %150

150:                                              ; preds = %149, %116
  %151 = load %struct.query_state*, %struct.query_state** %2, align 8
  %152 = getelementptr inbounds %struct.query_state, %struct.query_state* %151, i32 0, i32 3
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %152, align 8
  %154 = load i32, i32* @CELT_MULTIPART, align 4
  %155 = call i32 @configuration_unlock_entry(%struct.TYPE_10__* %153, i32 %154)
  br label %156

156:                                              ; preds = %150, %60, %45, %30
  %157 = load i32, i32* @on_mp_write_session_response_write1, align 4
  %158 = load %struct.query_state*, %struct.query_state** %2, align 8
  %159 = getelementptr inbounds %struct.query_state, %struct.query_state* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 8
  %160 = load %struct.query_state*, %struct.query_state** %2, align 8
  %161 = getelementptr inbounds %struct.query_state, %struct.query_state* %160, i32 0, i32 0
  store i32 4, i32* %161, align 8
  %162 = load i32, i32* @EVFILT_WRITE, align 4
  %163 = load %struct.query_state*, %struct.query_state** %2, align 8
  %164 = getelementptr inbounds %struct.query_state, %struct.query_state* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  %165 = call i32 @TRACE_OUT(i32 (%struct.query_state*)* @on_mp_write_session_request_process)
  ret i32 0
}

declare dso_local i32 @TRACE_IN(i32 (%struct.query_state*)*) #1

declare dso_local i32 @init_comm_element(i32*, i32) #1

declare dso_local %struct.cache_mp_write_session_response* @get_cache_mp_write_session_response(i32*) #1

declare dso_local %struct.cache_mp_write_session_request* @get_cache_mp_write_session_request(i32*) #1

declare dso_local %struct.TYPE_10__* @configuration_find_entry(i32, i32) #1

declare dso_local i32 @LOG_ERR_2(i8*, i8*, i32) #1

declare dso_local i32 @asprintf(i8**, i8*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @configuration_lock_rdlock(i32) #1

declare dso_local i32* @find_cache_entry(i32, i8*) #1

declare dso_local i32 @configuration_unlock(i32) #1

declare dso_local i32* @register_new_mp_cache_entry(%struct.query_state*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @configuration_lock_entry(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @open_cache_mp_write_session(i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @configuration_unlock_entry(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @TRACE_OUT(i32 (%struct.query_state*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
