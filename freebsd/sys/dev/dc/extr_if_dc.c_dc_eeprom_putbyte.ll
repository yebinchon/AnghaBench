; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_eeprom_putbyte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_eeprom_putbyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_softc = type { i32 }

@DC_EECMD_READ = common dso_local global i32 0, align 4
@DC_SIO = common dso_local global i32 0, align 4
@DC_SIO_EE_DATAIN = common dso_local global i32 0, align 4
@DC_SIO_EE_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_softc*, i32)* @dc_eeprom_putbyte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc_eeprom_putbyte(%struct.dc_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.dc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dc_softc* %0, %struct.dc_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @DC_EECMD_READ, align 4
  %8 = ashr i32 %7, 6
  store i32 %8, i32* %5, align 4
  store i32 3, i32* %6, align 4
  br label %9

9:                                                ; preds = %29, %2
  %10 = load i32, i32* %6, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %6, align 4
  %12 = icmp ne i32 %10, 0
  br i1 %12, label %13, label %44

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = shl i32 1, %15
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %21 = load i32, i32* @DC_SIO, align 4
  %22 = load i32, i32* @DC_SIO_EE_DATAIN, align 4
  %23 = call i32 @DC_SETBIT(%struct.dc_softc* %20, i32 %21, i32 %22)
  br label %29

24:                                               ; preds = %13
  %25 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %26 = load i32, i32* @DC_SIO, align 4
  %27 = load i32, i32* @DC_SIO_EE_DATAIN, align 4
  %28 = call i32 @DC_CLRBIT(%struct.dc_softc* %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %24, %19
  %30 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %31 = call i32 @dc_delay(%struct.dc_softc* %30)
  %32 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %33 = load i32, i32* @DC_SIO, align 4
  %34 = load i32, i32* @DC_SIO_EE_CLK, align 4
  %35 = call i32 @DC_SETBIT(%struct.dc_softc* %32, i32 %33, i32 %34)
  %36 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %37 = call i32 @dc_delay(%struct.dc_softc* %36)
  %38 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %39 = load i32, i32* @DC_SIO, align 4
  %40 = load i32, i32* @DC_SIO_EE_CLK, align 4
  %41 = call i32 @DC_CLRBIT(%struct.dc_softc* %38, i32 %39, i32 %40)
  %42 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %43 = call i32 @dc_delay(%struct.dc_softc* %42)
  br label %9

44:                                               ; preds = %9
  %45 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %46 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %64, %44
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %6, align 4
  %51 = icmp ne i32 %49, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %48
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %6, align 4
  %55 = shl i32 1, %54
  %56 = and i32 %53, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @DC_SIO_EE_DATAIN, align 4
  %60 = call i32 @SIO_SET(i32 %59)
  br label %64

61:                                               ; preds = %52
  %62 = load i32, i32* @DC_SIO_EE_DATAIN, align 4
  %63 = call i32 @SIO_CLR(i32 %62)
  br label %64

64:                                               ; preds = %61, %58
  %65 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %66 = call i32 @dc_delay(%struct.dc_softc* %65)
  %67 = load i32, i32* @DC_SIO_EE_CLK, align 4
  %68 = call i32 @SIO_SET(i32 %67)
  %69 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %70 = call i32 @dc_delay(%struct.dc_softc* %69)
  %71 = load i32, i32* @DC_SIO_EE_CLK, align 4
  %72 = call i32 @SIO_CLR(i32 %71)
  %73 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %74 = call i32 @dc_delay(%struct.dc_softc* %73)
  br label %48

75:                                               ; preds = %48
  ret void
}

declare dso_local i32 @DC_SETBIT(%struct.dc_softc*, i32, i32) #1

declare dso_local i32 @DC_CLRBIT(%struct.dc_softc*, i32, i32) #1

declare dso_local i32 @dc_delay(%struct.dc_softc*) #1

declare dso_local i32 @SIO_SET(i32) #1

declare dso_local i32 @SIO_CLR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
