; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/number/extr_number.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/number/extr_number.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lflag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"l\00", align 1
@optind = common dso_local global i64 0, align 8
@stdin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"line too long.\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [256 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* @lflag, align 4
  br label %9

9:                                                ; preds = %20, %2
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @getopt(i32 %10, i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %6, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %18 [
    i32 108, label %16
    i32 63, label %17
  ]

16:                                               ; preds = %14
  store i32 1, i32* @lflag, align 4
  br label %20

17:                                               ; preds = %14
  br label %18

18:                                               ; preds = %14, %17
  %19 = call i32 (...) @usage()
  br label %20

20:                                               ; preds = %18, %16
  br label %9

21:                                               ; preds = %9
  %22 = load i64, i64* @optind, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = sub nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %4, align 4
  %27 = load i64, i64* @optind, align 8
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 %27
  store i8** %29, i8*** %5, align 8
  %30 = load i8**, i8*** %5, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %55

33:                                               ; preds = %21
  store i32 1, i32* %7, align 4
  br label %34

34:                                               ; preds = %53, %33
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %36 = load i32, i32* @stdin, align 4
  %37 = call i32* @fgets(i8* %35, i32 256, i32 %36)
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %54

39:                                               ; preds = %34
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %41 = call i32* @strchr(i8* %40, i8 signext 10)
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = call i32 @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %39
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %45
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %52 = call i32 @convert(i8* %51)
  br label %53

53:                                               ; preds = %50
  store i32 0, i32* %7, align 4
  br label %34

54:                                               ; preds = %34
  br label %73

55:                                               ; preds = %21
  store i32 1, i32* %7, align 4
  br label %56

56:                                               ; preds = %69, %55
  %57 = load i8**, i8*** %5, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %72

60:                                               ; preds = %56
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %60
  %66 = load i8**, i8*** %5, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @convert(i8* %67)
  br label %69

69:                                               ; preds = %65
  store i32 0, i32* %7, align 4
  %70 = load i8**, i8*** %5, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i32 1
  store i8** %71, i8*** %5, align 8
  br label %56

72:                                               ; preds = %56
  br label %73

73:                                               ; preds = %72, %54
  %74 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32* @fgets(i8*, i32, i32) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @convert(i8*) #1

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
