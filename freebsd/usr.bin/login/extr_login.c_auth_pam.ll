; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/login/extr_login.c_auth_pam.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/login/extr_login.c_auth_pam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pamh = common dso_local global i32* null, align 8
@pam_silent = common dso_local global i32 0, align 4
@pam_err = common dso_local global i32 0, align 4
@PAM_USER = common dso_local global i32 0, align 4
@username = common dso_local global i32 0, align 4
@pwd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"pam_get_item(PAM_USER)\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"pam_authenticate()\00", align 1
@PAM_CHANGE_EXPIRED_AUTHTOK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"pam_chauthtok()\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"pam_acct_mgmt()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @auth_pam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auth_pam() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = load i32*, i32** @pamh, align 8
  %5 = load i32, i32* @pam_silent, align 4
  %6 = call i32 @pam_authenticate(i32* %4, i32 %5)
  store i32 %6, i32* @pam_err, align 4
  %7 = load i32, i32* @pam_err, align 4
  switch i32 %7, label %28 [
    i32 129, label %8
    i32 132, label %27
    i32 128, label %27
    i32 131, label %27
  ]

8:                                                ; preds = %0
  %9 = load i32*, i32** @pamh, align 8
  %10 = load i32, i32* @PAM_USER, align 4
  %11 = call i32 @pam_get_item(i32* %9, i32 %10, i8** %2)
  store i32 %11, i32* @pam_err, align 4
  %12 = load i32, i32* @pam_err, align 4
  %13 = icmp eq i32 %12, 129
  br i1 %13, label %14, label %24

14:                                               ; preds = %8
  %15 = load i8*, i8** %2, align 8
  store i8* %15, i8** %1, align 8
  %16 = load i32, i32* @username, align 4
  %17 = load i8*, i8** %1, align 8
  %18 = call i32 @strcmp(i32 %16, i8* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i8*, i8** %1, align 8
  %22 = call i32 @getpwnam(i8* %21)
  store i32 %22, i32* @pwd, align 4
  br label %23

23:                                               ; preds = %20, %14
  br label %26

24:                                               ; preds = %8
  %25 = call i32 @pam_syslog(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %23
  store i32 0, i32* %3, align 4
  br label %30

27:                                               ; preds = %0, %0, %0
  store i32 1, i32* %3, align 4
  br label %30

28:                                               ; preds = %0
  %29 = call i32 @pam_syslog(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %30

30:                                               ; preds = %28, %27, %26
  %31 = load i32, i32* %3, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %30
  %34 = load i32*, i32** @pamh, align 8
  %35 = load i32, i32* @pam_silent, align 4
  %36 = call i32 @pam_acct_mgmt(i32* %34, i32 %35)
  store i32 %36, i32* @pam_err, align 4
  %37 = load i32, i32* @pam_err, align 4
  switch i32 %37, label %50 [
    i32 129, label %38
    i32 130, label %39
  ]

38:                                               ; preds = %33
  br label %52

39:                                               ; preds = %33
  %40 = load i32*, i32** @pamh, align 8
  %41 = load i32, i32* @pam_silent, align 4
  %42 = load i32, i32* @PAM_CHANGE_EXPIRED_AUTHTOK, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @pam_chauthtok(i32* %40, i32 %43)
  store i32 %44, i32* @pam_err, align 4
  %45 = load i32, i32* @pam_err, align 4
  %46 = icmp ne i32 %45, 129
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = call i32 @pam_syslog(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %39
  br label %52

50:                                               ; preds = %33
  %51 = call i32 @pam_syslog(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %49, %38
  br label %53

53:                                               ; preds = %52, %30
  %54 = load i32, i32* %3, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32*, i32** @pamh, align 8
  %58 = load i32, i32* @pam_err, align 4
  %59 = call i32 @pam_end(i32* %57, i32 %58)
  store i32* null, i32** @pamh, align 8
  br label %60

60:                                               ; preds = %56, %53
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @pam_authenticate(i32*, i32) #1

declare dso_local i32 @pam_get_item(i32*, i32, i8**) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @getpwnam(i8*) #1

declare dso_local i32 @pam_syslog(i8*) #1

declare dso_local i32 @pam_acct_mgmt(i32*, i32) #1

declare dso_local i32 @pam_chauthtok(i32*, i32) #1

declare dso_local i32 @pam_end(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
