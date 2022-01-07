; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/pr/extr_pr.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/pr/extr_pr.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGINT = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i64 0, align 8
@terminate = common dso_local global i64 0, align 8
@merge = common dso_local global i64 0, align 8
@clcnt = common dso_local global i32 0, align 4
@across = common dso_local global i64 0, align 8
@timefrmt = common dso_local global i32 0, align 4
@errcnt = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* @SIGINT, align 4
  %8 = load i64, i64* @SIG_IGN, align 8
  %9 = call i64 @signal(i32 %7, i64 %8)
  %10 = load i64, i64* @SIG_IGN, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @SIGINT, align 4
  %14 = load i64, i64* @terminate, align 8
  %15 = call i64 @signal(i32 %13, i64 %14)
  br label %16

16:                                               ; preds = %12, %2
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = call i32 @setup(i32 %17, i8** %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %52, label %22

22:                                               ; preds = %16
  %23 = load i64, i64* @merge, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = load i8**, i8*** %5, align 8
  %28 = call i32 @mulfile(i32 %26, i8** %27)
  store i32 %28, i32* %6, align 4
  br label %49

29:                                               ; preds = %22
  %30 = load i32, i32* @clcnt, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* %4, align 4
  %34 = load i8**, i8*** %5, align 8
  %35 = call i32 @onecol(i32 %33, i8** %34)
  store i32 %35, i32* %6, align 4
  br label %48

36:                                               ; preds = %29
  %37 = load i64, i64* @across, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* %4, align 4
  %41 = load i8**, i8*** %5, align 8
  %42 = call i32 @horzcol(i32 %40, i8** %41)
  store i32 %42, i32* %6, align 4
  br label %47

43:                                               ; preds = %36
  %44 = load i32, i32* %4, align 4
  %45 = load i8**, i8*** %5, align 8
  %46 = call i32 @vertcol(i32 %44, i8** %45)
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %43, %39
  br label %48

48:                                               ; preds = %47, %32
  br label %49

49:                                               ; preds = %48, %25
  %50 = load i32, i32* @timefrmt, align 4
  %51 = call i32 @free(i32 %50)
  br label %54

52:                                               ; preds = %16
  %53 = call i32 (...) @usage()
  br label %54

54:                                               ; preds = %52, %49
  %55 = call i32 (...) @flsh_errs()
  %56 = load i64, i64* @errcnt, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58, %54
  %62 = call i32 @exit(i32 1) #3
  unreachable

63:                                               ; preds = %58
  ret i32 0
}

declare dso_local i64 @signal(i32, i64) #1

declare dso_local i32 @setup(i32, i8**) #1

declare dso_local i32 @mulfile(i32, i8**) #1

declare dso_local i32 @onecol(i32, i8**) #1

declare dso_local i32 @horzcol(i32, i8**) #1

declare dso_local i32 @vertcol(i32, i8**) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @flsh_errs(...) #1

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
