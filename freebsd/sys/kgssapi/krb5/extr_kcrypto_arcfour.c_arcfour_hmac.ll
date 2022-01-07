; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_kcrypto_arcfour.c_arcfour_hmac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_kcrypto_arcfour.c_arcfour_hmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i64, i32*)* @arcfour_hmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcfour_hmac(i32* %0, i32* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [64 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %25, %4
  %13 = load i32, i32* %11, align 4
  %14 = icmp slt i32 %13, 16
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %11, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = xor i32 %20, 54
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %23
  store i32 %21, i32* %24, align 4
  br label %25

25:                                               ; preds = %15
  %26 = load i32, i32* %11, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %11, align 4
  br label %12

28:                                               ; preds = %12
  br label %29

29:                                               ; preds = %36, %28
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 64
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %34
  store i32 54, i32* %35, align 4
  br label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %11, align 4
  br label %29

39:                                               ; preds = %29
  %40 = call i32 @MD5Init(i32* %10)
  %41 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 0
  %42 = call i32 @MD5Update(i32* %10, i32* %41, i32 64)
  %43 = load i32*, i32** %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @MD5Update(i32* %10, i32* %43, i32 %45)
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @MD5Final(i32* %47, i32* %10)
  store i32 0, i32* %11, align 4
  br label %49

49:                                               ; preds = %62, %39
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %50, 16
  br i1 %51, label %52, label %65

52:                                               ; preds = %49
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = xor i32 %57, 92
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %60
  store i32 %58, i32* %61, align 4
  br label %62

62:                                               ; preds = %52
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %49

65:                                               ; preds = %49
  br label %66

66:                                               ; preds = %73, %65
  %67 = load i32, i32* %11, align 4
  %68 = icmp slt i32 %67, 64
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 %71
  store i32 92, i32* %72, align 4
  br label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %66

76:                                               ; preds = %66
  %77 = call i32 @MD5Init(i32* %10)
  %78 = getelementptr inbounds [64 x i32], [64 x i32]* %9, i64 0, i64 0
  %79 = call i32 @MD5Update(i32* %10, i32* %78, i32 64)
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @MD5Update(i32* %10, i32* %80, i32 16)
  %82 = load i32*, i32** %8, align 8
  %83 = call i32 @MD5Final(i32* %82, i32* %10)
  ret void
}

declare dso_local i32 @MD5Init(i32*) #1

declare dso_local i32 @MD5Update(i32*, i32*, i32) #1

declare dso_local i32 @MD5Final(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
