; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_parsedata.c_remember.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_parsedata.c_remember.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@remember.warned = internal global i32 0, align 4
@MAXCOUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Index > %d, ignored\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @remember(i32* %0, i32* %1, i32* %2, i32* %3, i8** %4, i32 %5, i32 %6, i32 %7, i8* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i8** %4, i8*** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i8* %8, i8** %18, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MAXCOUNT, align 4
  %22 = sub nsw i32 %21, 1
  %23 = icmp sge i32 %20, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %9
  %25 = load i32, i32* @remember.warned, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @MAXCOUNT, align 4
  %29 = call i32 @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i32, i32* @remember.warned, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @remember.warned, align 4
  br label %75

33:                                               ; preds = %9
  %34 = load i32, i32* %15, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  store i32 %34, i32* %39, align 4
  %40 = load i32, i32* %16, align 4
  %41 = load i32*, i32** %12, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  store i32 %40, i32* %45, align 4
  %46 = load i32, i32* %17, align 4
  %47 = load i32*, i32** %13, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  store i32 %46, i32* %51, align 4
  %52 = load i8*, i8** %18, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %33
  %55 = load i8**, i8*** %14, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %55, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = load i8*, i8** %18, align 8
  %62 = call i32 @strcpy(i8* %60, i8* %61)
  br label %71

63:                                               ; preds = %33
  %64 = load i8**, i8*** %14, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %64, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  store i8 0, i8* %70, align 1
  br label %71

71:                                               ; preds = %63, %54
  %72 = load i32*, i32** %10, align 8
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %71, %30
  ret void
}

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
