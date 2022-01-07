; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_execute_commands_non_atomic.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_execute_commands_non_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.command = type { i8*, %struct.command* }
%struct.shallow_info = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@transaction = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"transaction failed to start\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"failed to update ref\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.command*, %struct.shallow_info*)* @execute_commands_non_atomic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @execute_commands_non_atomic(%struct.command* %0, %struct.shallow_info* %1) #0 {
  %3 = alloca %struct.command*, align 8
  %4 = alloca %struct.shallow_info*, align 8
  %5 = alloca %struct.command*, align 8
  %6 = alloca %struct.strbuf, align 4
  store %struct.command* %0, %struct.command** %3, align 8
  store %struct.shallow_info* %1, %struct.shallow_info** %4, align 8
  %7 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %8 = load %struct.command*, %struct.command** %3, align 8
  store %struct.command* %8, %struct.command** %5, align 8
  br label %9

9:                                                ; preds = %52, %2
  %10 = load %struct.command*, %struct.command** %5, align 8
  %11 = icmp ne %struct.command* %10, null
  br i1 %11, label %12, label %56

12:                                               ; preds = %9
  %13 = load %struct.command*, %struct.command** %5, align 8
  %14 = call i32 @should_process_cmd(%struct.command* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  br label %52

17:                                               ; preds = %12
  %18 = call i32 @ref_transaction_begin(%struct.strbuf* %6)
  store i32 %18, i32* @transaction, align 4
  %19 = load i32, i32* @transaction, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @rp_error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = call i32 @strbuf_reset(%struct.strbuf* %6)
  %26 = load %struct.command*, %struct.command** %5, align 8
  %27 = getelementptr inbounds %struct.command, %struct.command* %26, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8** %27, align 8
  br label %52

28:                                               ; preds = %17
  %29 = load %struct.command*, %struct.command** %5, align 8
  %30 = load %struct.shallow_info*, %struct.shallow_info** %4, align 8
  %31 = call i8* @update(%struct.command* %29, %struct.shallow_info* %30)
  %32 = load %struct.command*, %struct.command** %5, align 8
  %33 = getelementptr inbounds %struct.command, %struct.command* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load %struct.command*, %struct.command** %5, align 8
  %35 = getelementptr inbounds %struct.command, %struct.command* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %49, label %38

38:                                               ; preds = %28
  %39 = load i32, i32* @transaction, align 4
  %40 = call i64 @ref_transaction_commit(i32 %39, %struct.strbuf* %6)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @rp_error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = call i32 @strbuf_reset(%struct.strbuf* %6)
  %47 = load %struct.command*, %struct.command** %5, align 8
  %48 = getelementptr inbounds %struct.command, %struct.command* %47, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8** %48, align 8
  br label %49

49:                                               ; preds = %42, %38, %28
  %50 = load i32, i32* @transaction, align 4
  %51 = call i32 @ref_transaction_free(i32 %50)
  br label %52

52:                                               ; preds = %49, %21, %16
  %53 = load %struct.command*, %struct.command** %5, align 8
  %54 = getelementptr inbounds %struct.command, %struct.command* %53, i32 0, i32 1
  %55 = load %struct.command*, %struct.command** %54, align 8
  store %struct.command* %55, %struct.command** %5, align 8
  br label %9

56:                                               ; preds = %9
  %57 = call i32 @strbuf_release(%struct.strbuf* %6)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @should_process_cmd(%struct.command*) #2

declare dso_local i32 @ref_transaction_begin(%struct.strbuf*) #2

declare dso_local i32 @rp_error(i8*, i32) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i8* @update(%struct.command*, %struct.shallow_info*) #2

declare dso_local i64 @ref_transaction_commit(i32, %struct.strbuf*) #2

declare dso_local i32 @ref_transaction_free(i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
