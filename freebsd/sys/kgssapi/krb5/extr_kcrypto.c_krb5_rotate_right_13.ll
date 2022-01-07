; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_kcrypto.c_krb5_rotate_right_13.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_kcrypto.c_krb5_rotate_right_13.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i64)* @krb5_rotate_right_13 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @krb5_rotate_right_13(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp eq i64 %9, 1
  br i1 %10, label %11, label %24

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = ashr i32 %14, 5
  store i32 %15, i32* %7, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 3
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %19, %20
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %21, i32* %23, align 4
  br label %78

24:                                               ; preds = %3
  %25 = load i32*, i32** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = sub i64 %26, 2
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 31
  %31 = shl i32 %30, 8
  %32 = load i32*, i32** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = sub i64 %33, 1
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %31, %36
  store i32 %37, i32* %7, align 4
  store i64 2, i64* %8, align 8
  br label %38

38:                                               ; preds = %60, %24
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %38
  %43 = load i32*, i32** %5, align 8
  %44 = load i64, i64* %8, align 8
  %45 = sub i64 %44, 2
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 31
  %49 = shl i32 %48, 3
  %50 = load i32*, i32** %5, align 8
  %51 = load i64, i64* %8, align 8
  %52 = sub i64 %51, 1
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 5
  %56 = or i32 %49, %55
  %57 = load i32*, i32** %4, align 8
  %58 = load i64, i64* %8, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32 %56, i32* %59, align 4
  br label %60

60:                                               ; preds = %42
  %61 = load i64, i64* %8, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %8, align 8
  br label %38

63:                                               ; preds = %38
  %64 = load i32, i32* %7, align 4
  %65 = and i32 %64, 31
  %66 = shl i32 %65, 3
  %67 = load i32*, i32** %5, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = ashr i32 %69, 5
  %71 = or i32 %66, %70
  %72 = load i32*, i32** %4, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %7, align 4
  %75 = ashr i32 %74, 5
  %76 = load i32*, i32** %4, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %63, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
