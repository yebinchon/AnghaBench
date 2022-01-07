; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_run_and_feed_hook.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_run_and_feed_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i8**, i32, i32, i8*, i32, i32 }
%struct.receive_hook_feed_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.async = type { i32, i32 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@.str = private unnamed_addr constant [22 x i8] c"GIT_PUSH_OPTION_%d=%s\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"GIT_PUSH_OPTION_COUNT=%d\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"GIT_PUSH_OPTION_COUNT\00", align 1
@tmp_objdir = common dso_local global i64 0, align 8
@use_sideband = common dso_local global i64 0, align 8
@copy_to_sideband = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64 (%struct.receive_hook_feed_state*, i8**, i64*)*, %struct.receive_hook_feed_state*)* @run_and_feed_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_and_feed_hook(i8* %0, i64 (%struct.receive_hook_feed_state*, i8**, i64*)* %1, %struct.receive_hook_feed_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64 (%struct.receive_hook_feed_state*, i8**, i64*)*, align 8
  %7 = alloca %struct.receive_hook_feed_state*, align 8
  %8 = alloca %struct.child_process, align 8
  %9 = alloca %struct.async, align 4
  %10 = alloca [2 x i8*], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 (%struct.receive_hook_feed_state*, i8**, i64*)* %1, i64 (%struct.receive_hook_feed_state*, i8**, i64*)** %6, align 8
  store %struct.receive_hook_feed_state* %2, %struct.receive_hook_feed_state** %7, align 8
  %15 = bitcast %struct.child_process* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 32, i1 false)
  %16 = load i8*, i8** %5, align 8
  %17 = call i8* @find_hook(i8* %16)
  %18 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  store i8* %17, i8** %18, align 16
  %19 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  %20 = load i8*, i8** %19, align 16
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %140

23:                                               ; preds = %3
  %24 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 1
  store i8* null, i8** %24, align 8
  %25 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  %26 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 0
  store i8** %25, i8*** %26, align 8
  %27 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 1
  store i32 -1, i32* %27, align 8
  %28 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 2
  store i32 1, i32* %28, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 3
  store i8* %29, i8** %30, align 8
  %31 = load %struct.receive_hook_feed_state*, %struct.receive_hook_feed_state** %7, align 8
  %32 = getelementptr inbounds %struct.receive_hook_feed_state, %struct.receive_hook_feed_state* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = icmp ne %struct.TYPE_4__* %33, null
  br i1 %34, label %35, label %69

35:                                               ; preds = %23
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %58, %35
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.receive_hook_feed_state*, %struct.receive_hook_feed_state** %7, align 8
  %39 = getelementptr inbounds %struct.receive_hook_feed_state, %struct.receive_hook_feed_state* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %37, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 5
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.receive_hook_feed_state*, %struct.receive_hook_feed_state** %7, align 8
  %48 = getelementptr inbounds %struct.receive_hook_feed_state, %struct.receive_hook_feed_state* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32*, i8*, ...) @argv_array_pushf(i32* %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %56)
  br label %58

58:                                               ; preds = %44
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %12, align 4
  br label %36

61:                                               ; preds = %36
  %62 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 5
  %63 = load %struct.receive_hook_feed_state*, %struct.receive_hook_feed_state** %7, align 8
  %64 = getelementptr inbounds %struct.receive_hook_feed_state, %struct.receive_hook_feed_state* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (i32*, i8*, ...) @argv_array_pushf(i32* %62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %72

69:                                               ; preds = %23
  %70 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 5
  %71 = call i32 (i32*, i8*, ...) @argv_array_pushf(i32* %70, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %61
  %73 = load i64, i64* @tmp_objdir, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 5
  %77 = load i64, i64* @tmp_objdir, align 8
  %78 = call i32 @tmp_objdir_env(i64 %77)
  %79 = call i32 @argv_array_pushv(i32* %76, i32 %78)
  br label %80

80:                                               ; preds = %75, %72
  %81 = load i64, i64* @use_sideband, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %80
  %84 = call i32 @memset(%struct.async* %9, i32 0, i32 8)
  %85 = load i32, i32* @copy_to_sideband, align 4
  %86 = getelementptr inbounds %struct.async, %struct.async* %9, i32 0, i32 1
  store i32 %85, i32* %86, align 4
  %87 = getelementptr inbounds %struct.async, %struct.async* %9, i32 0, i32 0
  store i32 -1, i32* %87, align 4
  %88 = call i32 @start_async(%struct.async* %9)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %4, align 4
  br label %140

93:                                               ; preds = %83
  %94 = getelementptr inbounds %struct.async, %struct.async* %9, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 4
  store i32 %95, i32* %96, align 8
  br label %97

97:                                               ; preds = %93, %80
  %98 = call i32 @prepare_push_cert_sha1(%struct.child_process* %8)
  %99 = call i32 @start_command(%struct.child_process* %8)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %97
  %103 = load i64, i64* @use_sideband, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = call i32 @finish_async(%struct.async* %9)
  br label %107

107:                                              ; preds = %105, %102
  %108 = load i32, i32* %11, align 4
  store i32 %108, i32* %4, align 4
  br label %140

109:                                              ; preds = %97
  %110 = load i32, i32* @SIGPIPE, align 4
  %111 = load i32, i32* @SIG_IGN, align 4
  %112 = call i32 @sigchain_push(i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %109, %127
  %114 = load i64 (%struct.receive_hook_feed_state*, i8**, i64*)*, i64 (%struct.receive_hook_feed_state*, i8**, i64*)** %6, align 8
  %115 = load %struct.receive_hook_feed_state*, %struct.receive_hook_feed_state** %7, align 8
  %116 = call i64 %114(%struct.receive_hook_feed_state* %115, i8** %13, i64* %14)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %128

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i8*, i8** %13, align 8
  %123 = load i64, i64* %14, align 8
  %124 = call i64 @write_in_full(i32 %121, i8* %122, i64 %123)
  %125 = icmp slt i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  br label %128

127:                                              ; preds = %119
  br label %113

128:                                              ; preds = %126, %118
  %129 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @close(i32 %130)
  %132 = load i64, i64* @use_sideband, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %128
  %135 = call i32 @finish_async(%struct.async* %9)
  br label %136

136:                                              ; preds = %134, %128
  %137 = load i32, i32* @SIGPIPE, align 4
  %138 = call i32 @sigchain_pop(i32 %137)
  %139 = call i32 @finish_command(%struct.child_process* %8)
  store i32 %139, i32* %4, align 4
  br label %140

140:                                              ; preds = %136, %107, %91, %22
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @find_hook(i8*) #2

declare dso_local i32 @argv_array_pushf(i32*, i8*, ...) #2

declare dso_local i32 @argv_array_pushv(i32*, i32) #2

declare dso_local i32 @tmp_objdir_env(i64) #2

declare dso_local i32 @memset(%struct.async*, i32, i32) #2

declare dso_local i32 @start_async(%struct.async*) #2

declare dso_local i32 @prepare_push_cert_sha1(%struct.child_process*) #2

declare dso_local i32 @start_command(%struct.child_process*) #2

declare dso_local i32 @finish_async(%struct.async*) #2

declare dso_local i32 @sigchain_push(i32, i32) #2

declare dso_local i64 @write_in_full(i32, i8*, i64) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @sigchain_pop(i32) #2

declare dso_local i32 @finish_command(%struct.child_process*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
