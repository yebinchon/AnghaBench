; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_am.c_split_mail.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_am.c_split_mail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.am_state = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"am.keepcr\00", align 1
@stgit_patch_to_mail = common dso_local global i32 0, align 4
@hg_patch_to_mail = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid patch_format\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.am_state*, i32, i8**, i32)* @split_mail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @split_mail(%struct.am_state* %0, i32 %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.am_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  store %struct.am_state* %0, %struct.am_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  %13 = call i32 @git_config_get_bool(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %9)
  br label %14

14:                                               ; preds = %12, %4
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %43 [
    i32 131, label %16
    i32 129, label %21
    i32 128, label %27
    i32 132, label %32
    i32 130, label %38
  ]

16:                                               ; preds = %14
  %17 = load %struct.am_state*, %struct.am_state** %6, align 8
  %18 = load i8**, i8*** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @split_mail_mbox(%struct.am_state* %17, i8** %18, i32 %19, i32 0)
  store i32 %20, i32* %5, align 4
  br label %46

21:                                               ; preds = %14
  %22 = load i32, i32* @stgit_patch_to_mail, align 4
  %23 = load %struct.am_state*, %struct.am_state** %6, align 8
  %24 = load i8**, i8*** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @split_mail_conv(i32 %22, %struct.am_state* %23, i8** %24, i32 %25)
  store i32 %26, i32* %5, align 4
  br label %46

27:                                               ; preds = %14
  %28 = load %struct.am_state*, %struct.am_state** %6, align 8
  %29 = load i8**, i8*** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @split_mail_stgit_series(%struct.am_state* %28, i8** %29, i32 %30)
  store i32 %31, i32* %5, align 4
  br label %46

32:                                               ; preds = %14
  %33 = load i32, i32* @hg_patch_to_mail, align 4
  %34 = load %struct.am_state*, %struct.am_state** %6, align 8
  %35 = load i8**, i8*** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @split_mail_conv(i32 %33, %struct.am_state* %34, i8** %35, i32 %36)
  store i32 %37, i32* %5, align 4
  br label %46

38:                                               ; preds = %14
  %39 = load %struct.am_state*, %struct.am_state** %6, align 8
  %40 = load i8**, i8*** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @split_mail_mbox(%struct.am_state* %39, i8** %40, i32 %41, i32 1)
  store i32 %42, i32* %5, align 4
  br label %46

43:                                               ; preds = %14
  %44 = call i32 @BUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43
  store i32 -1, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %38, %32, %27, %21, %16
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @git_config_get_bool(i8*, i32*) #1

declare dso_local i32 @split_mail_mbox(%struct.am_state*, i8**, i32, i32) #1

declare dso_local i32 @split_mail_conv(i32, %struct.am_state*, i8**, i32) #1

declare dso_local i32 @split_mail_stgit_series(%struct.am_state*, i8**, i32) #1

declare dso_local i32 @BUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
