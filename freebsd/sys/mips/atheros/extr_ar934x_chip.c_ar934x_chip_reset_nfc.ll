; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar934x_chip.c_ar934x_chip_reset_nfc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_ar934x_chip.c_ar934x_chip_reset_nfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AR934X_RESET_NANDF = common dso_local global i32 0, align 4
@AR934X_RESET_ETH_SWITCH_ANALOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ar934x_chip_reset_nfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar934x_chip_reset_nfc(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = load i32, i32* @AR934X_RESET_NANDF, align 4
  %7 = call i32 @ar71xx_device_start(i32 %6)
  %8 = call i32 @DELAY(i32 100)
  %9 = load i32, i32* @AR934X_RESET_ETH_SWITCH_ANALOG, align 4
  %10 = call i32 @ar71xx_device_start(i32 %9)
  %11 = call i32 @DELAY(i32 250)
  br label %19

12:                                               ; preds = %1
  %13 = load i32, i32* @AR934X_RESET_ETH_SWITCH_ANALOG, align 4
  %14 = call i32 @ar71xx_device_stop(i32 %13)
  %15 = call i32 @DELAY(i32 250)
  %16 = load i32, i32* @AR934X_RESET_NANDF, align 4
  %17 = call i32 @ar71xx_device_stop(i32 %16)
  %18 = call i32 @DELAY(i32 100)
  br label %19

19:                                               ; preds = %12, %5
  ret void
}

declare dso_local i32 @ar71xx_device_start(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ar71xx_device_stop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
