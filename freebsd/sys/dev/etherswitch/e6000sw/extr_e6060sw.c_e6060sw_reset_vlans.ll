; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6060sw.c_e6060sw_reset_vlans.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6060sw.c_e6060sw_reset_vlans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e6060sw_softc = type { i32, i64, i64 }

@ETHERSWITCH_VLAN_PORT = common dso_local global i64 0, align 8
@CORE_REGISTER = common dso_local global i64 0, align 8
@PORT_VLAN_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @e6060sw_reset_vlans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e6060sw_reset_vlans(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e6060sw_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.e6060sw_softc* @device_get_softc(i32 %7)
  store %struct.e6060sw_softc* %8, %struct.e6060sw_softc** %3, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %60, %1
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %3, align 8
  %12 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sle i32 %10, %13
  br i1 %14, label %15, label %63

15:                                               ; preds = %9
  %16 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %3, align 8
  %17 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  %20 = shl i32 1, %19
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = shl i32 1, %22
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %3, align 8
  %28 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ETHERSWITCH_VLAN_PORT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %15
  %33 = load i32, i32* %5, align 4
  %34 = shl i32 %33, 12
  store i32 %34, i32* %6, align 4
  br label %43

35:                                               ; preds = %15
  %36 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %3, align 8
  %37 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 256, i32* %6, align 4
  br label %42

41:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %41, %40
  br label %43

43:                                               ; preds = %42, %32
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %2, align 4
  %48 = call i32 @device_get_parent(i32 %47)
  %49 = load i64, i64* @CORE_REGISTER, align 8
  %50 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %3, align 8
  %51 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %53, %55
  %57 = load i32, i32* @PORT_VLAN_MAP, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @MDIO_WRITEREG(i32 %48, i64 %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %43
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %9

63:                                               ; preds = %9
  ret void
}

declare dso_local %struct.e6060sw_softc* @device_get_softc(i32) #1

declare dso_local i32 @MDIO_WRITEREG(i32, i64, i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
