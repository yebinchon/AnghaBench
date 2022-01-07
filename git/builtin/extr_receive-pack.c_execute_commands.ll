; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_execute_commands.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_execute_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.check_connected_options = type { i32, i32, i32 }
%struct.command = type { i8*, %struct.command* }
%struct.shallow_info = type { i32 }
%struct.string_list = type { i32 }
%struct.iterate_data = type { %struct.shallow_info*, %struct.command* }
%struct.async = type { i32, i32 }

@CHECK_CONNECTED_INIT = common dso_local global %struct.check_connected_options zeroinitializer, align 4
@.str = private unnamed_addr constant [15 x i8] c"unpacker error\00", align 1
@use_sideband = common dso_local global i64 0, align 8
@copy_to_sideband = common dso_local global i32 0, align 4
@quiet = common dso_local global i32 0, align 4
@tmp_objdir = common dso_local global i32* null, align 8
@iterate_receive_command_list = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"pre-receive\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"pre-receive hook declined\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"unable to migrate objects to permanent storage\00", align 1
@head_name_to_free = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@head_name = common dso_local global i32 0, align 4
@use_atomic = common dso_local global i64 0, align 8
@shallow_update = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.command*, i8*, %struct.shallow_info*, %struct.string_list*)* @execute_commands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @execute_commands(%struct.command* %0, i8* %1, %struct.shallow_info* %2, %struct.string_list* %3) #0 {
  %5 = alloca %struct.command*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.shallow_info*, align 8
  %8 = alloca %struct.string_list*, align 8
  %9 = alloca %struct.check_connected_options, align 4
  %10 = alloca %struct.command*, align 8
  %11 = alloca %struct.iterate_data, align 8
  %12 = alloca %struct.async, align 4
  %13 = alloca i32, align 4
  store %struct.command* %0, %struct.command** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.shallow_info* %2, %struct.shallow_info** %7, align 8
  store %struct.string_list* %3, %struct.string_list** %8, align 8
  %14 = bitcast %struct.check_connected_options* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.check_connected_options* @CHECK_CONNECTED_INIT to i8*), i64 12, i1 false)
  store i32 0, i32* %13, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %30

17:                                               ; preds = %4
  %18 = load %struct.command*, %struct.command** %5, align 8
  store %struct.command* %18, %struct.command** %10, align 8
  br label %19

19:                                               ; preds = %25, %17
  %20 = load %struct.command*, %struct.command** %10, align 8
  %21 = icmp ne %struct.command* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load %struct.command*, %struct.command** %10, align 8
  %24 = getelementptr inbounds %struct.command, %struct.command* %23, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %24, align 8
  br label %25

25:                                               ; preds = %22
  %26 = load %struct.command*, %struct.command** %10, align 8
  %27 = getelementptr inbounds %struct.command, %struct.command* %26, i32 0, i32 1
  %28 = load %struct.command*, %struct.command** %27, align 8
  store %struct.command* %28, %struct.command** %10, align 8
  br label %19

29:                                               ; preds = %19
  br label %148

30:                                               ; preds = %4
  %31 = load i64, i64* @use_sideband, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = call i32 @memset(%struct.async* %12, i32 0, i32 8)
  %35 = load i32, i32* @copy_to_sideband, align 4
  %36 = getelementptr inbounds %struct.async, %struct.async* %12, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.async, %struct.async* %12, i32 0, i32 0
  store i32 -1, i32* %37, align 4
  %38 = call i32 @start_async(%struct.async* %12)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.async, %struct.async* %12, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %13, align 4
  br label %43

43:                                               ; preds = %40, %33
  br label %44

44:                                               ; preds = %43, %30
  %45 = load %struct.command*, %struct.command** %5, align 8
  %46 = getelementptr inbounds %struct.iterate_data, %struct.iterate_data* %11, i32 0, i32 1
  store %struct.command* %45, %struct.command** %46, align 8
  %47 = load %struct.shallow_info*, %struct.shallow_info** %7, align 8
  %48 = getelementptr inbounds %struct.iterate_data, %struct.iterate_data* %11, i32 0, i32 0
  store %struct.shallow_info* %47, %struct.shallow_info** %48, align 8
  %49 = load i32, i32* %13, align 4
  %50 = getelementptr inbounds %struct.check_connected_options, %struct.check_connected_options* %9, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %44
  %54 = load i32, i32* @quiet, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br label %57

57:                                               ; preds = %53, %44
  %58 = phi i1 [ false, %44 ], [ %56, %53 ]
  %59 = zext i1 %58 to i32
  %60 = getelementptr inbounds %struct.check_connected_options, %struct.check_connected_options* %9, i32 0, i32 1
  store i32 %59, i32* %60, align 4
  %61 = load i32*, i32** @tmp_objdir, align 8
  %62 = call i32 @tmp_objdir_env(i32* %61)
  %63 = getelementptr inbounds %struct.check_connected_options, %struct.check_connected_options* %9, i32 0, i32 2
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* @iterate_receive_command_list, align 4
  %65 = call i64 @check_connected(i32 %64, %struct.iterate_data* %11, %struct.check_connected_options* %9)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %57
  %68 = load %struct.command*, %struct.command** %5, align 8
  %69 = load %struct.shallow_info*, %struct.shallow_info** %7, align 8
  %70 = call i32 @set_connectivity_errors(%struct.command* %68, %struct.shallow_info* %69)
  br label %71

71:                                               ; preds = %67, %57
  %72 = load i64, i64* @use_sideband, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = call i32 @finish_async(%struct.async* %12)
  br label %76

76:                                               ; preds = %74, %71
  %77 = load %struct.command*, %struct.command** %5, align 8
  %78 = call i32 @reject_updates_to_hidden(%struct.command* %77)
  %79 = load %struct.command*, %struct.command** %5, align 8
  %80 = load %struct.string_list*, %struct.string_list** %8, align 8
  %81 = call i64 @run_receive_hook(%struct.command* %79, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 0, %struct.string_list* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %76
  %84 = load %struct.command*, %struct.command** %5, align 8
  store %struct.command* %84, %struct.command** %10, align 8
  br label %85

85:                                               ; preds = %97, %83
  %86 = load %struct.command*, %struct.command** %10, align 8
  %87 = icmp ne %struct.command* %86, null
  br i1 %87, label %88, label %101

88:                                               ; preds = %85
  %89 = load %struct.command*, %struct.command** %10, align 8
  %90 = getelementptr inbounds %struct.command, %struct.command* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %88
  %94 = load %struct.command*, %struct.command** %10, align 8
  %95 = getelementptr inbounds %struct.command, %struct.command* %94, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8** %95, align 8
  br label %96

96:                                               ; preds = %93, %88
  br label %97

97:                                               ; preds = %96
  %98 = load %struct.command*, %struct.command** %10, align 8
  %99 = getelementptr inbounds %struct.command, %struct.command* %98, i32 0, i32 1
  %100 = load %struct.command*, %struct.command** %99, align 8
  store %struct.command* %100, %struct.command** %10, align 8
  br label %85

101:                                              ; preds = %85
  br label %148

102:                                              ; preds = %76
  %103 = load i32*, i32** @tmp_objdir, align 8
  %104 = call i64 @tmp_objdir_migrate(i32* %103)
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %125

106:                                              ; preds = %102
  %107 = load %struct.command*, %struct.command** %5, align 8
  store %struct.command* %107, %struct.command** %10, align 8
  br label %108

108:                                              ; preds = %120, %106
  %109 = load %struct.command*, %struct.command** %10, align 8
  %110 = icmp ne %struct.command* %109, null
  br i1 %110, label %111, label %124

111:                                              ; preds = %108
  %112 = load %struct.command*, %struct.command** %10, align 8
  %113 = getelementptr inbounds %struct.command, %struct.command* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %111
  %117 = load %struct.command*, %struct.command** %10, align 8
  %118 = getelementptr inbounds %struct.command, %struct.command* %117, i32 0, i32 0
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8** %118, align 8
  br label %119

119:                                              ; preds = %116, %111
  br label %120

120:                                              ; preds = %119
  %121 = load %struct.command*, %struct.command** %10, align 8
  %122 = getelementptr inbounds %struct.command, %struct.command* %121, i32 0, i32 1
  %123 = load %struct.command*, %struct.command** %122, align 8
  store %struct.command* %123, %struct.command** %10, align 8
  br label %108

124:                                              ; preds = %108
  br label %148

125:                                              ; preds = %102
  store i32* null, i32** @tmp_objdir, align 8
  %126 = load %struct.command*, %struct.command** %5, align 8
  %127 = call i32 @check_aliased_updates(%struct.command* %126)
  %128 = load i32, i32* @head_name_to_free, align 4
  %129 = call i32 @free(i32 %128)
  %130 = call i32 @resolve_refdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 0, i32* null, i32* null)
  store i32 %130, i32* @head_name_to_free, align 4
  store i32 %130, i32* @head_name, align 4
  %131 = load i64, i64* @use_atomic, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %125
  %134 = load %struct.command*, %struct.command** %5, align 8
  %135 = load %struct.shallow_info*, %struct.shallow_info** %7, align 8
  %136 = call i32 @execute_commands_atomic(%struct.command* %134, %struct.shallow_info* %135)
  br label %141

137:                                              ; preds = %125
  %138 = load %struct.command*, %struct.command** %5, align 8
  %139 = load %struct.shallow_info*, %struct.shallow_info** %7, align 8
  %140 = call i32 @execute_commands_non_atomic(%struct.command* %138, %struct.shallow_info* %139)
  br label %141

141:                                              ; preds = %137, %133
  %142 = load i64, i64* @shallow_update, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = load %struct.command*, %struct.command** %5, align 8
  %146 = load %struct.shallow_info*, %struct.shallow_info** %7, align 8
  %147 = call i32 @warn_if_skipped_connectivity_check(%struct.command* %145, %struct.shallow_info* %146)
  br label %148

148:                                              ; preds = %29, %101, %124, %144, %141
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.async*, i32, i32) #2

declare dso_local i32 @start_async(%struct.async*) #2

declare dso_local i32 @tmp_objdir_env(i32*) #2

declare dso_local i64 @check_connected(i32, %struct.iterate_data*, %struct.check_connected_options*) #2

declare dso_local i32 @set_connectivity_errors(%struct.command*, %struct.shallow_info*) #2

declare dso_local i32 @finish_async(%struct.async*) #2

declare dso_local i32 @reject_updates_to_hidden(%struct.command*) #2

declare dso_local i64 @run_receive_hook(%struct.command*, i8*, i32, %struct.string_list*) #2

declare dso_local i64 @tmp_objdir_migrate(i32*) #2

declare dso_local i32 @check_aliased_updates(%struct.command*) #2

declare dso_local i32 @free(i32) #2

declare dso_local i32 @resolve_refdup(i8*, i32, i32*, i32*) #2

declare dso_local i32 @execute_commands_atomic(%struct.command*, %struct.shallow_info*) #2

declare dso_local i32 @execute_commands_non_atomic(%struct.command*, %struct.shallow_info*) #2

declare dso_local i32 @warn_if_skipped_connectivity_check(%struct.command*, %struct.shallow_info*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
