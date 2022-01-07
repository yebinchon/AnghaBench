; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/login/extr_login.c_pam_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/login/extr_login.c_pam_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pamh = common dso_local global i32* null, align 8
@pam_session_established = common dso_local global i64 0, align 8
@pam_err = common dso_local global i64 0, align 8
@PAM_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"pam_close_session()\00", align 1
@pam_cred_established = common dso_local global i64 0, align 8
@pam_silent = common dso_local global i32 0, align 4
@PAM_DELETE_CRED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"pam_setcred()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pam_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pam_cleanup() #0 {
  %1 = load i32*, i32** @pamh, align 8
  %2 = icmp ne i32* %1, null
  br i1 %2, label %3, label %34

3:                                                ; preds = %0
  %4 = load i64, i64* @pam_session_established, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = load i32*, i32** @pamh, align 8
  %8 = call i64 @pam_close_session(i32* %7, i32 0)
  store i64 %8, i64* @pam_err, align 8
  %9 = load i64, i64* @pam_err, align 8
  %10 = load i64, i64* @PAM_SUCCESS, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = call i32 @pam_syslog(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %6
  br label %15

15:                                               ; preds = %14, %3
  store i64 0, i64* @pam_session_established, align 8
  %16 = load i64, i64* @pam_cred_established, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = load i32*, i32** @pamh, align 8
  %20 = load i32, i32* @pam_silent, align 4
  %21 = load i32, i32* @PAM_DELETE_CRED, align 4
  %22 = or i32 %20, %21
  %23 = call i64 @pam_setcred(i32* %19, i32 %22)
  store i64 %23, i64* @pam_err, align 8
  %24 = load i64, i64* @pam_err, align 8
  %25 = load i64, i64* @PAM_SUCCESS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = call i32 @pam_syslog(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %18
  br label %30

30:                                               ; preds = %29, %15
  store i64 0, i64* @pam_cred_established, align 8
  %31 = load i32*, i32** @pamh, align 8
  %32 = load i64, i64* @pam_err, align 8
  %33 = call i32 @pam_end(i32* %31, i64 %32)
  store i32* null, i32** @pamh, align 8
  br label %34

34:                                               ; preds = %30, %0
  ret void
}

declare dso_local i64 @pam_close_session(i32*, i32) #1

declare dso_local i32 @pam_syslog(i8*) #1

declare dso_local i64 @pam_setcred(i32*, i32) #1

declare dso_local i32 @pam_end(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
