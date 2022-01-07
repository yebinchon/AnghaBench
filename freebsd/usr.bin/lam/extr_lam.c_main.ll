; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/lam/extr_lam.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/lam/extr_lam.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.openfile = type { i32, i32* }

@.str = private unnamed_addr constant [22 x i8] c"unable to limit stdio\00", align 1
@morefiles = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"unable to enter capability mode\00", align 1
@line = common dso_local global i32 0, align 4
@linep = common dso_local global i32 0, align 4
@input = common dso_local global %struct.openfile* null, align 8
@stdout = common dso_local global i32 0, align 4
@nofinalnl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.openfile*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i32 (...) @usage()
  br label %11

11:                                               ; preds = %9, %2
  %12 = call i32 (...) @caph_limit_stdio()
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 @err(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %11
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @getargs(i8** %17)
  %19 = load i32, i32* @morefiles, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = call i32 (...) @usage()
  br label %23

23:                                               ; preds = %21, %16
  %24 = call i32 (...) @caph_cache_catpages()
  %25 = call i64 (...) @caph_enter()
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 @err(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %23
  br label %30

30:                                               ; preds = %62, %29
  %31 = load i32, i32* @line, align 4
  store i32 %31, i32* @linep, align 4
  %32 = load %struct.openfile*, %struct.openfile** @input, align 8
  store %struct.openfile* %32, %struct.openfile** %6, align 8
  br label %33

33:                                               ; preds = %41, %30
  %34 = load %struct.openfile*, %struct.openfile** %6, align 8
  %35 = getelementptr inbounds %struct.openfile, %struct.openfile* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.openfile*, %struct.openfile** %6, align 8
  %40 = call i32 @gatherline(%struct.openfile* %39)
  store i32 %40, i32* @linep, align 4
  br label %41

41:                                               ; preds = %38
  %42 = load %struct.openfile*, %struct.openfile** %6, align 8
  %43 = getelementptr inbounds %struct.openfile, %struct.openfile* %42, i32 1
  store %struct.openfile* %43, %struct.openfile** %6, align 8
  br label %33

44:                                               ; preds = %33
  %45 = load i32, i32* @morefiles, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = call i32 @exit(i32 0) #3
  unreachable

49:                                               ; preds = %44
  %50 = load i32, i32* @line, align 4
  %51 = load i32, i32* @stdout, align 4
  %52 = call i32 @fputs(i32 %50, i32 %51)
  %53 = load %struct.openfile*, %struct.openfile** %6, align 8
  %54 = getelementptr inbounds %struct.openfile, %struct.openfile* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @stdout, align 4
  %57 = call i32 @fputs(i32 %55, i32 %56)
  %58 = load i32, i32* @nofinalnl, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %49
  %61 = call i32 @putchar(i8 signext 10)
  br label %62

62:                                               ; preds = %60, %49
  br label %30
}

declare dso_local i32 @usage(...) #1

declare dso_local i32 @caph_limit_stdio(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @getargs(i8**) #1

declare dso_local i32 @caph_cache_catpages(...) #1

declare dso_local i64 @caph_enter(...) #1

declare dso_local i32 @gatherline(%struct.openfile*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fputs(i32, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
