; ModuleID = '/home/carl/AnghaBench/git/extr_connect.c_override_ssh_variant.c'
source_filename = "/home/carl/AnghaBench/git/extr_connect.c_override_ssh_variant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"GIT_SSH_VARIANT\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ssh.variant\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@VARIANT_AUTO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"plink\00", align 1
@VARIANT_PLINK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"putty\00", align 1
@VARIANT_PUTTY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"tortoiseplink\00", align 1
@VARIANT_TORTOISEPLINK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"simple\00", align 1
@VARIANT_SIMPLE = common dso_local global i32 0, align 4
@VARIANT_SSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @override_ssh_variant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @override_ssh_variant(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %4 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i8* %4, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = call i64 @git_config_get_string_const(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %3)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  br label %53

11:                                               ; preds = %7, %1
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* @VARIANT_AUTO, align 4
  %17 = load i32*, i32** %2, align 8
  store i32 %16, i32* %17, align 4
  br label %53

18:                                               ; preds = %11
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @VARIANT_PLINK, align 4
  %24 = load i32*, i32** %2, align 8
  store i32 %23, i32* %24, align 4
  br label %52

25:                                               ; preds = %18
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @VARIANT_PUTTY, align 4
  %31 = load i32*, i32** %2, align 8
  store i32 %30, i32* %31, align 4
  br label %51

32:                                               ; preds = %25
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @VARIANT_TORTOISEPLINK, align 4
  %38 = load i32*, i32** %2, align 8
  store i32 %37, i32* %38, align 4
  br label %50

39:                                               ; preds = %32
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @VARIANT_SIMPLE, align 4
  %45 = load i32*, i32** %2, align 8
  store i32 %44, i32* %45, align 4
  br label %49

46:                                               ; preds = %39
  %47 = load i32, i32* @VARIANT_SSH, align 4
  %48 = load i32*, i32** %2, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %43
  br label %50

50:                                               ; preds = %49, %36
  br label %51

51:                                               ; preds = %50, %29
  br label %52

52:                                               ; preds = %51, %22
  br label %53

53:                                               ; preds = %10, %52, %15
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @git_config_get_string_const(i8*, i8**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
