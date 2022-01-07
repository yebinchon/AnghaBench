; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_query.c_on_write_request_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_query.c_on_write_request_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_state = type { i32, i32, i32, %struct.TYPE_10__*, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i64, %struct.TYPE_9__, i32*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.cache_write_request = type { i32, i32, i32, i32, i32 }
%struct.cache_write_response = type { i32 }

@CET_WRITE_RESPONSE = common dso_local global i32 0, align 4
@s_configuration = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"write_request\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"can't find configuration entry '%s'. aborting request\00", align 1
@EACCES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"configuration entry '%s' is disabled\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"entry '%s' performs lookups by itself: can't write to it\00", align 1
@s_cache = common dso_local global i32 0, align 4
@CELT_POSITIVE = common dso_local global i32 0, align 4
@EVFILT_WRITE = common dso_local global i32 0, align 4
@on_write_response_write1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.query_state*)* @on_write_request_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_write_request_process(%struct.query_state* %0) #0 {
  %2 = alloca %struct.query_state*, align 8
  %3 = alloca %struct.cache_write_request*, align 8
  %4 = alloca %struct.cache_write_response*, align 8
  %5 = alloca i32*, align 8
  store %struct.query_state* %0, %struct.query_state** %2, align 8
  %6 = call i32 @TRACE_IN(i32 (%struct.query_state*)* @on_write_request_process)
  %7 = load %struct.query_state*, %struct.query_state** %2, align 8
  %8 = getelementptr inbounds %struct.query_state, %struct.query_state* %7, i32 0, i32 6
  %9 = load i32, i32* @CET_WRITE_RESPONSE, align 4
  %10 = call i32 @init_comm_element(i32* %8, i32 %9)
  %11 = load %struct.query_state*, %struct.query_state** %2, align 8
  %12 = getelementptr inbounds %struct.query_state, %struct.query_state* %11, i32 0, i32 6
  %13 = call %struct.cache_write_response* @get_cache_write_response(i32* %12)
  store %struct.cache_write_response* %13, %struct.cache_write_response** %4, align 8
  %14 = load %struct.query_state*, %struct.query_state** %2, align 8
  %15 = getelementptr inbounds %struct.query_state, %struct.query_state* %14, i32 0, i32 5
  %16 = call %struct.cache_write_request* @get_cache_write_request(i32* %15)
  store %struct.cache_write_request* %16, %struct.cache_write_request** %3, align 8
  %17 = load i32, i32* @s_configuration, align 4
  %18 = load %struct.cache_write_request*, %struct.cache_write_request** %3, align 8
  %19 = getelementptr inbounds %struct.cache_write_request, %struct.cache_write_request* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.TYPE_10__* @configuration_find_entry(i32 %17, i32 %20)
  %22 = load %struct.query_state*, %struct.query_state** %2, align 8
  %23 = getelementptr inbounds %struct.query_state, %struct.query_state* %22, i32 0, i32 3
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %23, align 8
  %24 = load %struct.query_state*, %struct.query_state** %2, align 8
  %25 = getelementptr inbounds %struct.query_state, %struct.query_state* %24, i32 0, i32 3
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = icmp eq %struct.TYPE_10__* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %1
  %29 = load i32, i32* @ENOENT, align 4
  %30 = load %struct.cache_write_response*, %struct.cache_write_response** %4, align 8
  %31 = getelementptr inbounds %struct.cache_write_response, %struct.cache_write_response* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.cache_write_request*, %struct.cache_write_request** %3, align 8
  %33 = getelementptr inbounds %struct.cache_write_request, %struct.cache_write_request* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @LOG_ERR_2(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %142

36:                                               ; preds = %1
  %37 = load %struct.query_state*, %struct.query_state** %2, align 8
  %38 = getelementptr inbounds %struct.query_state, %struct.query_state* %37, i32 0, i32 3
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load i32, i32* @EACCES, align 4
  %45 = load %struct.cache_write_response*, %struct.cache_write_response** %4, align 8
  %46 = getelementptr inbounds %struct.cache_write_response, %struct.cache_write_response* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.cache_write_request*, %struct.cache_write_request** %3, align 8
  %48 = getelementptr inbounds %struct.cache_write_request, %struct.cache_write_request* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @LOG_ERR_2(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  br label %142

51:                                               ; preds = %36
  %52 = load %struct.query_state*, %struct.query_state** %2, align 8
  %53 = getelementptr inbounds %struct.query_state, %struct.query_state* %52, i32 0, i32 3
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %51
  %59 = load i32, i32* @EOPNOTSUPP, align 4
  %60 = load %struct.cache_write_response*, %struct.cache_write_response** %4, align 8
  %61 = getelementptr inbounds %struct.cache_write_response, %struct.cache_write_response* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.cache_write_request*, %struct.cache_write_request** %3, align 8
  %63 = getelementptr inbounds %struct.cache_write_request, %struct.cache_write_request* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @LOG_ERR_2(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  br label %142

66:                                               ; preds = %51
  %67 = load i32, i32* @s_configuration, align 4
  %68 = call i32 @configuration_lock_rdlock(i32 %67)
  %69 = load i32, i32* @s_cache, align 4
  %70 = load %struct.query_state*, %struct.query_state** %2, align 8
  %71 = getelementptr inbounds %struct.query_state, %struct.query_state* %70, i32 0, i32 3
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32* @find_cache_entry(i32 %69, i32 %76)
  store i32* %77, i32** %5, align 8
  %78 = load i32, i32* @s_configuration, align 4
  %79 = call i32 @configuration_unlock(i32 %78)
  %80 = load i32*, i32** %5, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %138

82:                                               ; preds = %66
  %83 = load %struct.query_state*, %struct.query_state** %2, align 8
  %84 = getelementptr inbounds %struct.query_state, %struct.query_state* %83, i32 0, i32 3
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  %86 = load i32, i32* @CELT_POSITIVE, align 4
  %87 = call i32 @configuration_lock_entry(%struct.TYPE_10__* %85, i32 %86)
  %88 = load i32*, i32** %5, align 8
  %89 = load %struct.query_state*, %struct.query_state** %2, align 8
  %90 = getelementptr inbounds %struct.query_state, %struct.query_state* %89, i32 0, i32 3
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 3
  store i32* %88, i32** %92, align 8
  %93 = load i32*, i32** %5, align 8
  %94 = load %struct.cache_write_request*, %struct.cache_write_request** %3, align 8
  %95 = getelementptr inbounds %struct.cache_write_request, %struct.cache_write_request* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.cache_write_request*, %struct.cache_write_request** %3, align 8
  %98 = getelementptr inbounds %struct.cache_write_request, %struct.cache_write_request* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.cache_write_request*, %struct.cache_write_request** %3, align 8
  %101 = getelementptr inbounds %struct.cache_write_request, %struct.cache_write_request* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.cache_write_request*, %struct.cache_write_request** %3, align 8
  %104 = getelementptr inbounds %struct.cache_write_request, %struct.cache_write_request* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @cache_write(i32* %93, i32 %96, i32 %99, i32 %102, i32 %105)
  %107 = load %struct.cache_write_response*, %struct.cache_write_response** %4, align 8
  %108 = getelementptr inbounds %struct.cache_write_response, %struct.cache_write_response* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  %109 = load %struct.query_state*, %struct.query_state** %2, align 8
  %110 = getelementptr inbounds %struct.query_state, %struct.query_state* %109, i32 0, i32 3
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = load i32, i32* @CELT_POSITIVE, align 4
  %113 = call i32 @configuration_unlock_entry(%struct.TYPE_10__* %111, i32 %112)
  %114 = load %struct.query_state*, %struct.query_state** %2, align 8
  %115 = getelementptr inbounds %struct.query_state, %struct.query_state* %114, i32 0, i32 3
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %129, label %121

121:                                              ; preds = %82
  %122 = load %struct.query_state*, %struct.query_state** %2, align 8
  %123 = getelementptr inbounds %struct.query_state, %struct.query_state* %122, i32 0, i32 3
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %121, %82
  %130 = load %struct.query_state*, %struct.query_state** %2, align 8
  %131 = getelementptr inbounds %struct.query_state, %struct.query_state* %130, i32 0, i32 4
  %132 = load %struct.query_state*, %struct.query_state** %2, align 8
  %133 = getelementptr inbounds %struct.query_state, %struct.query_state* %132, i32 0, i32 3
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 2
  %136 = call i32 @memcpy(i32* %131, %struct.TYPE_9__* %135, i32 4)
  br label %137

137:                                              ; preds = %129, %121
  br label %141

138:                                              ; preds = %66
  %139 = load %struct.cache_write_response*, %struct.cache_write_response** %4, align 8
  %140 = getelementptr inbounds %struct.cache_write_response, %struct.cache_write_response* %139, i32 0, i32 0
  store i32 -1, i32* %140, align 4
  br label %141

141:                                              ; preds = %138, %137
  br label %142

142:                                              ; preds = %141, %58, %43, %28
  %143 = load i32, i32* @EVFILT_WRITE, align 4
  %144 = load %struct.query_state*, %struct.query_state** %2, align 8
  %145 = getelementptr inbounds %struct.query_state, %struct.query_state* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 8
  %146 = load %struct.query_state*, %struct.query_state** %2, align 8
  %147 = getelementptr inbounds %struct.query_state, %struct.query_state* %146, i32 0, i32 0
  store i32 4, i32* %147, align 8
  %148 = load i32, i32* @on_write_response_write1, align 4
  %149 = load %struct.query_state*, %struct.query_state** %2, align 8
  %150 = getelementptr inbounds %struct.query_state, %struct.query_state* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  %151 = call i32 @TRACE_OUT(i32 (%struct.query_state*)* @on_write_request_process)
  ret i32 0
}

declare dso_local i32 @TRACE_IN(i32 (%struct.query_state*)*) #1

declare dso_local i32 @init_comm_element(i32*, i32) #1

declare dso_local %struct.cache_write_response* @get_cache_write_response(i32*) #1

declare dso_local %struct.cache_write_request* @get_cache_write_request(i32*) #1

declare dso_local %struct.TYPE_10__* @configuration_find_entry(i32, i32) #1

declare dso_local i32 @LOG_ERR_2(i8*, i8*, i32) #1

declare dso_local i32 @configuration_lock_rdlock(i32) #1

declare dso_local i32* @find_cache_entry(i32, i32) #1

declare dso_local i32 @configuration_unlock(i32) #1

declare dso_local i32 @configuration_lock_entry(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @cache_write(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @configuration_unlock_entry(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @TRACE_OUT(i32 (%struct.query_state*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
