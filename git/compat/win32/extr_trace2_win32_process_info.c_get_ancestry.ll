; ModuleID = '/home/carl/AnghaBench/git/compat/win32/extr_trace2_win32_process_info.c_get_ancestry.c'
source_filename = "/home/carl/AnghaBench/git/compat/win32/extr_trace2_win32_process_info.c_get_ancestry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.json_writer = type { i32 }

@TH32CS_SNAPPROCESS = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@JSON_WRITER_INIT = common dso_local global %struct.json_writer zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"process\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"windows/ancestry\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @get_ancestry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_ancestry() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.json_writer, align 4
  %3 = load i32, i32* @TH32CS_SNAPPROCESS, align 4
  %4 = call i64 @CreateToolhelp32Snapshot(i32 %3, i32 0)
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %19

8:                                                ; preds = %0
  %9 = bitcast %struct.json_writer* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.json_writer* @JSON_WRITER_INIT to i8*), i64 4, i1 false)
  %10 = call i32 @jw_array_begin(%struct.json_writer* %2, i32 0)
  %11 = load i64, i64* %1, align 8
  %12 = call i32 @get_processes(%struct.json_writer* %2, i64 %11)
  %13 = call i32 @jw_end(%struct.json_writer* %2)
  %14 = load i32, i32* @the_repository, align 4
  %15 = call i32 @trace2_data_json(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), %struct.json_writer* %2)
  %16 = call i32 @jw_release(%struct.json_writer* %2)
  %17 = load i64, i64* %1, align 8
  %18 = call i32 @CloseHandle(i64 %17)
  br label %19

19:                                               ; preds = %8, %0
  ret void
}

declare dso_local i64 @CreateToolhelp32Snapshot(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @jw_array_begin(%struct.json_writer*, i32) #1

declare dso_local i32 @get_processes(%struct.json_writer*, i64) #1

declare dso_local i32 @jw_end(%struct.json_writer*) #1

declare dso_local i32 @trace2_data_json(i8*, i32, i8*, %struct.json_writer*) #1

declare dso_local i32 @jw_release(%struct.json_writer*) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
