; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_bsm_token.c_au_to_return32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_bsm_token.c_au_to_return32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AUT_RETURN32 = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @au_to_return32(i8 signext %0, i32 %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i8 %0, i8* %3, align 1
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %6, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = call i32 @GET_TOKEN_AREA(i32* %7, i32* %8, i32 12)
  %10 = load i32*, i32** %6, align 8
  %11 = load i8, i8* @AUT_RETURN32, align 1
  %12 = call i32 @ADD_U_CHAR(i32* %10, i8 signext %11)
  %13 = load i32*, i32** %6, align 8
  %14 = load i8, i8* %3, align 1
  %15 = call i32 @ADD_U_CHAR(i32* %13, i8 signext %14)
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @ADD_U_INT32(i32* %16, i32 %17)
  %19 = load i32*, i32** %5, align 8
  ret i32* %19
}

declare dso_local i32 @GET_TOKEN_AREA(i32*, i32*, i32) #1

declare dso_local i32 @ADD_U_CHAR(i32*, i8 signext) #1

declare dso_local i32 @ADD_U_INT32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
