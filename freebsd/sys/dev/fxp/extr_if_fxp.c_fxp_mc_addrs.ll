; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_mc_addrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_mc_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fxp_softc = type { i32, %struct.fxp_cb_mcs* }
%struct.fxp_cb_mcs = type { i32 }

@IFF_ALLMULTI = common dso_local global i32 0, align 4
@fxp_setup_maddr = common dso_local global i32 0, align 4
@MAXMCADDR = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fxp_softc*)* @fxp_mc_addrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fxp_mc_addrs(%struct.fxp_softc* %0) #0 {
  %2 = alloca %struct.fxp_softc*, align 8
  %3 = alloca %struct.fxp_cb_mcs*, align 8
  %4 = alloca i32, align 4
  store %struct.fxp_softc* %0, %struct.fxp_softc** %2, align 8
  %5 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %6 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %5, i32 0, i32 1
  %7 = load %struct.fxp_cb_mcs*, %struct.fxp_cb_mcs** %6, align 8
  store %struct.fxp_cb_mcs* %7, %struct.fxp_cb_mcs** %3, align 8
  %8 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %9 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @if_getflags(i32 %11)
  %13 = load i32, i32* @IFF_ALLMULTI, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %1
  %17 = load %struct.fxp_cb_mcs*, %struct.fxp_cb_mcs** %3, align 8
  %18 = getelementptr inbounds %struct.fxp_cb_mcs, %struct.fxp_cb_mcs* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %20 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @fxp_setup_maddr, align 4
  %23 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %24 = call i32 @if_foreach_llmaddr(i32 %21, i32 %22, %struct.fxp_softc* %23)
  %25 = load %struct.fxp_cb_mcs*, %struct.fxp_cb_mcs** %3, align 8
  %26 = getelementptr inbounds %struct.fxp_cb_mcs, %struct.fxp_cb_mcs* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MAXMCADDR, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %16
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @IFF_ALLMULTI, align 4
  %33 = call i32 @if_setflagbits(i32 %31, i32 %32, i32 0)
  %34 = load %struct.fxp_cb_mcs*, %struct.fxp_cb_mcs** %3, align 8
  %35 = getelementptr inbounds %struct.fxp_cb_mcs, %struct.fxp_cb_mcs* %34, i32 0, i32 0
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %30, %16
  br label %37

37:                                               ; preds = %36, %1
  %38 = load %struct.fxp_cb_mcs*, %struct.fxp_cb_mcs** %3, align 8
  %39 = getelementptr inbounds %struct.fxp_cb_mcs, %struct.fxp_cb_mcs* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %42 = mul nsw i32 %40, %41
  %43 = call i32 @htole16(i32 %42)
  %44 = load %struct.fxp_cb_mcs*, %struct.fxp_cb_mcs** %3, align 8
  %45 = getelementptr inbounds %struct.fxp_cb_mcs, %struct.fxp_cb_mcs* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  ret void
}

declare dso_local i32 @if_getflags(i32) #1

declare dso_local i32 @if_foreach_llmaddr(i32, i32, %struct.fxp_softc*) #1

declare dso_local i32 @if_setflagbits(i32, i32, i32) #1

declare dso_local i32 @htole16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
