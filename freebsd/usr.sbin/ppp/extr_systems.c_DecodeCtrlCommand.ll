; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_systems.c_DecodeCtrlCommand.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_systems.c_DecodeCtrlCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"include\00", align 1
@LogWARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"usage: !include filename\0A\00", align 1
@CTRL_INCLUDE = common dso_local global i32 0, align 4
@CTRL_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @DecodeCtrlCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DecodeCtrlCommand(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @strncasecmp(i8* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %36, label %10

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 7
  %13 = load i8, i8* %12, align 1
  %14 = call i64 @issep(i8 signext %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %10
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i8* @InterpretArg(i8* %18, i8* %19)
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %16
  %26 = load i8*, i8** %6, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 35
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @LogWARN, align 4
  %32 = call i32 @log_Printf(i32 %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %35

33:                                               ; preds = %25, %16
  %34 = load i32, i32* @CTRL_INCLUDE, align 4
  store i32 %34, i32* %3, align 4
  br label %38

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35, %10, %2
  %37 = load i32, i32* @CTRL_UNKNOWN, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %33
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i64 @issep(i8 signext) #1

declare dso_local i8* @InterpretArg(i8*, i8*) #1

declare dso_local i32 @log_Printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
