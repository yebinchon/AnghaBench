; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn_efuse.c_rtwn_read_rom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn_efuse.c_rtwn_read_rom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }

@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtwn_read_rom(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %5 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %6 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @M_TEMP, align 4
  %9 = load i32, i32* @M_WAITOK, align 4
  %10 = call i32* @malloc(i32 %7, i32 %8, i32 %9)
  store i32* %10, i32** %3, align 8
  %11 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %12 = call i32 @RTWN_LOCK(%struct.rtwn_softc* %11)
  %13 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %16 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @rtwn_efuse_read_prepare(%struct.rtwn_softc* %13, i32* %14, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %20 = call i32 @RTWN_UNLOCK(%struct.rtwn_softc* %19)
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %28

24:                                               ; preds = %1
  %25 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @rtwn_parse_rom(%struct.rtwn_softc* %25, i32* %26)
  br label %28

28:                                               ; preds = %24, %23
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* @M_TEMP, align 4
  %31 = call i32 @free(i32* %29, i32 %30)
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @RTWN_LOCK(%struct.rtwn_softc*) #1

declare dso_local i32 @rtwn_efuse_read_prepare(%struct.rtwn_softc*, i32*, i32) #1

declare dso_local i32 @RTWN_UNLOCK(%struct.rtwn_softc*) #1

declare dso_local i32 @rtwn_parse_rom(%struct.rtwn_softc*, i32*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
