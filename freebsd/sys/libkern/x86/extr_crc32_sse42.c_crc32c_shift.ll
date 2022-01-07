; ModuleID = '/home/carl/AnghaBench/freebsd/sys/libkern/x86/extr_crc32_sse42.c_crc32c_shift.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/libkern/x86/extr_crc32_sse42.c_crc32c_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ([256 x i32]*, i32)* @crc32c_shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crc32c_shift([256 x i32]* %0, i32 %1) #0 {
  %3 = alloca [256 x i32]*, align 8
  %4 = alloca i32, align 4
  store [256 x i32]* %0, [256 x i32]** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load [256 x i32]*, [256 x i32]** %3, align 8
  %6 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0
  %7 = load i32, i32* %4, align 4
  %8 = and i32 %7, 255
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = load [256 x i32]*, [256 x i32]** %3, align 8
  %13 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 1
  %14 = load i32, i32* %4, align 4
  %15 = ashr i32 %14, 8
  %16 = and i32 %15, 255
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = xor i32 %11, %19
  %21 = load [256 x i32]*, [256 x i32]** %3, align 8
  %22 = getelementptr inbounds [256 x i32], [256 x i32]* %21, i64 2
  %23 = load i32, i32* %4, align 4
  %24 = ashr i32 %23, 16
  %25 = and i32 %24, 255
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [256 x i32], [256 x i32]* %22, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = xor i32 %20, %28
  %30 = load [256 x i32]*, [256 x i32]** %3, align 8
  %31 = getelementptr inbounds [256 x i32], [256 x i32]* %30, i64 3
  %32 = load i32, i32* %4, align 4
  %33 = ashr i32 %32, 24
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [256 x i32], [256 x i32]* %31, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = xor i32 %29, %36
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
