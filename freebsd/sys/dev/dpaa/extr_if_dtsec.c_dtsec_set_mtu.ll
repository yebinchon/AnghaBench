; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec.c_dtsec_set_mtu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec.c_dtsec_set_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtsec_softc = type { i32 }

@ETHER_HDR_LEN = common dso_local global i64 0, align 8
@ETHER_VLAN_ENCAP_LEN = common dso_local global i64 0, align 8
@ETHER_CRC_LEN = common dso_local global i64 0, align 8
@DTSEC_MIN_FRAME_SIZE = common dso_local global i32 0, align 4
@DTSEC_MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@DTSEC_REG_MAXFRM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dtsec_softc*, i32)* @dtsec_set_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtsec_set_mtu(%struct.dtsec_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dtsec_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.dtsec_softc* %0, %struct.dtsec_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i64, i64* @ETHER_HDR_LEN, align 8
  %7 = load i64, i64* @ETHER_VLAN_ENCAP_LEN, align 8
  %8 = add nsw i64 %6, %7
  %9 = load i64, i64* @ETHER_CRC_LEN, align 8
  %10 = add nsw i64 %8, %9
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = add nsw i64 %12, %10
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %5, align 4
  %15 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %16 = call i32 @DTSEC_LOCK_ASSERT(%struct.dtsec_softc* %15)
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @DTSEC_MIN_FRAME_SIZE, align 4
  %19 = icmp uge i32 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @DTSEC_MAX_FRAME_SIZE, align 4
  %23 = icmp ule i32 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load %struct.dtsec_softc*, %struct.dtsec_softc** %4, align 8
  %26 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DTSEC_REG_MAXFRM, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @bus_write_4(i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %3, align 4
  br label %33

32:                                               ; preds = %20, %2
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %24
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @DTSEC_LOCK_ASSERT(%struct.dtsec_softc*) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
