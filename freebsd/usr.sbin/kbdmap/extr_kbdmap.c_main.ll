; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/kbdmap/extr_kbdmap.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/kbdmap/extr_kbdmap.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"kbdcontrol -d >/dev/null\00", align 1
@x11 = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"You are not on a virtual console - expect certain strange side-effects\0A\00", align 1
@using_vt = common dso_local global i64 0, align 8
@DEFAULT_SC_KEYMAP_DIR = common dso_local global i32 0, align 4
@keymapdir = common dso_local global i32 0, align 4
@DEFAULT_SC_FONT_DIR = common dso_local global i32 0, align 4
@fontdir = common dso_local global i32 0, align 4
@DEFAULT_SC_FONT = common dso_local global i32* null, align 8
@font_default = common dso_local global i32* null, align 8
@head = common dso_local global i32 0, align 4
@lang = common dso_local global i32 0, align 4
@program = common dso_local global i32 0, align 4
@font_current = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"kbdmap\00", align 1
@dir = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i64 @system(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i64 %6, i64* @x11, align 8
  %7 = load i64, i64* @x11, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32, i32* @stderr, align 4
  %11 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i32 @sleep(i32 2)
  br label %13

13:                                               ; preds = %9, %2
  %14 = call i64 (...) @check_vt()
  store i64 %14, i64* @using_vt, align 8
  %15 = load i64, i64* @using_vt, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32, i32* @DEFAULT_SC_KEYMAP_DIR, align 4
  store i32 %18, i32* @keymapdir, align 4
  %19 = load i32, i32* @DEFAULT_SC_FONT_DIR, align 4
  store i32 %19, i32* @fontdir, align 4
  %20 = load i32*, i32** @DEFAULT_SC_FONT, align 8
  store i32* %20, i32** @font_default, align 8
  br label %21

21:                                               ; preds = %17, %13
  %22 = call i32 @SLIST_INIT(i32* @head)
  %23 = call i32 (...) @get_locale()
  store i32 %23, i32* @lang, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @extract_name(i8* %26)
  store i32 %27, i32* @program, align 4
  %28 = call i32* (...) @get_font()
  store i32* %28, i32** @font_current, align 8
  %29 = load i32*, i32** @font_current, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32*, i32** @font_default, align 8
  store i32* %32, i32** @font_current, align 8
  br label %33

33:                                               ; preds = %31, %21
  %34 = load i32, i32* @program, align 4
  %35 = call i64 @strcmp(i32 %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @fontdir, align 4
  store i32 %38, i32* @dir, align 4
  br label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @keymapdir, align 4
  store i32 %40, i32* @dir, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = load i32, i32* %4, align 4
  %43 = load i8**, i8*** %5, align 8
  %44 = call i32 @parse_args(i32 %42, i8** %43)
  %45 = call i32 (...) @menu_read()
  ret i32 0
}

declare dso_local i64 @system(i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i64 @check_vt(...) #1

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local i32 @get_locale(...) #1

declare dso_local i32 @extract_name(i8*) #1

declare dso_local i32* @get_font(...) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @parse_args(i32, i8**) #1

declare dso_local i32 @menu_read(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
