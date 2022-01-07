; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_bsm_token.c_au_to_privset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_bsm_token.c_au_to_privset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AUT_PRIV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @au_to_privset(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @strlen(i8* %9)
  %11 = add nsw i64 %10, 1
  store i64 %11, i64* %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i64 @strlen(i8* %12)
  %14 = add nsw i64 %13, 1
  store i64 %14, i64* %6, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i64, i64* %5, align 8
  %18 = add i64 20, %17
  %19 = load i64, i64* %6, align 8
  %20 = add i64 %18, %19
  %21 = call i32 @GET_TOKEN_AREA(i32* %15, i32* %16, i64 %20)
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* @AUT_PRIV, align 4
  %24 = call i32 @ADD_U_CHAR(i32* %22, i32 %23)
  %25 = load i32*, i32** %7, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @ADD_U_INT16(i32* %25, i64 %26)
  %28 = load i32*, i32** %7, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @ADD_STRING(i32* %28, i8* %29, i64 %30)
  %32 = load i32*, i32** %7, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @ADD_U_INT16(i32* %32, i64 %33)
  %35 = load i32*, i32** %7, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @ADD_STRING(i32* %35, i8* %36, i64 %37)
  %39 = load i32*, i32** %8, align 8
  ret i32* %39
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @GET_TOKEN_AREA(i32*, i32*, i64) #1

declare dso_local i32 @ADD_U_CHAR(i32*, i32) #1

declare dso_local i32 @ADD_U_INT16(i32*, i64) #1

declare dso_local i32 @ADD_STRING(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
