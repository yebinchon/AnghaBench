; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nge/extr_if_nge.c_nge_eeprom_putbyte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nge/extr_if_nge.c_nge_eeprom_putbyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nge_softc = type { i32 }

@NGE_EECMD_READ = common dso_local global i32 0, align 4
@NGE_MEAR_EE_DIN = common dso_local global i32 0, align 4
@NGE_MEAR_EE_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nge_softc*, i32)* @nge_eeprom_putbyte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nge_eeprom_putbyte(%struct.nge_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.nge_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nge_softc* %0, %struct.nge_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @NGE_EECMD_READ, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %5, align 4
  store i32 1024, i32* %6, align 4
  br label %10

10:                                               ; preds = %35, %2
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @NGE_MEAR_EE_DIN, align 4
  %20 = call i32 @SIO_SET(i32 %19)
  br label %24

21:                                               ; preds = %13
  %22 = load i32, i32* @NGE_MEAR_EE_DIN, align 4
  %23 = call i32 @SIO_CLR(i32 %22)
  br label %24

24:                                               ; preds = %21, %18
  %25 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %26 = call i32 @nge_delay(%struct.nge_softc* %25)
  %27 = load i32, i32* @NGE_MEAR_EE_CLK, align 4
  %28 = call i32 @SIO_SET(i32 %27)
  %29 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %30 = call i32 @nge_delay(%struct.nge_softc* %29)
  %31 = load i32, i32* @NGE_MEAR_EE_CLK, align 4
  %32 = call i32 @SIO_CLR(i32 %31)
  %33 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %34 = call i32 @nge_delay(%struct.nge_softc* %33)
  br label %35

35:                                               ; preds = %24
  %36 = load i32, i32* %6, align 4
  %37 = ashr i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %10

38:                                               ; preds = %10
  ret void
}

declare dso_local i32 @SIO_SET(i32) #1

declare dso_local i32 @SIO_CLR(i32) #1

declare dso_local i32 @nge_delay(%struct.nge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
