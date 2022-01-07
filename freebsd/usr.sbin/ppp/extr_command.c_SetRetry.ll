; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_SetRetry.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_SetRetry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEF_FSMRETRY = common dso_local global i32 0, align 4
@MIN_FSMRETRY = common dso_local global i64 0, align 8
@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%ld: Invalid FSM retry period - min %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"%ld: Invalid FSM REQ tries - changed to 1\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"%ld: Invalid FSM TRM tries - changed to 1\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32*, i32*, i32*, i32)* @SetRetry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetRetry(i32 %0, i8** %1, i32* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i8** %1, i8*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %6
  %18 = load i32, i32* @DEF_FSMRETRY, align 4
  %19 = load i32*, i32** %10, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %13, align 4
  %21 = load i32*, i32** %11, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32*, i32** %12, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* %13, align 4
  %26 = load i32*, i32** %12, align 8
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %17
  br label %85

28:                                               ; preds = %6
  %29 = load i8**, i8*** %9, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @atol(i8* %31)
  store i64 %32, i64* %14, align 8
  %33 = load i64, i64* %14, align 8
  %34 = load i64, i64* @MIN_FSMRETRY, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load i32, i32* @LogWARN, align 4
  %38 = load i64, i64* %14, align 8
  %39 = load i64, i64* @MIN_FSMRETRY, align 8
  %40 = call i32 (i32, i8*, i64, ...) @log_Printf(i32 %37, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %38, i64 %39)
  store i32 1, i32* %7, align 4
  br label %86

41:                                               ; preds = %28
  %42 = load i64, i64* %14, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i32*, i32** %10, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %8, align 4
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %84

48:                                               ; preds = %45
  %49 = load i8**, i8*** %9, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @atol(i8* %51)
  store i64 %52, i64* %14, align 8
  %53 = load i64, i64* %14, align 8
  %54 = icmp slt i64 %53, 1
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load i32, i32* @LogWARN, align 4
  %57 = load i64, i64* %14, align 8
  %58 = call i32 (i32, i8*, i64, ...) @log_Printf(i32 %56, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %57)
  store i64 1, i64* %14, align 8
  br label %59

59:                                               ; preds = %55, %48
  %60 = load i64, i64* %14, align 8
  %61 = trunc i64 %60 to i32
  %62 = load i32*, i32** %11, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp sgt i32 %63, 2
  br i1 %64, label %65, label %83

65:                                               ; preds = %59
  %66 = load i32*, i32** %12, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %83

68:                                               ; preds = %65
  %69 = load i8**, i8*** %9, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 2
  %71 = load i8*, i8** %70, align 8
  %72 = call i64 @atol(i8* %71)
  store i64 %72, i64* %14, align 8
  %73 = load i64, i64* %14, align 8
  %74 = icmp slt i64 %73, 1
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load i32, i32* @LogWARN, align 4
  %77 = load i64, i64* %14, align 8
  %78 = call i32 (i32, i8*, i64, ...) @log_Printf(i32 %76, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %77)
  store i64 1, i64* %14, align 8
  br label %79

79:                                               ; preds = %75, %68
  %80 = load i64, i64* %14, align 8
  %81 = trunc i64 %80 to i32
  %82 = load i32*, i32** %12, align 8
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %79, %65, %59
  br label %84

84:                                               ; preds = %83, %45
  br label %85

85:                                               ; preds = %84, %27
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %85, %36
  %87 = load i32, i32* %7, align 4
  ret i32 %87
}

declare dso_local i64 @atol(i8*) #1

declare dso_local i32 @log_Printf(i32, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
