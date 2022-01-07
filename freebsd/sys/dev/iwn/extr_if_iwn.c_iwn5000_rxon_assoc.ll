; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn5000_rxon_assoc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn5000_rxon_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwn_softc = type { %struct.iwn_rxon* }
%struct.iwn_rxon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iwn5000_rxon_assoc = type { i64, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32 }

@IWN_CMD_RXON_ASSOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwn_softc*, i32)* @iwn5000_rxon_assoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwn5000_rxon_assoc(%struct.iwn_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.iwn_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwn5000_rxon_assoc, align 8
  %6 = alloca %struct.iwn_rxon*, align 8
  store %struct.iwn_softc* %0, %struct.iwn_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.iwn_softc*, %struct.iwn_softc** %3, align 8
  %8 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %7, i32 0, i32 0
  %9 = load %struct.iwn_rxon*, %struct.iwn_rxon** %8, align 8
  store %struct.iwn_rxon* %9, %struct.iwn_rxon** %6, align 8
  %10 = load %struct.iwn_rxon*, %struct.iwn_rxon** %6, align 8
  %11 = getelementptr inbounds %struct.iwn_rxon, %struct.iwn_rxon* %10, i32 0, i32 8
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.iwn5000_rxon_assoc, %struct.iwn5000_rxon_assoc* %5, i32 0, i32 11
  store i32 %12, i32* %13, align 4
  %14 = load %struct.iwn_rxon*, %struct.iwn_rxon** %6, align 8
  %15 = getelementptr inbounds %struct.iwn_rxon, %struct.iwn_rxon* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.iwn5000_rxon_assoc, %struct.iwn5000_rxon_assoc* %5, i32 0, i32 10
  store i32 %16, i32* %17, align 8
  %18 = load %struct.iwn_rxon*, %struct.iwn_rxon** %6, align 8
  %19 = getelementptr inbounds %struct.iwn_rxon, %struct.iwn_rxon* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.iwn5000_rxon_assoc, %struct.iwn5000_rxon_assoc* %5, i32 0, i32 9
  store i32 %20, i32* %21, align 4
  %22 = load %struct.iwn_rxon*, %struct.iwn_rxon** %6, align 8
  %23 = getelementptr inbounds %struct.iwn_rxon, %struct.iwn_rxon* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.iwn5000_rxon_assoc, %struct.iwn5000_rxon_assoc* %5, i32 0, i32 8
  store i32 %24, i32* %25, align 8
  %26 = getelementptr inbounds %struct.iwn5000_rxon_assoc, %struct.iwn5000_rxon_assoc* %5, i32 0, i32 7
  store i64 0, i64* %26, align 8
  %27 = load %struct.iwn_rxon*, %struct.iwn_rxon** %6, align 8
  %28 = getelementptr inbounds %struct.iwn_rxon, %struct.iwn_rxon* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.iwn5000_rxon_assoc, %struct.iwn5000_rxon_assoc* %5, i32 0, i32 6
  store i32 %29, i32* %30, align 8
  %31 = load %struct.iwn_rxon*, %struct.iwn_rxon** %6, align 8
  %32 = getelementptr inbounds %struct.iwn_rxon, %struct.iwn_rxon* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.iwn5000_rxon_assoc, %struct.iwn5000_rxon_assoc* %5, i32 0, i32 5
  store i32 %33, i32* %34, align 4
  %35 = load %struct.iwn_rxon*, %struct.iwn_rxon** %6, align 8
  %36 = getelementptr inbounds %struct.iwn_rxon, %struct.iwn_rxon* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.iwn5000_rxon_assoc, %struct.iwn5000_rxon_assoc* %5, i32 0, i32 4
  store i32 %37, i32* %38, align 8
  %39 = getelementptr inbounds %struct.iwn5000_rxon_assoc, %struct.iwn5000_rxon_assoc* %5, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = load %struct.iwn_rxon*, %struct.iwn_rxon** %6, align 8
  %41 = getelementptr inbounds %struct.iwn_rxon, %struct.iwn_rxon* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.iwn5000_rxon_assoc, %struct.iwn5000_rxon_assoc* %5, i32 0, i32 2
  store i32 %42, i32* %43, align 4
  %44 = load %struct.iwn_rxon*, %struct.iwn_rxon** %6, align 8
  %45 = getelementptr inbounds %struct.iwn_rxon, %struct.iwn_rxon* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.iwn5000_rxon_assoc, %struct.iwn5000_rxon_assoc* %5, i32 0, i32 1
  store i32 %46, i32* %47, align 8
  %48 = getelementptr inbounds %struct.iwn5000_rxon_assoc, %struct.iwn5000_rxon_assoc* %5, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load %struct.iwn_softc*, %struct.iwn_softc** %3, align 8
  %50 = load i32, i32* @IWN_CMD_RXON_ASSOC, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @iwn_cmd(%struct.iwn_softc* %49, i32 %50, %struct.iwn5000_rxon_assoc* %5, i32 64, i32 %51)
  ret i32 %52
}

declare dso_local i32 @iwn_cmd(%struct.iwn_softc*, i32, %struct.iwn5000_rxon_assoc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
