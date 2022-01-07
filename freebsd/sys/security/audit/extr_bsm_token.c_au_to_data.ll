; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_bsm_token.c_au_to_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_bsm_token.c_au_to_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AUR_BYTE_SIZE = common dso_local global i64 0, align 8
@AUR_SHORT_SIZE = common dso_local global i64 0, align 8
@AUR_INT32_SIZE = common dso_local global i64 0, align 8
@AUR_INT64_SIZE = common dso_local global i64 0, align 8
@AUT_DATA = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @au_to_data(i8 signext %0, i8 signext %1, i8 signext %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8 %0, i8* %6, align 1
  store i8 %1, i8* %7, align 1
  store i8 %2, i8* %8, align 1
  store i8* %3, i8** %9, align 8
  store i32* null, i32** %11, align 8
  %14 = load i8, i8* %7, align 1
  %15 = sext i8 %14 to i32
  switch i32 %15, label %24 [
    i32 131, label %16
    i32 128, label %18
    i32 130, label %20
    i32 129, label %22
  ]

16:                                               ; preds = %4
  %17 = load i64, i64* @AUR_BYTE_SIZE, align 8
  store i64 %17, i64* %12, align 8
  br label %25

18:                                               ; preds = %4
  %19 = load i64, i64* @AUR_SHORT_SIZE, align 8
  store i64 %19, i64* %12, align 8
  br label %25

20:                                               ; preds = %4
  %21 = load i64, i64* @AUR_INT32_SIZE, align 8
  store i64 %21, i64* %12, align 8
  br label %25

22:                                               ; preds = %4
  %23 = load i64, i64* @AUR_INT64_SIZE, align 8
  store i64 %23, i64* %12, align 8
  br label %25

24:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %53

25:                                               ; preds = %22, %20, %18, %16
  %26 = load i64, i64* %12, align 8
  %27 = load i8, i8* %8, align 1
  %28 = sext i8 %27 to i64
  %29 = mul i64 %26, %28
  store i64 %29, i64* %13, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = load i64, i64* %13, align 8
  %33 = add i64 16, %32
  %34 = trunc i64 %33 to i32
  %35 = call i32 @GET_TOKEN_AREA(i32* %30, i32* %31, i32 %34)
  %36 = load i32*, i32** %11, align 8
  %37 = load i8, i8* @AUT_DATA, align 1
  %38 = call i32 @ADD_U_CHAR(i32* %36, i8 signext %37)
  %39 = load i32*, i32** %11, align 8
  %40 = load i8, i8* %6, align 1
  %41 = call i32 @ADD_U_CHAR(i32* %39, i8 signext %40)
  %42 = load i32*, i32** %11, align 8
  %43 = load i8, i8* %7, align 1
  %44 = call i32 @ADD_U_CHAR(i32* %42, i8 signext %43)
  %45 = load i32*, i32** %11, align 8
  %46 = load i8, i8* %8, align 1
  %47 = call i32 @ADD_U_CHAR(i32* %45, i8 signext %46)
  %48 = load i32*, i32** %11, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load i64, i64* %13, align 8
  %51 = call i32 @ADD_MEM(i32* %48, i8* %49, i64 %50)
  %52 = load i32*, i32** %10, align 8
  store i32* %52, i32** %5, align 8
  br label %53

53:                                               ; preds = %25, %24
  %54 = load i32*, i32** %5, align 8
  ret i32* %54
}

declare dso_local i32 @GET_TOKEN_AREA(i32*, i32*, i32) #1

declare dso_local i32 @ADD_U_CHAR(i32*, i8 signext) #1

declare dso_local i32 @ADD_MEM(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
