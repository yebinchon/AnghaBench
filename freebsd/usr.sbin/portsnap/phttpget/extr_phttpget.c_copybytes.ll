; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/portsnap/phttpget/extr_phttpget.c_copybytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/portsnap/phttpget/extr_phttpget.c_copybytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"write\00", align 1
@BUFSIZ = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i8*, i32*, i32*)* @copybytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copybytes(i32 %0, i32 %1, i32 %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  br label %15

15:                                               ; preds = %79, %68, %49, %6
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %80

18:                                               ; preds = %15
  %19 = load i32*, i32** %12, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %13, align 8
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %20, %22
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %14, align 4
  br label %29

29:                                               ; preds = %27, %18
  %30 = load i32, i32* %14, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %57

32:                                               ; preds = %29
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, -1
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load i32, i32* %9, align 4
  %37 = load i8*, i8** %11, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @write(i32 %36, i8* %41, i32 %42)
  store i32 %43, i32* %14, align 4
  br label %44

44:                                               ; preds = %35, %32
  %45 = load i32, i32* %14, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = call i32 @err(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %44
  %50 = load i32, i32* %14, align 4
  %51 = load i32*, i32** %13, align 8
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, %50
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %10, align 4
  %56 = sub nsw i32 %55, %54
  store i32 %56, i32* %10, align 4
  br label %15

57:                                               ; preds = %29
  %58 = load i32, i32* %8, align 4
  %59 = load i8*, i8** %11, align 8
  %60 = load i32, i32* @BUFSIZ, align 4
  %61 = call i32 @recv(i32 %58, i8* %59, i32 %60, i32 0)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = load i64, i64* @errno, align 8
  %66 = load i64, i64* @EINTR, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %15

69:                                               ; preds = %64
  store i32 -1, i32* %7, align 4
  br label %81

70:                                               ; preds = %57
  %71 = load i32, i32* %14, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 -2, i32* %7, align 4
  br label %81

74:                                               ; preds = %70
  %75 = load i32, i32* %14, align 4
  %76 = load i32*, i32** %12, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32*, i32** %13, align 8
  store i32 0, i32* %77, align 4
  br label %78

78:                                               ; preds = %74
  br label %79

79:                                               ; preds = %78
  br label %15

80:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %80, %73, %69
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
