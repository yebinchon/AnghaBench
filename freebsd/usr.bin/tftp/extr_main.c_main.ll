; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tftp/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tftp/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.el = internal global i32* null, align 8
@main.hist = internal global i32* null, align 8
@acting_as_client = common dso_local global i32 0, align 4
@peer = common dso_local global i32 0, align 4
@mode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"octet\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@intr = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"tftp\00", align 1
@stdin = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@H_SETSIZE = common dso_local global i32 0, align 4
@EL_HIST = common dso_local global i32 0, align 4
@EL_EDITOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"emacs\00", align 1
@EL_PROMPT = common dso_local global i32 0, align 4
@command_prompt = common dso_local global i32 0, align 4
@EL_SIGNAL = common dso_local global i32 0, align 4
@toplevel = common dso_local global i32 0, align 4
@txrx_error = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"tftp://\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* @acting_as_client, align 4
  store i32 -1, i32* @peer, align 4
  %8 = load i32, i32* @mode, align 4
  %9 = call i32 @strcpy(i32 %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @SIGINT, align 4
  %11 = load i32, i32* @intr, align 4
  %12 = call i32 @signal(i32 %10, i32 %11)
  %13 = load i32, i32* @STDIN_FILENO, align 4
  %14 = call i32 @isatty(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %2
  %18 = load i32, i32* @stdin, align 4
  %19 = load i32, i32* @stdout, align 4
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32* @el_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %19, i32 %20)
  store i32* %21, i32** @main.el, align 8
  %22 = call i32* (...) @history_init()
  store i32* %22, i32** @main.hist, align 8
  %23 = load i32*, i32** @main.hist, align 8
  %24 = load i32, i32* @H_SETSIZE, align 4
  %25 = call i32 @history(i32* %23, i32* %6, i32 %24, i32 100)
  %26 = load i32*, i32** @main.el, align 8
  %27 = load i32, i32* @EL_HIST, align 4
  %28 = load i32*, i32** @main.hist, align 8
  %29 = call i32 (i32*, i32, ...) @el_set(i32* %26, i32 %27, i32 (i32*, i32*, i32, i32)* @history, i32* %28)
  %30 = load i32*, i32** @main.el, align 8
  %31 = load i32, i32* @EL_EDITOR, align 4
  %32 = call i32 (i32*, i32, ...) @el_set(i32* %30, i32 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32*, i32** @main.el, align 8
  %34 = load i32, i32* @EL_PROMPT, align 4
  %35 = load i32, i32* @command_prompt, align 4
  %36 = call i32 (i32*, i32, ...) @el_set(i32* %33, i32 %34, i32 %35)
  %37 = load i32*, i32** @main.el, align 8
  %38 = load i32, i32* @EL_SIGNAL, align 4
  %39 = call i32 (i32*, i32, ...) @el_set(i32* %37, i32 %38, i32 1)
  %40 = load i32*, i32** @main.el, align 8
  %41 = call i32 @el_source(i32* %40, i32* null)
  br label %42

42:                                               ; preds = %17, %2
  %43 = load i32, i32* %4, align 4
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %69

45:                                               ; preds = %42
  %46 = load i32, i32* @toplevel, align 4
  %47 = call i64 @setjmp(i32 %46) #4
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @txrx_error, align 4
  %51 = call i32 @exit(i32 %50) #5
  unreachable

52:                                               ; preds = %45
  %53 = load i8**, i8*** %5, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @strncmp(i8* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 7)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load i8**, i8*** %5, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @urihandling(i8* %61)
  %63 = load i32, i32* @txrx_error, align 4
  %64 = call i32 @exit(i32 %63) #5
  unreachable

65:                                               ; preds = %52
  %66 = load i32, i32* %4, align 4
  %67 = load i8**, i8*** %5, align 8
  %68 = call i32 @setpeer(i32 %66, i8** %67)
  br label %69

69:                                               ; preds = %65, %42
  %70 = load i32, i32* @toplevel, align 4
  %71 = call i64 @setjmp(i32 %70) #4
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32*, i32** @main.el, align 8
  %78 = call i32 @el_reset(i32* %77)
  br label %79

79:                                               ; preds = %76, %73
  %80 = call i32 @putchar(i8 signext 10)
  br label %81

81:                                               ; preds = %79, %69
  %82 = call i32 (...) @init_options()
  %83 = load i32, i32* %7, align 4
  %84 = load i32*, i32** @main.el, align 8
  %85 = load i32*, i32** @main.hist, align 8
  %86 = call i32 @command(i32 %83, i32* %84, i32* %85, i32* %6)
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @isatty(i32) #1

declare dso_local i32* @el_init(i8*, i32, i32, i32) #1

declare dso_local i32* @history_init(...) #1

declare dso_local i32 @history(i32*, i32*, i32, i32) #1

declare dso_local i32 @el_set(i32*, i32, ...) #1

declare dso_local i32 @el_source(i32*, i32*) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @urihandling(i8*) #1

declare dso_local i32 @setpeer(i32, i8**) #1

declare dso_local i32 @el_reset(i32*) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @init_options(...) #1

declare dso_local i32 @command(i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { returns_twice }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
