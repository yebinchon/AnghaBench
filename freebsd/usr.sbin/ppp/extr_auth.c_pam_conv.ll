; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_auth.c_pam_conv.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_auth.c_pam_conv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pam_message = type { i64 }
%struct.pam_response = type { i32*, i64 }

@PAM_PROMPT_ECHO_OFF = common dso_local global i64 0, align 8
@PAM_CONV_ERR = common dso_local global i32 0, align 4
@PAM_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pam_message**, %struct.pam_response**, i8*)* @pam_conv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pam_conv(i32 %0, %struct.pam_message** %1, %struct.pam_response** %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pam_message**, align 8
  %8 = alloca %struct.pam_response**, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.pam_message** %1, %struct.pam_message*** %7, align 8
  store %struct.pam_response** %2, %struct.pam_response*** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 1
  br i1 %11, label %20, label %12

12:                                               ; preds = %4
  %13 = load %struct.pam_message**, %struct.pam_message*** %7, align 8
  %14 = getelementptr inbounds %struct.pam_message*, %struct.pam_message** %13, i64 0
  %15 = load %struct.pam_message*, %struct.pam_message** %14, align 8
  %16 = getelementptr inbounds %struct.pam_message, %struct.pam_message* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PAM_PROMPT_ECHO_OFF, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %12, %4
  %21 = load i32, i32* @PAM_CONV_ERR, align 4
  store i32 %21, i32* %5, align 4
  br label %51

22:                                               ; preds = %12
  %23 = call %struct.pam_response* @malloc(i32 16)
  %24 = load %struct.pam_response**, %struct.pam_response*** %8, align 8
  store %struct.pam_response* %23, %struct.pam_response** %24, align 8
  %25 = icmp eq %struct.pam_response* %23, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @PAM_CONV_ERR, align 4
  store i32 %27, i32* %5, align 4
  br label %51

28:                                               ; preds = %22
  %29 = load i8*, i8** %9, align 8
  %30 = call i32* @strdup(i8* %29)
  %31 = load %struct.pam_response**, %struct.pam_response*** %8, align 8
  %32 = load %struct.pam_response*, %struct.pam_response** %31, align 8
  %33 = getelementptr inbounds %struct.pam_response, %struct.pam_response* %32, i64 0
  %34 = getelementptr inbounds %struct.pam_response, %struct.pam_response* %33, i32 0, i32 0
  store i32* %30, i32** %34, align 8
  %35 = load %struct.pam_response**, %struct.pam_response*** %8, align 8
  %36 = load %struct.pam_response*, %struct.pam_response** %35, align 8
  %37 = getelementptr inbounds %struct.pam_response, %struct.pam_response* %36, i64 0
  %38 = getelementptr inbounds %struct.pam_response, %struct.pam_response* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.pam_response**, %struct.pam_response*** %8, align 8
  %40 = load %struct.pam_response*, %struct.pam_response** %39, align 8
  %41 = getelementptr inbounds %struct.pam_response, %struct.pam_response* %40, i64 0
  %42 = getelementptr inbounds %struct.pam_response, %struct.pam_response* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %28
  %46 = load i32, i32* @PAM_SUCCESS, align 4
  br label %49

47:                                               ; preds = %28
  %48 = load i32, i32* @PAM_CONV_ERR, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %49, %26, %20
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local %struct.pam_response* @malloc(i32) #1

declare dso_local i32* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
