; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cdcontrol/extr_cdcontrol.c_input.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cdcontrol/extr_cdcontrol.c_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@input.el = internal global i32* null, align 8
@input.hist = internal global i32* null, align 8
@input.buf = internal global [80 x i8] zeroinitializer, align 16
@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"cdcontrol\00", align 1
@stdin = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@H_SETSIZE = common dso_local global i32 0, align 4
@EL_HIST = common dso_local global i32 0, align 4
@EL_EDITOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"emacs\00", align 1
@EL_PROMPT = common dso_local global i32 0, align 4
@cdcontrol_prompt = common dso_local global i32 0, align 4
@EL_SIGNAL = common dso_local global i32 0, align 4
@CMD_QUIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@H_ENTER = common dso_local global i32 0, align 4
@MAXLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*)* @input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @input(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %5, align 4
  store i8* null, i8** %7, align 8
  br label %9

9:                                                ; preds = %83, %1
  %10 = load i64, i64* @verbose, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %70

12:                                               ; preds = %9
  %13 = load i32*, i32** @input.el, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %40, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* @stdin, align 4
  %17 = load i32, i32* @stdout, align 4
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32* @el_init(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17, i32 %18)
  store i32* %19, i32** @input.el, align 8
  %20 = call i32* (...) @history_init()
  store i32* %20, i32** @input.hist, align 8
  %21 = load i32*, i32** @input.hist, align 8
  %22 = load i32, i32* @H_SETSIZE, align 4
  %23 = call i32 (i32*, i32*, i32, ...) @history(i32* %21, i32* %4, i32 %22, i32 100)
  %24 = load i32*, i32** @input.el, align 8
  %25 = load i32, i32* @EL_HIST, align 4
  %26 = load i32*, i32** @input.hist, align 8
  %27 = call i32 (i32*, i32, ...) @el_set(i32* %24, i32 %25, i32 (i32*, i32*, i32, ...)* @history, i32* %26)
  %28 = load i32*, i32** @input.el, align 8
  %29 = load i32, i32* @EL_EDITOR, align 4
  %30 = call i32 (i32*, i32, ...) @el_set(i32* %28, i32 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32*, i32** @input.el, align 8
  %32 = load i32, i32* @EL_PROMPT, align 4
  %33 = load i32, i32* @cdcontrol_prompt, align 4
  %34 = call i32 (i32*, i32, ...) @el_set(i32* %31, i32 %32, i32 %33)
  %35 = load i32*, i32** @input.el, align 8
  %36 = load i32, i32* @EL_SIGNAL, align 4
  %37 = call i32 (i32*, i32, ...) @el_set(i32* %35, i32 %36, i32 1)
  %38 = load i32*, i32** @input.el, align 8
  %39 = call i32 @el_source(i32* %38, i32* null)
  br label %40

40:                                               ; preds = %15, %12
  %41 = load i32*, i32** @input.el, align 8
  %42 = call i8* @el_gets(i32* %41, i32* %5)
  store i8* %42, i8** %7, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44, %40
  %48 = load i32, i32* @CMD_QUIT, align 4
  %49 = load i32*, i32** %3, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* @stderr, align 4
  %51 = call i32 @fprintf(i32 %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %89

52:                                               ; preds = %44
  %53 = load i32, i32* %5, align 4
  %54 = icmp sgt i32 %53, 80
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %58

56:                                               ; preds = %52
  %57 = load i32, i32* %5, align 4
  br label %58

58:                                               ; preds = %56, %55
  %59 = phi i32 [ 80, %55 ], [ %57, %56 ]
  store i32 %59, i32* %6, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @memcpy(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @input.buf, i64 0, i64 0), i8* %60, i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [80 x i8], [80 x i8]* @input.buf, i64 0, i64 %64
  store i8 0, i8* %65, align 1
  %66 = load i32*, i32** @input.hist, align 8
  %67 = load i32, i32* @H_ENTER, align 4
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 (i32*, i32*, i32, ...) @history(i32* %66, i32* %4, i32 %67, i8* %68)
  br label %80

70:                                               ; preds = %9
  %71 = load i32, i32* @stdin, align 4
  %72 = call i32 @fgets(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @input.buf, i64 0, i64 0), i32 80, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* @CMD_QUIT, align 4
  %76 = load i32*, i32** %3, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* @stderr, align 4
  %78 = call i32 @fprintf(i32 %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %89

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %79, %58
  %81 = load i32*, i32** %3, align 8
  %82 = call i8* @parse(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @input.buf, i64 0, i64 0), i32* %81)
  store i8* %82, i8** %8, align 8
  br label %83

83:                                               ; preds = %80
  %84 = load i8*, i8** %8, align 8
  %85 = icmp ne i8* %84, null
  %86 = xor i1 %85, true
  br i1 %86, label %9, label %87

87:                                               ; preds = %83
  %88 = load i8*, i8** %8, align 8
  store i8* %88, i8** %2, align 8
  br label %89

89:                                               ; preds = %87, %74, %47
  %90 = load i8*, i8** %2, align 8
  ret i8* %90
}

declare dso_local i32* @el_init(i8*, i32, i32, i32) #1

declare dso_local i32* @history_init(...) #1

declare dso_local i32 @history(i32*, i32*, i32, ...) #1

declare dso_local i32 @el_set(i32*, i32, ...) #1

declare dso_local i32 @el_source(i32*, i32*) #1

declare dso_local i8* @el_gets(i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @fgets(i8*, i32, i32) #1

declare dso_local i8* @parse(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
