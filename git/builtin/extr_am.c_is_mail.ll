; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_am.c_is_mail.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_am.c_is_mail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [12 x i8] c"^[!-9;-~]+:\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"fseek failed\00", align 1
@REG_NOSUB = common dso_local global i32 0, align 4
@REG_EXTENDED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"invalid pattern: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @is_mail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_mail(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.strbuf, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %7 = bitcast %struct.strbuf* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  store i32 1, i32* %6, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* @SEEK_SET, align 4
  %10 = call i64 @fseek(i32* %8, i64 0, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = call i32 @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @die_errno(i32 %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* @REG_NOSUB, align 4
  %18 = load i32, i32* @REG_EXTENDED, align 4
  %19 = or i32 %17, %18
  %20 = call i64 @regcomp(i32* %5, i8* %16, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @die(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %22, %15
  br label %26

26:                                               ; preds = %55, %48, %25
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @strbuf_getline(%struct.strbuf* %4, i32* %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %56

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  br label %56

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 9
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 32
  br i1 %47, label %48, label %49

48:                                               ; preds = %42, %36
  br label %26

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @regexec(i32* %5, i8* %51, i32 0, i32* null, i32 0)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  br label %57

55:                                               ; preds = %49
  br label %26

56:                                               ; preds = %35, %26
  br label %57

57:                                               ; preds = %56, %54
  %58 = call i32 @regfree(i32* %5)
  %59 = call i32 @strbuf_release(%struct.strbuf* %4)
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @fseek(i32*, i64, i32) #2

declare dso_local i32 @die_errno(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i64 @regcomp(i32*, i8*, i32) #2

declare dso_local i32 @die(i8*, i8*) #2

declare dso_local i32 @strbuf_getline(%struct.strbuf*, i32*) #2

declare dso_local i64 @regexec(i32*, i8*, i32, i32*, i32) #2

declare dso_local i32 @regfree(i32*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
