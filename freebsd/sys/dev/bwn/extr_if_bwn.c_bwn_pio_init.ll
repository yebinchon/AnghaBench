; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_pio_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_pio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bwn_pio }
%struct.bwn_pio = type { i32, i32, i32* }

@BWN_MACCTL = common dso_local global i32 0, align 4
@BWN_MACCTL_BIGENDIAN = common dso_local global i32 0, align 4
@BWN_SHARED = common dso_local global i32 0, align 4
@BWN_SHARED_RX_PADOFFSET = common dso_local global i32 0, align 4
@WME_AC_BK = common dso_local global i64 0, align 8
@WME_AC_BE = common dso_local global i64 0, align 8
@WME_AC_VI = common dso_local global i64 0, align 8
@WME_AC_VO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_pio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_pio_init(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_pio*, align 8
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %4 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %5 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store %struct.bwn_pio* %6, %struct.bwn_pio** %3, align 8
  %7 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %8 = load i32, i32* @BWN_MACCTL, align 4
  %9 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %10 = load i32, i32* @BWN_MACCTL, align 4
  %11 = call i32 @BWN_READ_4(%struct.bwn_mac* %9, i32 %10)
  %12 = load i32, i32* @BWN_MACCTL_BIGENDIAN, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  %15 = call i32 @BWN_WRITE_4(%struct.bwn_mac* %7, i32 %8, i32 %14)
  %16 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %17 = load i32, i32* @BWN_SHARED, align 4
  %18 = load i32, i32* @BWN_SHARED_RX_PADOFFSET, align 4
  %19 = call i32 @bwn_shm_write_2(%struct.bwn_mac* %16, i32 %17, i32 %18, i32 0)
  %20 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %21 = load %struct.bwn_pio*, %struct.bwn_pio** %3, align 8
  %22 = getelementptr inbounds %struct.bwn_pio, %struct.bwn_pio* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @WME_AC_BK, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = call i32 @bwn_pio_set_txqueue(%struct.bwn_mac* %20, i32* %25, i32 0)
  %27 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %28 = load %struct.bwn_pio*, %struct.bwn_pio** %3, align 8
  %29 = getelementptr inbounds %struct.bwn_pio, %struct.bwn_pio* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @WME_AC_BE, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = call i32 @bwn_pio_set_txqueue(%struct.bwn_mac* %27, i32* %32, i32 1)
  %34 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %35 = load %struct.bwn_pio*, %struct.bwn_pio** %3, align 8
  %36 = getelementptr inbounds %struct.bwn_pio, %struct.bwn_pio* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @WME_AC_VI, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = call i32 @bwn_pio_set_txqueue(%struct.bwn_mac* %34, i32* %39, i32 2)
  %41 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %42 = load %struct.bwn_pio*, %struct.bwn_pio** %3, align 8
  %43 = getelementptr inbounds %struct.bwn_pio, %struct.bwn_pio* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @WME_AC_VO, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = call i32 @bwn_pio_set_txqueue(%struct.bwn_mac* %41, i32* %46, i32 3)
  %48 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %49 = load %struct.bwn_pio*, %struct.bwn_pio** %3, align 8
  %50 = getelementptr inbounds %struct.bwn_pio, %struct.bwn_pio* %49, i32 0, i32 1
  %51 = call i32 @bwn_pio_set_txqueue(%struct.bwn_mac* %48, i32* %50, i32 4)
  %52 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %53 = load %struct.bwn_pio*, %struct.bwn_pio** %3, align 8
  %54 = getelementptr inbounds %struct.bwn_pio, %struct.bwn_pio* %53, i32 0, i32 0
  %55 = call i32 @bwn_pio_setupqueue_rx(%struct.bwn_mac* %52, i32* %54, i32 0)
  ret void
}

declare dso_local i32 @BWN_WRITE_4(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_READ_4(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_shm_write_2(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i32 @bwn_pio_set_txqueue(%struct.bwn_mac*, i32*, i32) #1

declare dso_local i32 @bwn_pio_setupqueue_rx(%struct.bwn_mac*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
