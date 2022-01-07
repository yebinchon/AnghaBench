; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_rx_iq_coeffs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_rx_iq_coeffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { i32 }
%struct.bwn_phy_n_iq_comp = type { i8*, i8*, i8*, i8* }

@BWN_NPHY_C1_RXIQ_COMPA0 = common dso_local global i32 0, align 4
@BWN_NPHY_C1_RXIQ_COMPB0 = common dso_local global i32 0, align 4
@BWN_NPHY_C2_RXIQ_COMPA1 = common dso_local global i32 0, align 4
@BWN_NPHY_C2_RXIQ_COMPB1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*, i32, %struct.bwn_phy_n_iq_comp*)* @bwn_nphy_rx_iq_coeffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_nphy_rx_iq_coeffs(%struct.bwn_mac* %0, i32 %1, %struct.bwn_phy_n_iq_comp* %2) #0 {
  %4 = alloca %struct.bwn_mac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bwn_phy_n_iq_comp*, align 8
  store %struct.bwn_mac* %0, %struct.bwn_mac** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.bwn_phy_n_iq_comp* %2, %struct.bwn_phy_n_iq_comp** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %3
  %10 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %11 = load i32, i32* @BWN_NPHY_C1_RXIQ_COMPA0, align 4
  %12 = load %struct.bwn_phy_n_iq_comp*, %struct.bwn_phy_n_iq_comp** %6, align 8
  %13 = getelementptr inbounds %struct.bwn_phy_n_iq_comp, %struct.bwn_phy_n_iq_comp* %12, i32 0, i32 3
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %10, i32 %11, i8* %14)
  %16 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %17 = load i32, i32* @BWN_NPHY_C1_RXIQ_COMPB0, align 4
  %18 = load %struct.bwn_phy_n_iq_comp*, %struct.bwn_phy_n_iq_comp** %6, align 8
  %19 = getelementptr inbounds %struct.bwn_phy_n_iq_comp, %struct.bwn_phy_n_iq_comp* %18, i32 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %16, i32 %17, i8* %20)
  %22 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %23 = load i32, i32* @BWN_NPHY_C2_RXIQ_COMPA1, align 4
  %24 = load %struct.bwn_phy_n_iq_comp*, %struct.bwn_phy_n_iq_comp** %6, align 8
  %25 = getelementptr inbounds %struct.bwn_phy_n_iq_comp, %struct.bwn_phy_n_iq_comp* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %22, i32 %23, i8* %26)
  %28 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %29 = load i32, i32* @BWN_NPHY_C2_RXIQ_COMPB1, align 4
  %30 = load %struct.bwn_phy_n_iq_comp*, %struct.bwn_phy_n_iq_comp** %6, align 8
  %31 = getelementptr inbounds %struct.bwn_phy_n_iq_comp, %struct.bwn_phy_n_iq_comp* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %28, i32 %29, i8* %32)
  br label %55

34:                                               ; preds = %3
  %35 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %36 = load i32, i32* @BWN_NPHY_C1_RXIQ_COMPA0, align 4
  %37 = call i8* @BWN_PHY_READ(%struct.bwn_mac* %35, i32 %36)
  %38 = load %struct.bwn_phy_n_iq_comp*, %struct.bwn_phy_n_iq_comp** %6, align 8
  %39 = getelementptr inbounds %struct.bwn_phy_n_iq_comp, %struct.bwn_phy_n_iq_comp* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  %40 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %41 = load i32, i32* @BWN_NPHY_C1_RXIQ_COMPB0, align 4
  %42 = call i8* @BWN_PHY_READ(%struct.bwn_mac* %40, i32 %41)
  %43 = load %struct.bwn_phy_n_iq_comp*, %struct.bwn_phy_n_iq_comp** %6, align 8
  %44 = getelementptr inbounds %struct.bwn_phy_n_iq_comp, %struct.bwn_phy_n_iq_comp* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %46 = load i32, i32* @BWN_NPHY_C2_RXIQ_COMPA1, align 4
  %47 = call i8* @BWN_PHY_READ(%struct.bwn_mac* %45, i32 %46)
  %48 = load %struct.bwn_phy_n_iq_comp*, %struct.bwn_phy_n_iq_comp** %6, align 8
  %49 = getelementptr inbounds %struct.bwn_phy_n_iq_comp, %struct.bwn_phy_n_iq_comp* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %51 = load i32, i32* @BWN_NPHY_C2_RXIQ_COMPB1, align 4
  %52 = call i8* @BWN_PHY_READ(%struct.bwn_mac* %50, i32 %51)
  %53 = load %struct.bwn_phy_n_iq_comp*, %struct.bwn_phy_n_iq_comp** %6, align 8
  %54 = getelementptr inbounds %struct.bwn_phy_n_iq_comp, %struct.bwn_phy_n_iq_comp* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  br label %55

55:                                               ; preds = %34, %9
  ret void
}

declare dso_local i32 @BWN_PHY_WRITE(%struct.bwn_mac*, i32, i8*) #1

declare dso_local i8* @BWN_PHY_READ(%struct.bwn_mac*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
