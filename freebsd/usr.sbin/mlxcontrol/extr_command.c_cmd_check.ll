; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mlxcontrol/extr_command.c_cmd_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mlxcontrol/extr_command.c_cmd_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"'%s' is not a valid drive\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"can't open %s\00", align 1
@MLXD_CHECKASYNC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [70 x i8] c"one or more of the SCSI disks on which the drive '%s' depends is DEAD\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"drive %s is invalid, or not a drive which can be checked\00", align 1
@.str.4 = private unnamed_addr constant [77 x i8] c"drive rebuild or consistency check is already in progress on this controller\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"ioctl MLXD_CHECKASYNC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @cmd_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_check(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 2
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @cmd_help(i32 %12, i8** %13)
  store i32 %14, i32* %3, align 4
  br label %60

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @driveunit(i8* %18)
  store i32 %19, i32* %6, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %24)
  br label %59

26:                                               ; preds = %15
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @drivepath(i32 %27)
  %29 = call i32 @open(i32 %28, i32 0)
  store i32 %29, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @drivepath(i32 %32)
  %34 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %58

35:                                               ; preds = %26
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @MLXD_CHECKASYNC, align 4
  %38 = call i64 @ioctl(i32 %36, i32 %37, i32* %8)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %35
  %41 = load i32, i32* %8, align 4
  switch i32 %41, label %54 [
    i32 2, label %42
    i32 261, label %47
    i32 262, label %52
  ]

42:                                               ; preds = %40
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i8* %45)
  br label %56

47:                                               ; preds = %40
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i8* %50)
  br label %56

52:                                               ; preds = %40
  %53 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.4, i64 0, i64 0))
  br label %56

54:                                               ; preds = %40
  %55 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %52, %47, %42
  br label %57

57:                                               ; preds = %56, %35
  br label %58

58:                                               ; preds = %57, %31
  br label %59

59:                                               ; preds = %58, %21
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %11
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @cmd_help(i32, i8**) #1

declare dso_local i32 @driveunit(i8*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @drivepath(i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i64 @ioctl(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
