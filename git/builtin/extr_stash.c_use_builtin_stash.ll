; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_stash.c_use_builtin_stash.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_stash.c_use_builtin_stash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32 }
%struct.strbuf = type { i32 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [27 x i8] c"GIT_TEST_STASH_USE_BUILTIN\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"--bool\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"stash.usebuiltin\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @use_builtin_stash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @use_builtin_stash() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.child_process, align 4
  %3 = alloca %struct.strbuf, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = bitcast %struct.child_process* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 8, i1 false)
  %7 = bitcast %struct.strbuf* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %8 = call i32 @git_env_bool(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 -1)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %1, align 4
  br label %31

13:                                               ; preds = %0
  %14 = getelementptr inbounds %struct.child_process, %struct.child_process* %2, i32 0, i32 1
  %15 = call i32 @argv_array_pushl(i32* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %16 = getelementptr inbounds %struct.child_process, %struct.child_process* %2, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = call i64 @capture_command(%struct.child_process* %2, %struct.strbuf* %3, i32 6)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = call i32 @strbuf_release(%struct.strbuf* %3)
  store i32 1, i32* %1, align 4
  br label %31

21:                                               ; preds = %13
  %22 = call i32 @strbuf_trim(%struct.strbuf* %3)
  %23 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %4, align 4
  %29 = call i32 @strbuf_release(%struct.strbuf* %3)
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %1, align 4
  br label %31

31:                                               ; preds = %21, %19, %11
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_env_bool(i8*, i32) #2

declare dso_local i32 @argv_array_pushl(i32*, i8*, i8*, i8*, i32*) #2

declare dso_local i64 @capture_command(%struct.child_process*, %struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @strbuf_trim(%struct.strbuf*) #2

declare dso_local i32 @strcmp(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
