; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/kbdcontrol/extr_kbdcontrol.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/kbdcontrol/extr_kbdcontrol.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"A:a:b:df:iKk:Fl:L:P:r:x\00", align 1
@optarg = common dso_local global i32 0, align 4
@optreset = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@KBRELKBD = common dso_local global i32 0, align 4
@KBADDKBD = common dso_local global i32 0, align 4
@hex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %8

8:                                                ; preds = %25, %2
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @getopt(i32 %9, i8** %10, i8* %11)
  store i32 %12, i32* %7, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %26

14:                                               ; preds = %8
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 80
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* @optarg, align 4
  %19 = call i32 @add_keymap_path(i32 %18)
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 63
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 (...) @usage()
  br label %25

25:                                               ; preds = %23, %20
  br label %8

26:                                               ; preds = %8
  store i32 1, i32* @optreset, align 4
  store i32 1, i32* @optind, align 4
  br label %27

27:                                               ; preds = %79, %26
  %28 = load i32, i32* %4, align 4
  %29 = load i8**, i8*** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @getopt(i32 %28, i8** %29, i8* %30)
  store i32 %31, i32* %7, align 4
  %32 = icmp ne i32 %31, -1
  br i1 %32, label %33, label %80

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  switch i32 %34, label %77 [
    i32 65, label %35
    i32 97, label %35
    i32 98, label %46
    i32 100, label %49
    i32 108, label %51
    i32 76, label %54
    i32 80, label %57
    i32 102, label %58
    i32 70, label %64
    i32 105, label %66
    i32 75, label %68
    i32 107, label %70
    i32 114, label %73
    i32 120, label %76
  ]

35:                                               ; preds = %33, %33
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 65
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @KBRELKBD, align 4
  br label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @KBADDKBD, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = load i32, i32* @optarg, align 4
  %45 = call i32 @mux_keyboard(i32 %43, i32 %44)
  br label %79

46:                                               ; preds = %33
  %47 = load i32, i32* @optarg, align 4
  %48 = call i32 @set_bell_values(i32 %47)
  br label %79

49:                                               ; preds = %33
  %50 = call i32 (...) @print_keymap()
  br label %79

51:                                               ; preds = %33
  %52 = load i32, i32* @optarg, align 4
  %53 = call i32 @load_keymap(i32 %52, i32 0)
  br label %79

54:                                               ; preds = %33
  %55 = load i32, i32* @optarg, align 4
  %56 = call i32 @load_keymap(i32 %55, i32 1)
  br label %79

57:                                               ; preds = %33
  br label %79

58:                                               ; preds = %33
  %59 = load i32, i32* @optarg, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i8**, i8*** %5, align 8
  %62 = call i32 @nextarg(i32 %60, i8** %61, i32* @optind, float 1.020000e+02)
  %63 = call i32 @set_functionkey(i32 %59, i32 %62)
  br label %79

64:                                               ; preds = %33
  %65 = call i32 (...) @load_default_functionkeys()
  br label %79

66:                                               ; preds = %33
  %67 = call i32 (...) @show_kbd_info()
  br label %79

68:                                               ; preds = %33
  %69 = call i32 (...) @release_keyboard()
  br label %79

70:                                               ; preds = %33
  %71 = load i32, i32* @optarg, align 4
  %72 = call i32 @set_keyboard(i32 %71)
  br label %79

73:                                               ; preds = %33
  %74 = load i32, i32* @optarg, align 4
  %75 = call i32 @set_keyrates(i32 %74)
  br label %79

76:                                               ; preds = %33
  store i32 1, i32* @hex, align 4
  br label %79

77:                                               ; preds = %33
  %78 = call i32 (...) @usage()
  br label %79

79:                                               ; preds = %77, %76, %73, %70, %68, %66, %64, %58, %57, %54, %51, %49, %46, %42
  br label %27

80:                                               ; preds = %27
  %81 = load i32, i32* @optind, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %87, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %4, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %89

87:                                               ; preds = %84, %80
  %88 = call i32 (...) @usage()
  br label %89

89:                                               ; preds = %87, %84
  %90 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @add_keymap_path(i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @mux_keyboard(i32, i32) #1

declare dso_local i32 @set_bell_values(i32) #1

declare dso_local i32 @print_keymap(...) #1

declare dso_local i32 @load_keymap(i32, i32) #1

declare dso_local i32 @set_functionkey(i32, i32) #1

declare dso_local i32 @nextarg(i32, i8**, i32*, float) #1

declare dso_local i32 @load_default_functionkeys(...) #1

declare dso_local i32 @show_kbd_info(...) #1

declare dso_local i32 @release_keyboard(...) #1

declare dso_local i32 @set_keyboard(i32) #1

declare dso_local i32 @set_keyrates(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
