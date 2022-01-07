; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mountroot.c_parse_dir_onfail.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mountroot.c_parse_dir_onfail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"continue\00", align 1
@A_CONTINUE = common dso_local global i32 0, align 4
@root_mount_onfail = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"panic\00", align 1
@A_PANIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"reboot\00", align 1
@A_REBOOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"retry\00", align 1
@A_RETRY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"rootmount: %s: unknown action\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @parse_dir_onfail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_dir_onfail(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %6 = load i8**, i8*** %3, align 8
  %7 = call i32 @parse_token(i8** %6, i8** %4)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %47

12:                                               ; preds = %1
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @A_CONTINUE, align 4
  store i32 %17, i32* @root_mount_onfail, align 4
  br label %43

18:                                               ; preds = %12
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @A_PANIC, align 4
  store i32 %23, i32* @root_mount_onfail, align 4
  br label %42

24:                                               ; preds = %18
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @A_REBOOT, align 4
  store i32 %29, i32* @root_mount_onfail, align 4
  br label %41

30:                                               ; preds = %24
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @A_RETRY, align 4
  store i32 %35, i32* @root_mount_onfail, align 4
  br label %40

36:                                               ; preds = %30
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %37)
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %36, %34
  br label %41

41:                                               ; preds = %40, %28
  br label %42

42:                                               ; preds = %41, %22
  br label %43

43:                                               ; preds = %42, %16
  %44 = load i8*, i8** %4, align 8
  %45 = load i32, i32* @M_TEMP, align 4
  %46 = call i32 @free(i8* %44, i32 %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %43, %10
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @parse_token(i8**, i8**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
