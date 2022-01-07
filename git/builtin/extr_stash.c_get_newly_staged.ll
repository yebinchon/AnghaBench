; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_stash.c_get_newly_staged.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_stash.c_get_newly_staged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32 }
%struct.strbuf = type { i32 }
%struct.object_id = type { i32 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 4
@.str = private unnamed_addr constant [11 x i8] c"diff-index\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"--cached\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"--name-only\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"--diff-filter=A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strbuf*, %struct.object_id*)* @get_newly_staged to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_newly_staged(%struct.strbuf* %0, %struct.object_id* %1) #0 {
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca %struct.object_id*, align 8
  %5 = alloca %struct.child_process, align 4
  %6 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store %struct.object_id* %1, %struct.object_id** %4, align 8
  %7 = bitcast %struct.child_process* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 8, i1 false)
  %8 = load %struct.object_id*, %struct.object_id** %4, align 8
  %9 = call i8* @oid_to_hex(%struct.object_id* %8)
  store i8* %9, i8** %6, align 8
  %10 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 1
  %12 = call i32 @argv_array_pushl(i32* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %13 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 1
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @argv_array_push(i32* %13, i8* %14)
  %16 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %17 = call i32 @pipe_command(%struct.child_process* %5, i32* null, i32 0, %struct.strbuf* %16, i32 0, i32* null, i32 0)
  ret i32 %17
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @oid_to_hex(%struct.object_id*) #2

declare dso_local i32 @argv_array_pushl(i32*, i8*, i8*, i8*, i8*, i32*) #2

declare dso_local i32 @argv_array_push(i32*, i8*) #2

declare dso_local i32 @pipe_command(%struct.child_process*, i32*, i32, %struct.strbuf*, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
