; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_mp.c_jz4780_core_powerup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_mp.c_jz4780_core_powerup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JZ_CGU_BASE = common dso_local global i64 0, align 8
@JZ_LPCR = common dso_local global i64 0, align 8
@LPCR_PD_SCPU = common dso_local global i32 0, align 4
@LPCR_SCPUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @jz4780_core_powerup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jz4780_core_powerup() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @JZ_CGU_BASE, align 8
  %3 = load i64, i64* @JZ_LPCR, align 8
  %4 = add nsw i64 %2, %3
  %5 = call i32 @readreg(i64 %4)
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* @LPCR_PD_SCPU, align 4
  %7 = xor i32 %6, -1
  %8 = load i32, i32* %1, align 4
  %9 = and i32 %8, %7
  store i32 %9, i32* %1, align 4
  %10 = load i64, i64* @JZ_CGU_BASE, align 8
  %11 = load i64, i64* @JZ_LPCR, align 8
  %12 = add nsw i64 %10, %11
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @writereg(i64 %12, i32 %13)
  br label %15

15:                                               ; preds = %20, %0
  %16 = load i64, i64* @JZ_CGU_BASE, align 8
  %17 = load i64, i64* @JZ_LPCR, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readreg(i64 %18)
  store i32 %19, i32* %1, align 4
  br label %20

20:                                               ; preds = %15
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @LPCR_SCPUS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %15, label %25

25:                                               ; preds = %20
  ret void
}

declare dso_local i32 @readreg(i64) #1

declare dso_local i32 @writereg(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
