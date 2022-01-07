; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rusers/extr_rusers.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rusers/extr_rusers.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"al\00", align 1
@allopt = common dso_local global i32 0, align 4
@longopt = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %7

7:                                                ; preds = %22, %2
  %8 = load i32, i32* %4, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = call i32 @getopt(i32 %8, i8** %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %6, align 4
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %23

12:                                               ; preds = %7
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %20 [
    i32 97, label %14
    i32 108, label %17
  ]

14:                                               ; preds = %12
  %15 = load i32, i32* @allopt, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @allopt, align 4
  br label %22

17:                                               ; preds = %12
  %18 = load i32, i32* @longopt, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @longopt, align 4
  br label %22

20:                                               ; preds = %12
  %21 = call i32 (...) @usage()
  br label %22

22:                                               ; preds = %20, %17, %14
  br label %7

23:                                               ; preds = %7
  %24 = load i32, i32* @stdout, align 4
  %25 = call i32 @setlinebuf(i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @optind, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = call i32 (...) @allhosts()
  br label %47

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %43, %31
  %33 = load i32, i32* @optind, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load i8**, i8*** %5, align 8
  %38 = load i32, i32* @optind, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @onehost(i8* %41)
  br label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @optind, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* @optind, align 4
  br label %32

46:                                               ; preds = %32
  br label %47

47:                                               ; preds = %46, %29
  %48 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @setlinebuf(i32) #1

declare dso_local i32 @allhosts(...) #1

declare dso_local i32 @onehost(i8*) #1

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
