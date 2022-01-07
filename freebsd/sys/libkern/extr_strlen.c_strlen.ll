; ModuleID = '/home/carl/AnghaBench/freebsd/sys/libkern/extr_strlen.c_strlen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/libkern/extr_strlen.c_strlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LONGPTR_MASK = common dso_local global i64 0, align 8
@mask01 = common dso_local global i64 0, align 8
@mask80 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @strlen(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = ptrtoint i8* %7 to i64
  %9 = load i64, i64* @LONGPTR_MASK, align 8
  %10 = xor i64 %9, -1
  %11 = and i64 %8, %10
  %12 = inttoptr i64 %11 to i64*
  store i64* %12, i64** %4, align 8
  %13 = load i64*, i64** %4, align 8
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @mask01, align 8
  %16 = sub i64 %14, %15
  store i64 %16, i64* %5, align 8
  %17 = load i64*, i64** %4, align 8
  %18 = load i64, i64* %17, align 8
  %19 = xor i64 %18, -1
  %20 = load i64, i64* @mask80, align 8
  %21 = and i64 %19, %20
  store i64 %21, i64* %6, align 8
  %22 = load i64*, i64** %4, align 8
  %23 = getelementptr inbounds i64, i64* %22, i32 1
  store i64* %23, i64** %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = and i64 %24, %25
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %51

28:                                               ; preds = %1
  %29 = load i8*, i8** %2, align 8
  store i8* %29, i8** %3, align 8
  br label %30

30:                                               ; preds = %47, %28
  %31 = load i8*, i8** %3, align 8
  %32 = load i64*, i64** %4, align 8
  %33 = bitcast i64* %32 to i8*
  %34 = icmp ult i8* %31, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %30
  %36 = load i8*, i8** %3, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i8*, i8** %3, align 8
  %42 = load i8*, i8** %2, align 8
  %43 = ptrtoint i8* %41 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  ret i64 %45

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46
  %48 = load i8*, i8** %3, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %3, align 8
  br label %30

50:                                               ; preds = %30
  br label %51

51:                                               ; preds = %50, %1
  br label %52

52:                                               ; preds = %74, %51
  %53 = load i64*, i64** %4, align 8
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @mask01, align 8
  %56 = sub i64 %54, %55
  store i64 %56, i64* %5, align 8
  %57 = load i64*, i64** %4, align 8
  %58 = load i64, i64* %57, align 8
  %59 = xor i64 %58, -1
  %60 = load i64, i64* @mask80, align 8
  %61 = and i64 %59, %60
  store i64 %61, i64* %6, align 8
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* %6, align 8
  %64 = and i64 %62, %63
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %52
  %67 = load i64*, i64** %4, align 8
  %68 = bitcast i64* %67 to i8*
  store i8* %68, i8** %3, align 8
  %69 = call i32 @testbyte(i32 0)
  %70 = call i32 @testbyte(i32 1)
  %71 = call i32 @testbyte(i32 2)
  %72 = call i32 @testbyte(i32 3)
  br label %73

73:                                               ; preds = %66, %52
  br label %74

74:                                               ; preds = %73
  %75 = load i64*, i64** %4, align 8
  %76 = getelementptr inbounds i64, i64* %75, i32 1
  store i64* %76, i64** %4, align 8
  br label %52
}

declare dso_local i32 @testbyte(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
