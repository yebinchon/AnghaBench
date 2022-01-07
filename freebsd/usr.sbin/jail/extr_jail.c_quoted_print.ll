; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/jail/extr_jail.c_quoted_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/jail/extr_jail.c_quoted_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @quoted_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quoted_print(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  store i8* %8, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %39

13:                                               ; preds = %2
  %14 = load i8*, i8** %7, align 8
  %15 = call i64 @strchr(i8* %14, i8 signext 39)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %37

18:                                               ; preds = %13
  %19 = load i8*, i8** %7, align 8
  %20 = call i64 @strchr(i8* %19, i8 signext 34)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %35

23:                                               ; preds = %18
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @strchr(i8* %24, i8 signext 32)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %7, align 8
  %29 = call i64 @strchr(i8* %28, i8 signext 9)
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i1 [ true, %23 ], [ %30, %27 ]
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 34, i32 0
  br label %35

35:                                               ; preds = %31, %22
  %36 = phi i32 [ 39, %22 ], [ %34, %31 ]
  br label %37

37:                                               ; preds = %35, %17
  %38 = phi i32 [ 34, %17 ], [ %36, %35 ]
  br label %39

39:                                               ; preds = %37, %12
  %40 = phi i32 [ 34, %12 ], [ %38, %37 ]
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* %6, align 4
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @putc(i32 %44, i32* %45)
  br label %47

47:                                               ; preds = %43, %39
  br label %48

48:                                               ; preds = %64, %47
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %7, align 8
  %51 = load i8, i8* %49, align 1
  %52 = sext i8 %51 to i32
  store i32 %52, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %48
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %55, 92
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57, %54
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @putc(i32 92, i32* %62)
  br label %64

64:                                               ; preds = %61, %57
  %65 = load i32, i32* %5, align 4
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @putc(i32 %65, i32* %66)
  br label %48

68:                                               ; preds = %48
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32, i32* %6, align 4
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @putc(i32 %72, i32* %73)
  br label %75

75:                                               ; preds = %71, %68
  ret void
}

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @putc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
