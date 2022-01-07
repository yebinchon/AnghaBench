; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge.c_restore_state.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge.c_restore_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.object_id = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [6 x i8] c"stash\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"apply\00", align 1
@__const.restore_state.args = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* null], align 16
@RUN_GIT_CMD = common dso_local global i32 0, align 4
@REFRESH_QUIET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object_id*, %struct.object_id*)* @restore_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_state(%struct.object_id* %0, %struct.object_id* %1) #0 {
  %3 = alloca %struct.object_id*, align 8
  %4 = alloca %struct.object_id*, align 8
  %5 = alloca %struct.strbuf, align 4
  %6 = alloca [4 x i8*], align 16
  store %struct.object_id* %0, %struct.object_id** %3, align 8
  store %struct.object_id* %1, %struct.object_id** %4, align 8
  %7 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %8 = bitcast [4 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([4 x i8*]* @__const.restore_state.args to i8*), i64 32, i1 false)
  %9 = load %struct.object_id*, %struct.object_id** %4, align 8
  %10 = call i64 @is_null_oid(%struct.object_id* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %25

13:                                               ; preds = %2
  %14 = load %struct.object_id*, %struct.object_id** %3, align 8
  %15 = call i32 @reset_hard(%struct.object_id* %14, i32 1)
  %16 = load %struct.object_id*, %struct.object_id** %4, align 8
  %17 = call i8* @oid_to_hex(%struct.object_id* %16)
  %18 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 2
  store i8* %17, i8** %18, align 16
  %19 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 0
  %20 = load i32, i32* @RUN_GIT_CMD, align 4
  %21 = call i32 @run_command_v_opt(i8** %19, i32 %20)
  %22 = call i32 @strbuf_release(%struct.strbuf* %5)
  %23 = load i32, i32* @REFRESH_QUIET, align 4
  %24 = call i32 @refresh_cache(i32 %23)
  br label %25

25:                                               ; preds = %13, %12
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @is_null_oid(%struct.object_id*) #2

declare dso_local i32 @reset_hard(%struct.object_id*, i32) #2

declare dso_local i8* @oid_to_hex(%struct.object_id*) #2

declare dso_local i32 @run_command_v_opt(i8**, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @refresh_cache(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
