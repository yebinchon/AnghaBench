; ModuleID = '/home/carl/AnghaBench/freebsd/tools/test/testfloat/extr_writeHex.c_writeHex_float32.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/test/testfloat/extr_writeHex.c_writeHex_float32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @writeHex_float32(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = icmp slt i64 %6, 0
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i32 56, i32 48
  %10 = trunc i32 %9 to i8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @fputc(i8 signext %10, i32* %11)
  %13 = load i32, i32* %3, align 4
  %14 = ashr i32 %13, 23
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @writeHex_bits8(i32 %14, i32* %15)
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @fputc(i8 signext 46, i32* %17)
  %19 = load i32, i32* %3, align 4
  %20 = ashr i32 %19, 16
  %21 = and i32 %20, 127
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @writeHex_bits8(i32 %21, i32* %22)
  %24 = load i32, i32* %3, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @writeHex_bits16(i32 %24, i32* %25)
  ret void
}

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local i32 @writeHex_bits8(i32, i32*) #1

declare dso_local i32 @writeHex_bits16(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
