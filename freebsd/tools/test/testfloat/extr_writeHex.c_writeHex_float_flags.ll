; ModuleID = '/home/carl/AnghaBench/freebsd/tools/test/testfloat/extr_writeHex.c_writeHex_float_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/test/testfloat/extr_writeHex.c_writeHex_float_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@float_flag_invalid = common dso_local global i32 0, align 4
@float_flag_divbyzero = common dso_local global i32 0, align 4
@float_flag_overflow = common dso_local global i32 0, align 4
@float_flag_underflow = common dso_local global i32 0, align 4
@float_flag_inexact = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @writeHex_float_flags(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @float_flag_invalid, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i32 118, i32 46
  %11 = trunc i32 %10 to i8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @fputc(i8 signext %11, i32* %12)
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @float_flag_divbyzero, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 122, i32 46
  %20 = trunc i32 %19 to i8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @fputc(i8 signext %20, i32* %21)
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @float_flag_overflow, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 111, i32 46
  %29 = trunc i32 %28 to i8
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @fputc(i8 signext %29, i32* %30)
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @float_flag_underflow, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 117, i32 46
  %38 = trunc i32 %37 to i8
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @fputc(i8 signext %38, i32* %39)
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @float_flag_inexact, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 120, i32 46
  %47 = trunc i32 %46 to i8
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @fputc(i8 signext %47, i32* %48)
  ret void
}

declare dso_local i32 @fputc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
