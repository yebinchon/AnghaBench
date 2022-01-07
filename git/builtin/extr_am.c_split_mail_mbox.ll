; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_am.c_split_mail_mbox.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_am.c_split_mail_mbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32 }
%struct.strbuf = type { i32 }
%struct.am_state = type { i32, i32, i32, i32 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [10 x i8] c"mailsplit\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"-d%d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"-o%s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"--keep-cr\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"--mboxrd\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.am_state*, i8**, i32, i32)* @split_mail_mbox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @split_mail_mbox(%struct.am_state* %0, i8** %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.am_state*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.child_process, align 4
  %10 = alloca %struct.strbuf, align 4
  %11 = alloca i32, align 4
  store %struct.am_state* %0, %struct.am_state** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = bitcast %struct.child_process* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 8, i1 false)
  %13 = bitcast %struct.strbuf* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %14 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 1
  %16 = call i32 @argv_array_push(i32* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %17 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 1
  %18 = load %struct.am_state*, %struct.am_state** %5, align 8
  %19 = getelementptr inbounds %struct.am_state, %struct.am_state* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @argv_array_pushf(i32* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 1
  %23 = load %struct.am_state*, %struct.am_state** %5, align 8
  %24 = getelementptr inbounds %struct.am_state, %struct.am_state* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @argv_array_pushf(i32* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 1
  %28 = call i32 @argv_array_push(i32* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 1
  %33 = call i32 @argv_array_push(i32* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 1
  %39 = call i32 @argv_array_push(i32* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %34
  %41 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 1
  %42 = call i32 @argv_array_push(i32* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %43 = getelementptr inbounds %struct.child_process, %struct.child_process* %9, i32 0, i32 1
  %44 = load i8**, i8*** %6, align 8
  %45 = call i32 @argv_array_pushv(i32* %43, i8** %44)
  %46 = call i32 @capture_command(%struct.child_process* %9, %struct.strbuf* %10, i32 8)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %58

50:                                               ; preds = %40
  %51 = load %struct.am_state*, %struct.am_state** %5, align 8
  %52 = getelementptr inbounds %struct.am_state, %struct.am_state* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  %53 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @strtol(i32 %54, i32* null, i32 10)
  %56 = load %struct.am_state*, %struct.am_state** %5, align 8
  %57 = getelementptr inbounds %struct.am_state, %struct.am_state* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %50, %49
  %59 = call i32 @strbuf_release(%struct.strbuf* %10)
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 -1, i32 0
  ret i32 %63
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @argv_array_push(i32*, i8*) #2

declare dso_local i32 @argv_array_pushf(i32*, i8*, i32) #2

declare dso_local i32 @argv_array_pushv(i32*, i8**) #2

declare dso_local i32 @capture_command(%struct.child_process*, %struct.strbuf*, i32) #2

declare dso_local i32 @strtol(i32, i32*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
