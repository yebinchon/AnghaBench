; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_kcrypto.c_krb5_n_fold.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_kcrypto.c_krb5_n_fold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_GSSAPI = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32*, i64)* @krb5_n_fold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @krb5_n_fold(i32* %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i64 @lcm(i64 %13, i64 %14)
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i32, i32* @M_GSSAPI, align 4
  %18 = load i32, i32* @M_WAITOK, align 4
  %19 = call i32* @malloc(i64 %16, i32 %17, i32 %18)
  store i32* %19, i32** %10, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @bcopy(i32* %20, i32* %21, i64 %22)
  %24 = load i64, i64* %8, align 8
  store i64 %24, i64* %11, align 8
  %25 = load i32*, i32** %10, align 8
  store i32* %25, i32** %12, align 8
  br label %26

26:                                               ; preds = %37, %4
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* %9, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = load i32*, i32** %12, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32*, i32** %12, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @krb5_rotate_right_13(i32* %33, i32* %34, i64 %35)
  br label %37

37:                                               ; preds = %30
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %11, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 %41
  store i32* %43, i32** %12, align 8
  br label %26

44:                                               ; preds = %26
  %45 = load i32*, i32** %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @bzero(i32* %45, i64 %46)
  store i64 0, i64* %11, align 8
  %48 = load i32*, i32** %10, align 8
  store i32* %48, i32** %12, align 8
  br label %49

49:                                               ; preds = %58, %44
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* %9, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = load i32*, i32** %5, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @krb5_ones_complement_add(i32* %54, i32* %55, i64 %56)
  br label %58

58:                                               ; preds = %53
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %11, align 8
  %61 = add i64 %60, %59
  store i64 %61, i64* %11, align 8
  %62 = load i64, i64* %6, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 %62
  store i32* %64, i32** %12, align 8
  br label %49

65:                                               ; preds = %49
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* @M_GSSAPI, align 4
  %68 = call i32 @free(i32* %66, i32 %67)
  ret void
}

declare dso_local i64 @lcm(i64, i64) #1

declare dso_local i32* @malloc(i64, i32, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i64) #1

declare dso_local i32 @krb5_rotate_right_13(i32*, i32*, i64) #1

declare dso_local i32 @bzero(i32*, i64) #1

declare dso_local i32 @krb5_ones_complement_add(i32*, i32*, i64) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
