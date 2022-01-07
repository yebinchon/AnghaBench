; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_wide.c_tomb_utf8.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_wide.c_tomb_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"illegal uf8 char (%x)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tomb_utf8(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp sle i32 %12, 127
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 127
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %16, i32* %18, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 0, i32* %20, align 4
  store i32 1, i32* %3, align 4
  br label %68

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = icmp sle i32 %22, 2047
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 2, i32* %8, align 4
  store i32 192, i32* %7, align 4
  br label %38

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = icmp sle i32 %26, 65535
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 3, i32* %8, align 4
  store i32 224, i32* %7, align 4
  br label %37

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = icmp sle i32 %30, 2097151
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 4, i32* %8, align 4
  store i32 240, i32* %7, align 4
  br label %36

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @werr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 -1, i32* %3, align 4
  br label %68

36:                                               ; preds = %32
  br label %37

37:                                               ; preds = %36, %28
  br label %38

38:                                               ; preds = %37, %24
  %39 = load i32, i32* %8, align 4
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %54, %38
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %41
  %45 = load i32, i32* %5, align 4
  %46 = and i32 %45, 63
  %47 = or i32 %46, 128
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %47, i32* %51, align 4
  %52 = load i32, i32* %5, align 4
  %53 = ashr i32 %52, 6
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %44
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %9, align 4
  br label %41

57:                                               ; preds = %41
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %58, %59
  %61 = load i32*, i32** %6, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 %60, i32* %62, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 0, i32* %66, align 4
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %57, %33, %14
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @werr(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
