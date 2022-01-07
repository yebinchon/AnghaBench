; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_execute_commands_atomic.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_execute_commands_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.command = type { i8*, %struct.command* }
%struct.shallow_info = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [20 x i8] c"atomic push failure\00", align 1
@transaction = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"transaction failed to start\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"atomic transaction failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.command*, %struct.shallow_info*)* @execute_commands_atomic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @execute_commands_atomic(%struct.command* %0, %struct.shallow_info* %1) #0 {
  %3 = alloca %struct.command*, align 8
  %4 = alloca %struct.shallow_info*, align 8
  %5 = alloca %struct.command*, align 8
  %6 = alloca %struct.strbuf, align 4
  %7 = alloca i8*, align 8
  store %struct.command* %0, %struct.command** %3, align 8
  store %struct.shallow_info* %1, %struct.shallow_info** %4, align 8
  %8 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %9 = call i32 @ref_transaction_begin(%struct.strbuf* %6)
  store i32 %9, i32* @transaction, align 4
  %10 = load i32, i32* @transaction, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @rp_error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = call i32 @strbuf_reset(%struct.strbuf* %6)
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %52

17:                                               ; preds = %2
  %18 = load %struct.command*, %struct.command** %3, align 8
  store %struct.command* %18, %struct.command** %5, align 8
  br label %19

19:                                               ; preds = %39, %17
  %20 = load %struct.command*, %struct.command** %5, align 8
  %21 = icmp ne %struct.command* %20, null
  br i1 %21, label %22, label %43

22:                                               ; preds = %19
  %23 = load %struct.command*, %struct.command** %5, align 8
  %24 = call i32 @should_process_cmd(%struct.command* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  br label %39

27:                                               ; preds = %22
  %28 = load %struct.command*, %struct.command** %5, align 8
  %29 = load %struct.shallow_info*, %struct.shallow_info** %4, align 8
  %30 = call i8* @update(%struct.command* %28, %struct.shallow_info* %29)
  %31 = load %struct.command*, %struct.command** %5, align 8
  %32 = getelementptr inbounds %struct.command, %struct.command* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load %struct.command*, %struct.command** %5, align 8
  %34 = getelementptr inbounds %struct.command, %struct.command* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %52

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38, %26
  %40 = load %struct.command*, %struct.command** %5, align 8
  %41 = getelementptr inbounds %struct.command, %struct.command* %40, i32 0, i32 1
  %42 = load %struct.command*, %struct.command** %41, align 8
  store %struct.command* %42, %struct.command** %5, align 8
  br label %19

43:                                               ; preds = %19
  %44 = load i32, i32* @transaction, align 4
  %45 = call i64 @ref_transaction_commit(i32 %44, %struct.strbuf* %6)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @rp_error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %52

51:                                               ; preds = %43
  br label %72

52:                                               ; preds = %47, %37, %12
  %53 = load %struct.command*, %struct.command** %3, align 8
  store %struct.command* %53, %struct.command** %5, align 8
  br label %54

54:                                               ; preds = %67, %52
  %55 = load %struct.command*, %struct.command** %5, align 8
  %56 = icmp ne %struct.command* %55, null
  br i1 %56, label %57, label %71

57:                                               ; preds = %54
  %58 = load %struct.command*, %struct.command** %5, align 8
  %59 = getelementptr inbounds %struct.command, %struct.command* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = load i8*, i8** %7, align 8
  %64 = load %struct.command*, %struct.command** %5, align 8
  %65 = getelementptr inbounds %struct.command, %struct.command* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  br label %66

66:                                               ; preds = %62, %57
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.command*, %struct.command** %5, align 8
  %69 = getelementptr inbounds %struct.command, %struct.command* %68, i32 0, i32 1
  %70 = load %struct.command*, %struct.command** %69, align 8
  store %struct.command* %70, %struct.command** %5, align 8
  br label %54

71:                                               ; preds = %54
  br label %72

72:                                               ; preds = %71, %51
  %73 = load i32, i32* @transaction, align 4
  %74 = call i32 @ref_transaction_free(i32 %73)
  %75 = call i32 @strbuf_release(%struct.strbuf* %6)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ref_transaction_begin(%struct.strbuf*) #2

declare dso_local i32 @rp_error(i8*, i32) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @should_process_cmd(%struct.command*) #2

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
