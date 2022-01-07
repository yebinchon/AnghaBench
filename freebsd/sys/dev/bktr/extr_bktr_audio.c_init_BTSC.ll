; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bktr/extr_bktr_audio.c_init_BTSC.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bktr/extr_bktr_audio.c_init_BTSC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TDA9850_WADDR = common dso_local global i32 0, align 4
@CON1ADDR = common dso_local global i32 0, align 4
@CON2ADDR = common dso_local global i32 0, align 4
@CON3ADDR = common dso_local global i32 0, align 4
@CON4ADDR = common dso_local global i32 0, align 4
@ALI1ADDR = common dso_local global i32 0, align 4
@ALI2ADDR = common dso_local global i32 0, align 4
@ALI3ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_BTSC(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @TDA9850_WADDR, align 4
  %5 = load i32, i32* @CON1ADDR, align 4
  %6 = call i32 @i2cWrite(i32 %3, i32 %4, i32 %5, i32 8)
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @TDA9850_WADDR, align 4
  %9 = load i32, i32* @CON2ADDR, align 4
  %10 = call i32 @i2cWrite(i32 %7, i32 %8, i32 %9, i32 8)
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @TDA9850_WADDR, align 4
  %13 = load i32, i32* @CON3ADDR, align 4
  %14 = call i32 @i2cWrite(i32 %11, i32 %12, i32 %13, i32 64)
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @TDA9850_WADDR, align 4
  %17 = load i32, i32* @CON4ADDR, align 4
  %18 = call i32 @i2cWrite(i32 %15, i32 %16, i32 %17, i32 7)
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @TDA9850_WADDR, align 4
  %21 = load i32, i32* @ALI1ADDR, align 4
  %22 = call i32 @i2cWrite(i32 %19, i32 %20, i32 %21, i32 16)
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @TDA9850_WADDR, align 4
  %25 = load i32, i32* @ALI2ADDR, align 4
  %26 = call i32 @i2cWrite(i32 %23, i32 %24, i32 %25, i32 16)
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @TDA9850_WADDR, align 4
  %29 = load i32, i32* @ALI3ADDR, align 4
  %30 = call i32 @i2cWrite(i32 %27, i32 %28, i32 %29, i32 3)
  ret void
}

declare dso_local i32 @i2cWrite(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
