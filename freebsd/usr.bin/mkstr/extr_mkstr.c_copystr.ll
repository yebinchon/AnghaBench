; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mkstr/extr_mkstr.c_copystr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mkstr/extr_mkstr.c_copystr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"message too long\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copystr() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [512 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  store i8* %5, i8** %4, align 8
  br label %6

6:                                                ; preds = %69, %32, %0
  %7 = load i8*, i8** %4, align 8
  %8 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %9 = getelementptr inbounds i8, i8* %8, i64 512
  %10 = getelementptr inbounds i8, i8* %9, i64 -2
  %11 = icmp eq i8* %7, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = call i32 @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %6
  %15 = call i32 (...) @getchar()
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @EOF, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %74

20:                                               ; preds = %14
  %21 = load i32, i32* %1, align 4
  switch i32 %21, label %69 [
    i32 34, label %22
    i32 92, label %25
  ]

22:                                               ; preds = %20
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %4, align 8
  store i8 0, i8* %23, align 1
  br label %75

25:                                               ; preds = %20
  %26 = call i32 (...) @getchar()
  store i32 %26, i32* %1, align 4
  %27 = load i32, i32* %1, align 4
  switch i32 %27, label %36 [
    i32 98, label %28
    i32 116, label %29
    i32 114, label %30
    i32 110, label %31
    i32 10, label %32
    i32 102, label %33
    i32 48, label %34
    i32 92, label %35
  ]

28:                                               ; preds = %25
  store i32 8, i32* %1, align 4
  br label %68

29:                                               ; preds = %25
  store i32 9, i32* %1, align 4
  br label %68

30:                                               ; preds = %25
  store i32 13, i32* %1, align 4
  br label %68

31:                                               ; preds = %25
  store i32 10, i32* %1, align 4
  br label %68

32:                                               ; preds = %25
  br label %6

33:                                               ; preds = %25
  store i32 12, i32* %1, align 4
  br label %68

34:                                               ; preds = %25
  store i32 0, i32* %1, align 4
  br label %68

35:                                               ; preds = %25
  br label %68

36:                                               ; preds = %25
  %37 = load i32, i32* %1, align 4
  %38 = call i32 @octdigit(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  br label %68

41:                                               ; preds = %36
  %42 = load i32, i32* %1, align 4
  %43 = sub nsw i32 %42, 48
  store i32 %43, i32* %1, align 4
  %44 = call i32 (...) @getchar()
  store i32 %44, i32* %2, align 4
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @octdigit(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  br label %68

49:                                               ; preds = %41
  %50 = load i32, i32* %1, align 4
  %51 = shl i32 %50, 7
  store i32 %51, i32* %1, align 4
  %52 = load i32, i32* %2, align 4
  %53 = sub nsw i32 %52, 48
  %54 = load i32, i32* %1, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %1, align 4
  %56 = call i32 (...) @getchar()
  store i32 %56, i32* %2, align 4
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @octdigit(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %49
  br label %68

61:                                               ; preds = %49
  %62 = load i32, i32* %1, align 4
  %63 = shl i32 %62, 3
  store i32 %63, i32* %1, align 4
  %64 = load i32, i32* %2, align 4
  %65 = sub nsw i32 %64, 48
  %66 = load i32, i32* %1, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %1, align 4
  store i32 -1, i32* %2, align 4
  br label %68

68:                                               ; preds = %61, %60, %48, %40, %35, %34, %33, %31, %30, %29, %28
  br label %69

69:                                               ; preds = %68, %20
  %70 = load i32, i32* %1, align 4
  %71 = trunc i32 %70 to i8
  %72 = load i8*, i8** %4, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %4, align 8
  store i8 %71, i8* %72, align 1
  br label %6

74:                                               ; preds = %19
  br label %75

75:                                               ; preds = %74, %22
  %76 = load i8*, i8** %4, align 8
  store i8 0, i8* %76, align 1
  %77 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %78 = call i32 @hashit(i8* %77, i32 1, i32 0)
  %79 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  ret void
}

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @getchar(...) #1

declare dso_local i32 @octdigit(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @hashit(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
