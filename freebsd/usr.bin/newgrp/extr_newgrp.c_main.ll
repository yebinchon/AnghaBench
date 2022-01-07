; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/newgrp/extr_newgrp.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/newgrp/extr_newgrp.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@euid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"need root permissions to function properly, check setuid bit\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"seteuid\00", align 1
@pwd = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"unknown user\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"setuid\00", align 1

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
  %8 = call i32 (...) @geteuid()
  store i32 %8, i32* @euid, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 @warnx(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %2
  %13 = call i32 (...) @getuid()
  %14 = call i64 @seteuid(i32 %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %12
  %19 = call i32 (...) @getuid()
  %20 = call i32* @getpwuid(i32 %19)
  store i32* %20, i32** @pwd, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 @errx(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %18
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %35, %24
  %26 = load i32, i32* %4, align 4
  %27 = load i8**, i8*** %5, align 8
  %28 = call i32 @getopt(i32 %26, i8** %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32 %28, i32* %6, align 4
  %29 = icmp ne i32 %28, -1
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  switch i32 %31, label %33 [
    i32 45, label %32
    i32 108, label %32
  ]

32:                                               ; preds = %30, %30
  store i32 1, i32* %7, align 4
  br label %35

33:                                               ; preds = %30
  %34 = call i32 (...) @usage()
  br label %35

35:                                               ; preds = %33, %32
  br label %25

36:                                               ; preds = %25
  %37 = load i64, i64* @optind, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = sub nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %4, align 4
  %42 = load i64, i64* @optind, align 8
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 %42
  store i8** %44, i8*** %5, align 8
  %45 = load i32, i32* %4, align 4
  switch i32 %45, label %52 [
    i32 0, label %46
    i32 1, label %48
  ]

46:                                               ; preds = %36
  %47 = call i32 (...) @restoregrps()
  br label %54

48:                                               ; preds = %36
  %49 = load i8**, i8*** %5, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @addgroup(i8* %50)
  br label %54

52:                                               ; preds = %36
  %53 = call i32 (...) @usage()
  br label %54

54:                                               ; preds = %52, %48, %46
  %55 = load i32, i32* @euid, align 4
  %56 = call i64 @seteuid(i32 %55)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %54
  %61 = call i32 (...) @getuid()
  %62 = call i64 @setuid(i32 %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %60
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = call i32 (...) @loginshell()
  br label %73

71:                                               ; preds = %66
  %72 = call i32 (...) @doshell()
  br label %73

73:                                               ; preds = %71, %69
  %74 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @geteuid(...) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i64 @seteuid(i32) #1

declare dso_local i32 @getuid(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32* @getpwuid(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @restoregrps(...) #1

declare dso_local i32 @addgroup(i8*) #1

declare dso_local i64 @setuid(i32) #1

declare dso_local i32 @loginshell(...) #1

declare dso_local i32 @doshell(...) #1

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
