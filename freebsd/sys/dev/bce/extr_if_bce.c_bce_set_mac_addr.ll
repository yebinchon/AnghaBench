; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_set_mac_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_set_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bce_softc = type { i32* }

@BCE_VERBOSE_RESET = common dso_local global i32 0, align 4
@BCE_INFO_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Setting Ethernet address = %6D\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@BCE_EMAC_MAC_MATCH0 = common dso_local global i32 0, align 4
@BCE_EMAC_MAC_MATCH1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bce_softc*)* @bce_set_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bce_set_mac_addr(%struct.bce_softc* %0) #0 {
  %2 = alloca %struct.bce_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store %struct.bce_softc* %0, %struct.bce_softc** %2, align 8
  %5 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %6 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  store i32* %7, i32** %4, align 8
  %8 = load i32, i32* @BCE_VERBOSE_RESET, align 4
  %9 = call i32 @DBENTER(i32 %8)
  %10 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %11 = load i32, i32* @BCE_INFO_MISC, align 4
  %12 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %13 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @DBPRINT(%struct.bce_softc* %10, i32 %11, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 8
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %19, %22
  store i32 %23, i32* %3, align 4
  %24 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %25 = load i32, i32* @BCE_EMAC_MAC_MATCH0, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @REG_WR(%struct.bce_softc* %24, i32 %25, i32 %26)
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 24
  %32 = load i32*, i32** %4, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 16
  %36 = or i32 %31, %35
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 4
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 8
  %41 = or i32 %36, %40
  %42 = load i32*, i32** %4, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 5
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %41, %44
  store i32 %45, i32* %3, align 4
  %46 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %47 = load i32, i32* @BCE_EMAC_MAC_MATCH1, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @REG_WR(%struct.bce_softc* %46, i32 %47, i32 %48)
  %50 = load i32, i32* @BCE_VERBOSE_RESET, align 4
  %51 = call i32 @DBEXIT(i32 %50)
  ret void
}

declare dso_local i32 @DBENTER(i32) #1

declare dso_local i32 @DBPRINT(%struct.bce_softc*, i32, i8*, i32*, i8*) #1

declare dso_local i32 @REG_WR(%struct.bce_softc*, i32, i32) #1

declare dso_local i32 @DBEXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
