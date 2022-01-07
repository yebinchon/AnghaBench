; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_intr_machdep.c_atpic_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_intr_machdep.c_atpic_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IO_ICU1 = common dso_local global i64 0, align 8
@ICW1_RESET = common dso_local global i32 0, align 4
@ICW1_IC4 = common dso_local global i32 0, align 4
@ICU_IMR_OFFSET = common dso_local global i64 0, align 8
@IDT_IO_INTS = common dso_local global i32 0, align 4
@ICU_SLAVEID = common dso_local global i32 0, align 4
@MASTER_MODE = common dso_local global i32 0, align 4
@OCW3_SEL = common dso_local global i32 0, align 4
@OCW3_RR = common dso_local global i32 0, align 4
@IO_ICU2 = common dso_local global i64 0, align 8
@SLAVE_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atpic_reset() #0 {
  %1 = load i64, i64* @IO_ICU1, align 8
  %2 = load i32, i32* @ICW1_RESET, align 4
  %3 = load i32, i32* @ICW1_IC4, align 4
  %4 = or i32 %2, %3
  %5 = call i32 @outb(i64 %1, i32 %4)
  %6 = load i64, i64* @IO_ICU1, align 8
  %7 = load i64, i64* @ICU_IMR_OFFSET, align 8
  %8 = add nsw i64 %6, %7
  %9 = load i32, i32* @IDT_IO_INTS, align 4
  %10 = call i32 @outb(i64 %8, i32 %9)
  %11 = load i64, i64* @IO_ICU1, align 8
  %12 = load i64, i64* @ICU_IMR_OFFSET, align 8
  %13 = add nsw i64 %11, %12
  %14 = load i32, i32* @ICU_SLAVEID, align 4
  %15 = call i32 @IRQ_MASK(i32 %14)
  %16 = call i32 @outb(i64 %13, i32 %15)
  %17 = load i64, i64* @IO_ICU1, align 8
  %18 = load i64, i64* @ICU_IMR_OFFSET, align 8
  %19 = add nsw i64 %17, %18
  %20 = load i32, i32* @MASTER_MODE, align 4
  %21 = call i32 @outb(i64 %19, i32 %20)
  %22 = load i64, i64* @IO_ICU1, align 8
  %23 = load i64, i64* @ICU_IMR_OFFSET, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @outb(i64 %24, i32 255)
  %26 = load i64, i64* @IO_ICU1, align 8
  %27 = load i32, i32* @OCW3_SEL, align 4
  %28 = load i32, i32* @OCW3_RR, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @outb(i64 %26, i32 %29)
  %31 = load i64, i64* @IO_ICU2, align 8
  %32 = load i32, i32* @ICW1_RESET, align 4
  %33 = load i32, i32* @ICW1_IC4, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @outb(i64 %31, i32 %34)
  %36 = load i64, i64* @IO_ICU2, align 8
  %37 = load i64, i64* @ICU_IMR_OFFSET, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i32, i32* @IDT_IO_INTS, align 4
  %40 = add nsw i32 %39, 8
  %41 = call i32 @outb(i64 %38, i32 %40)
  %42 = load i64, i64* @IO_ICU2, align 8
  %43 = load i64, i64* @ICU_IMR_OFFSET, align 8
  %44 = add nsw i64 %42, %43
  %45 = load i32, i32* @ICU_SLAVEID, align 4
  %46 = call i32 @outb(i64 %44, i32 %45)
  %47 = load i64, i64* @IO_ICU2, align 8
  %48 = load i64, i64* @ICU_IMR_OFFSET, align 8
  %49 = add nsw i64 %47, %48
  %50 = load i32, i32* @SLAVE_MODE, align 4
  %51 = call i32 @outb(i64 %49, i32 %50)
  %52 = load i64, i64* @IO_ICU2, align 8
  %53 = load i64, i64* @ICU_IMR_OFFSET, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @outb(i64 %54, i32 255)
  %56 = load i64, i64* @IO_ICU2, align 8
  %57 = load i32, i32* @OCW3_SEL, align 4
  %58 = load i32, i32* @OCW3_RR, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @outb(i64 %56, i32 %59)
  ret void
}

declare dso_local i32 @outb(i64, i32) #1

declare dso_local i32 @IRQ_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
