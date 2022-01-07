; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/primes/extr_spsp.c_isprime.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/primes/extr_spsp.c_isprime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isprime(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  store i64 %5, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i32 @spsp(i64 %6, i32 2)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %102

10:                                               ; preds = %1
  %11 = load i64, i64* %4, align 8
  %12 = icmp ult i64 %11, 2047
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %102

14:                                               ; preds = %10
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @spsp(i64 %15, i32 3)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %102

19:                                               ; preds = %14
  %20 = load i64, i64* %4, align 8
  %21 = icmp ult i64 %20, 1373653
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %102

23:                                               ; preds = %19
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @spsp(i64 %24, i32 5)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %102

28:                                               ; preds = %23
  %29 = load i64, i64* %4, align 8
  %30 = icmp ult i64 %29, 25326001
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 1, i32* %2, align 4
  br label %102

32:                                               ; preds = %28
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @spsp(i64 %33, i32 7)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %102

37:                                               ; preds = %32
  %38 = load i64, i64* %4, align 8
  %39 = icmp ult i64 %38, 3215031751
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 1, i32* %2, align 4
  br label %102

41:                                               ; preds = %37
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @spsp(i64 %42, i32 11)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %102

46:                                               ; preds = %41
  %47 = load i64, i64* %4, align 8
  %48 = icmp ult i64 %47, 2152302898747
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 1, i32* %2, align 4
  br label %102

50:                                               ; preds = %46
  %51 = load i64, i64* %4, align 8
  %52 = call i32 @spsp(i64 %51, i32 13)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %102

55:                                               ; preds = %50
  %56 = load i64, i64* %4, align 8
  %57 = icmp ult i64 %56, 3474749660383
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 1, i32* %2, align 4
  br label %102

59:                                               ; preds = %55
  %60 = load i64, i64* %4, align 8
  %61 = call i32 @spsp(i64 %60, i32 17)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %102

64:                                               ; preds = %59
  %65 = load i64, i64* %4, align 8
  %66 = icmp ult i64 %65, 341550071728321
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 1, i32* %2, align 4
  br label %102

68:                                               ; preds = %64
  %69 = load i64, i64* %4, align 8
  %70 = call i32 @spsp(i64 %69, i32 19)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  br label %102

73:                                               ; preds = %68
  %74 = load i64, i64* %4, align 8
  %75 = icmp ult i64 %74, 341550071728321
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 1, i32* %2, align 4
  br label %102

77:                                               ; preds = %73
  %78 = load i64, i64* %4, align 8
  %79 = call i32 @spsp(i64 %78, i32 23)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  store i32 0, i32* %2, align 4
  br label %102

82:                                               ; preds = %77
  %83 = load i64, i64* %4, align 8
  %84 = icmp ult i64 %83, 3825123056546413051
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 1, i32* %2, align 4
  br label %102

86:                                               ; preds = %82
  %87 = load i64, i64* %4, align 8
  %88 = call i32 @spsp(i64 %87, i32 29)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  store i32 0, i32* %2, align 4
  br label %102

91:                                               ; preds = %86
  %92 = load i64, i64* %4, align 8
  %93 = call i32 @spsp(i64 %92, i32 31)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %91
  store i32 0, i32* %2, align 4
  br label %102

96:                                               ; preds = %91
  %97 = load i64, i64* %4, align 8
  %98 = call i32 @spsp(i64 %97, i32 37)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %96
  store i32 0, i32* %2, align 4
  br label %102

101:                                              ; preds = %96
  store i32 1, i32* %2, align 4
  br label %102

102:                                              ; preds = %101, %100, %95, %90, %85, %81, %76, %72, %67, %63, %58, %54, %49, %45, %40, %36, %31, %27, %22, %18, %13, %9
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @spsp(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
