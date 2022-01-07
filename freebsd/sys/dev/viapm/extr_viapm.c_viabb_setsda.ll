; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/viapm/extr_viapm.c_viabb_setsda.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/viapm/extr_viapm.c_viabb_setsda.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.viapm_softc = type { i32 }

@GPIO_VAL = common dso_local global i32 0, align 4
@VIAPM_SDA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @viabb_setsda to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @viabb_setsda(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.viapm_softc*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.viapm_softc* @device_get_softc(i32 %7)
  store %struct.viapm_softc* %8, %struct.viapm_softc** %5, align 8
  %9 = load %struct.viapm_softc*, %struct.viapm_softc** %5, align 8
  %10 = call i32 @VIAPM_LOCK(%struct.viapm_softc* %9)
  %11 = load i32, i32* @GPIO_VAL, align 4
  %12 = call i32 @VIAPM_INB(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @VIAPM_SDA, align 4
  %17 = load i32, i32* %6, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %6, align 4
  br label %24

19:                                               ; preds = %2
  %20 = load i32, i32* @VIAPM_SDA, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %19, %15
  %25 = load i32, i32* @GPIO_VAL, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @VIAPM_OUTB(i32 %25, i32 %26)
  %28 = load %struct.viapm_softc*, %struct.viapm_softc** %5, align 8
  %29 = call i32 @VIAPM_UNLOCK(%struct.viapm_softc* %28)
  ret void
}

declare dso_local %struct.viapm_softc* @device_get_softc(i32) #1

declare dso_local i32 @VIAPM_LOCK(%struct.viapm_softc*) #1

declare dso_local i32 @VIAPM_INB(i32) #1

declare dso_local i32 @VIAPM_OUTB(i32, i32) #1

declare dso_local i32 @VIAPM_UNLOCK(%struct.viapm_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
