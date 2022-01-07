; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_help.c_exec_man_konqueror.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_help.c_exec_man_konqueror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"DISPLAY\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"kfmclient\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"/konqueror\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"%.*s/kfmclient\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"man:%s(1)\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"newTab\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"failed to exec '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @exec_man_konqueror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exec_man_konqueror(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.strbuf, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %46

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %46

17:                                               ; preds = %12
  %18 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load i8*, i8** %3, align 8
  %23 = call i64 @strip_suffix(i8* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64* %8)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i64, i64* %8, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i8*, i8** %3, align 8
  %29 = call i8* @xstrfmt(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %27, i8* %28)
  store i8* %29, i8** %3, align 8
  br label %30

30:                                               ; preds = %25, %21
  %31 = load i8*, i8** %3, align 8
  %32 = call i8* @basename(i8* %31)
  store i8* %32, i8** %7, align 8
  br label %34

33:                                               ; preds = %17
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @strbuf_addf(%struct.strbuf* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %35)
  %37 = load i8*, i8** %3, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @execlp(i8* %37, i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %40, i8* null)
  %42 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %43 = load i8*, i8** %3, align 8
  %44 = call i32 @warning_errno(i32 %42, i8* %43)
  %45 = call i32 @strbuf_release(%struct.strbuf* %6)
  br label %46

46:                                               ; preds = %34, %12, %2
  ret void
}

declare dso_local i8* @getenv(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @strip_suffix(i8*, i8*, i64*) #1

declare dso_local i8* @xstrfmt(i8*, i32, i8*) #1

declare dso_local i8* @basename(i8*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #1

declare dso_local i32 @execlp(i8*, i8*, i8*, i32, i8*) #1

declare dso_local i32 @warning_errno(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
