; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/login/extr_login.c_getloginname.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/login/extr_login.c_getloginname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXLOGNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"malloc()\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@prompt = common dso_local global i8* null, align 8
@EOF = common dso_local global i32 0, align 4
@username = common dso_local global i32 0, align 4
@NO_SLEEP_EXIT = common dso_local global i32 0, align 4
@pam_silent = common dso_local global i64 0, align 8
@PAM_SILENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @getloginname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getloginname() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @MAXLOGNAME, align 4
  %5 = call i8* @malloc(i32 %4)
  store i8* %5, i8** %1, align 8
  %6 = load i8*, i8** %1, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %0
  br label %11

11:                                               ; preds = %42, %10
  %12 = load i8*, i8** @prompt, align 8
  %13 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  %14 = load i8*, i8** %1, align 8
  store i8* %14, i8** %2, align 8
  br label %15

15:                                               ; preds = %40, %11
  %16 = call i32 (...) @getchar()
  store i32 %16, i32* %3, align 4
  %17 = icmp ne i32 %16, 10
  br i1 %17, label %18, label %41

18:                                               ; preds = %15
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @EOF, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32, i32* @username, align 4
  %24 = call i32 @badlogin(i32 %23)
  %25 = load i32, i32* @NO_SLEEP_EXIT, align 4
  %26 = call i32 @bail(i32 %25, i32 0)
  br label %27

27:                                               ; preds = %22, %18
  %28 = load i8*, i8** %2, align 8
  %29 = load i8*, i8** %1, align 8
  %30 = load i32, i32* @MAXLOGNAME, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = getelementptr inbounds i8, i8* %32, i64 -1
  %34 = icmp ult i8* %28, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load i32, i32* %3, align 4
  %37 = trunc i32 %36 to i8
  %38 = load i8*, i8** %2, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %2, align 8
  store i8 %37, i8* %38, align 1
  br label %40

40:                                               ; preds = %35, %27
  br label %15

41:                                               ; preds = %15
  br label %42

42:                                               ; preds = %41
  %43 = load i8*, i8** %2, align 8
  %44 = load i8*, i8** %1, align 8
  %45 = icmp eq i8* %43, %44
  br i1 %45, label %11, label %46

46:                                               ; preds = %42
  %47 = load i8*, i8** %2, align 8
  store i8 0, i8* %47, align 1
  %48 = load i8*, i8** %1, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 45
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  store i64 0, i64* @pam_silent, align 8
  %54 = load i8*, i8** %1, align 8
  %55 = load i8*, i8** %1, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = load i8*, i8** %1, align 8
  %58 = call i32 @strlen(i8* %57)
  %59 = call i32 @memmove(i8* %54, i8* %56, i32 %58)
  br label %62

60:                                               ; preds = %46
  %61 = load i64, i64* @PAM_SILENT, align 8
  store i64 %61, i64* @pam_silent, align 8
  br label %62

62:                                               ; preds = %60, %53
  %63 = load i8*, i8** %1, align 8
  ret i8* %63
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @getchar(...) #1

declare dso_local i32 @badlogin(i32) #1

declare dso_local i32 @bail(i32, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
