; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_if_are.c_are_set_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_if_are.c_are_set_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.are_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@CSR_MACCTL = common dso_local global i32 0, align 4
@MACCTL_PR = common dso_local global i32 0, align 4
@MACCTL_PM = common dso_local global i32 0, align 4
@MACCTL_HBD = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@CSR_HTLO = common dso_local global i32 0, align 4
@CSR_HTHI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.are_softc*)* @are_set_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @are_set_filter(%struct.are_softc* %0) #0 {
  %2 = alloca %struct.are_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  store %struct.are_softc* %0, %struct.are_softc** %2, align 8
  %6 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %7 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %6, i32 0, i32 0
  %8 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  store %struct.ifnet* %8, %struct.ifnet** %3, align 8
  %9 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %10 = load i32, i32* @CSR_MACCTL, align 4
  %11 = call i32 @CSR_READ_4(%struct.are_softc* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @MACCTL_PR, align 4
  %13 = load i32, i32* @MACCTL_PM, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @MACCTL_HBD, align 4
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %22 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IFF_PROMISC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load i32, i32* @MACCTL_PR, align 4
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %27, %1
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 -1, i32* %32, align 4
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 -1, i32* %33, align 4
  %34 = load i32, i32* @MACCTL_PM, align 4
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %38 = load i32, i32* @CSR_HTLO, align 4
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @CSR_WRITE_4(%struct.are_softc* %37, i32 %38, i32 %40)
  %42 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %43 = load i32, i32* @CSR_HTHI, align 4
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @CSR_WRITE_4(%struct.are_softc* %42, i32 %43, i32 %45)
  %47 = load %struct.are_softc*, %struct.are_softc** %2, align 8
  %48 = load i32, i32* @CSR_MACCTL, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @CSR_WRITE_4(%struct.are_softc* %47, i32 %48, i32 %49)
  ret i32 0
}

declare dso_local i32 @CSR_READ_4(%struct.are_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.are_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
