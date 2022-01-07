; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cons.c_cngets.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cons.c_cngets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"\08 \08\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cngets(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = call i32 (...) @cngrab()
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = getelementptr inbounds i8, i8* %12, i64 %13
  %15 = getelementptr inbounds i8, i8* %14, i64 -1
  store i8* %15, i8** %8, align 8
  br label %16

16:                                               ; preds = %57, %38, %37, %3
  %17 = call i32 (...) @cngetc()
  %18 = and i32 %17, 127
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  switch i32 %19, label %39 [
    i32 10, label %20
    i32 13, label %20
    i32 8, label %25
    i32 127, label %25
    i32 0, label %38
  ]

20:                                               ; preds = %16, %16
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @cnputc(i32 %21)
  %23 = load i8*, i8** %7, align 8
  store i8 0, i8* %23, align 1
  %24 = call i32 (...) @cnungrab()
  ret void

25:                                               ; preds = %16, %16
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = icmp ugt i8* %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 @cnputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %29
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 -1
  store i8* %36, i8** %7, align 8
  br label %37

37:                                               ; preds = %34, %25
  br label %16

38:                                               ; preds = %16
  br label %16

39:                                               ; preds = %16
  %40 = load i8*, i8** %7, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = icmp ult i8* %40, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %39
  %44 = load i32, i32* %6, align 4
  switch i32 %44, label %48 [
    i32 128, label %45
    i32 129, label %46
  ]

45:                                               ; preds = %43
  br label %51

46:                                               ; preds = %43
  %47 = call i32 @cnputc(i32 42)
  br label %51

48:                                               ; preds = %43
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @cnputc(i32 %49)
  br label %51

51:                                               ; preds = %48, %46, %45
  %52 = load i32, i32* %9, align 4
  %53 = trunc i32 %52 to i8
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %7, align 8
  store i8 %53, i8* %54, align 1
  br label %56

56:                                               ; preds = %51, %39
  br label %57

57:                                               ; preds = %56
  br label %16
}

declare dso_local i32 @cngrab(...) #1

declare dso_local i32 @cngetc(...) #1

declare dso_local i32 @cnputc(i32) #1

declare dso_local i32 @cnungrab(...) #1

declare dso_local i32 @cnputs(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
