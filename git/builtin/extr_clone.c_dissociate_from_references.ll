; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_clone.c_dissociate_from_references.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_clone.c_dissociate_from_references.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dissociate_from_references.argv = internal global [4 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [7 x i8] c"repack\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"objects/info/alternates\00", align 1
@F_OK = common dso_local global i32 0, align 4
@RUN_GIT_CMD = common dso_local global i32 0, align 4
@RUN_COMMAND_NO_STDIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"cannot repack to clean up\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [40 x i8] c"cannot unlink temporary alternates file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dissociate_from_references to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dissociate_from_references() #0 {
  %1 = alloca i8*, align 8
  %2 = call i8* @git_pathdup(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i8* %2, i8** %1, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = load i32, i32* @F_OK, align 4
  %5 = call i32 @access(i8* %3, i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %28, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @RUN_GIT_CMD, align 4
  %9 = load i32, i32* @RUN_COMMAND_NO_STDIN, align 4
  %10 = or i32 %8, %9
  %11 = call i64 @run_command_v_opt(i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @dissociate_from_references.argv, i64 0, i64 0), i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %15 = call i32 @die(i32 %14)
  br label %16

16:                                               ; preds = %13, %7
  %17 = load i8*, i8** %1, align 8
  %18 = call i64 @unlink(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load i64, i64* @errno, align 8
  %22 = load i64, i64* @ENOENT, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %26 = call i32 @die_errno(i32 %25)
  br label %27

27:                                               ; preds = %24, %20, %16
  br label %28

28:                                               ; preds = %27, %0
  %29 = load i8*, i8** %1, align 8
  %30 = call i32 @free(i8* %29)
  ret void
}

declare dso_local i8* @git_pathdup(i8*) #1

declare dso_local i32 @access(i8*, i32) #1

declare dso_local i64 @run_command_v_opt(i8**, i32) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @unlink(i8*) #1

declare dso_local i32 @die_errno(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
