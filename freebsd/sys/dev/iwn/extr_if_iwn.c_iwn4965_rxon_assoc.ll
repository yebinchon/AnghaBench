; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn4965_rxon_assoc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn4965_rxon_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwn_softc = type { %struct.iwn_rxon* }
%struct.iwn_rxon = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.iwn4965_rxon_assoc = type { i64, i32, i32, i32, i32, i32, i32, i32 }

@IWN_CMD_RXON_ASSOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwn_softc*, i32)* @iwn4965_rxon_assoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwn4965_rxon_assoc(%struct.iwn_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.iwn_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwn4965_rxon_assoc, align 8
  %6 = alloca %struct.iwn_rxon*, align 8
  store %struct.iwn_softc* %0, %struct.iwn_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.iwn_softc*, %struct.iwn_softc** %3, align 8
  %8 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %7, i32 0, i32 0
  %9 = load %struct.iwn_rxon*, %struct.iwn_rxon** %8, align 8
  store %struct.iwn_rxon* %9, %struct.iwn_rxon** %6, align 8
  %10 = load %struct.iwn_rxon*, %struct.iwn_rxon** %6, align 8
  %11 = getelementptr inbounds %struct.iwn_rxon, %struct.iwn_rxon* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.iwn4965_rxon_assoc, %struct.iwn4965_rxon_assoc* %5, i32 0, i32 7
  store i32 %12, i32* %13, align 8
  %14 = load %struct.iwn_rxon*, %struct.iwn_rxon** %6, align 8
  %15 = getelementptr inbounds %struct.iwn_rxon, %struct.iwn_rxon* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.iwn4965_rxon_assoc, %struct.iwn4965_rxon_assoc* %5, i32 0, i32 6
  store i32 %16, i32* %17, align 4
  %18 = load %struct.iwn_rxon*, %struct.iwn_rxon** %6, align 8
  %19 = getelementptr inbounds %struct.iwn_rxon, %struct.iwn_rxon* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.iwn4965_rxon_assoc, %struct.iwn4965_rxon_assoc* %5, i32 0, i32 5
  store i32 %20, i32* %21, align 8
  %22 = load %struct.iwn_rxon*, %struct.iwn_rxon** %6, align 8
  %23 = getelementptr inbounds %struct.iwn_rxon, %struct.iwn_rxon* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.iwn4965_rxon_assoc, %struct.iwn4965_rxon_assoc* %5, i32 0, i32 4
  store i32 %24, i32* %25, align 4
  %26 = load %struct.iwn_rxon*, %struct.iwn_rxon** %6, align 8
  %27 = getelementptr inbounds %struct.iwn_rxon, %struct.iwn_rxon* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.iwn4965_rxon_assoc, %struct.iwn4965_rxon_assoc* %5, i32 0, i32 3
  store i32 %28, i32* %29, align 8
  %30 = load %struct.iwn_rxon*, %struct.iwn_rxon** %6, align 8
  %31 = getelementptr inbounds %struct.iwn_rxon, %struct.iwn_rxon* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.iwn4965_rxon_assoc, %struct.iwn4965_rxon_assoc* %5, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = load %struct.iwn_rxon*, %struct.iwn_rxon** %6, align 8
  %35 = getelementptr inbounds %struct.iwn_rxon, %struct.iwn_rxon* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.iwn4965_rxon_assoc, %struct.iwn4965_rxon_assoc* %5, i32 0, i32 1
  store i32 %36, i32* %37, align 8
  %38 = getelementptr inbounds %struct.iwn4965_rxon_assoc, %struct.iwn4965_rxon_assoc* %5, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load %struct.iwn_softc*, %struct.iwn_softc** %3, align 8
  %40 = load i32, i32* @IWN_CMD_RXON_ASSOC, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @iwn_cmd(%struct.iwn_softc* %39, i32 %40, %struct.iwn4965_rxon_assoc* %5, i32 40, i32 %41)
  ret i32 %42
}

declare dso_local i32 @iwn_cmd(%struct.iwn_softc*, i32, %struct.iwn4965_rxon_assoc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
