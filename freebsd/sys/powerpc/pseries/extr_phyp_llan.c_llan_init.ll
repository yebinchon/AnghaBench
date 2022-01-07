; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_phyp_llan.c_llan_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_phyp_llan.c_llan_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llan_softc = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32*, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@H_FREE_LOGICAL_LAN = common dso_local global i32 0, align 4
@LLAN_BUFDESC_VALID = common dso_local global i32 0, align 4
@H_REGISTER_LOGICAL_LAN = common dso_local global i32 0, align 4
@LLAN_MAX_RX_PACKETS = common dso_local global i32 0, align 4
@H_VIO_SIGNAL = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @llan_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @llan_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.llan_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.llan_softc*
  store %struct.llan_softc* %9, %struct.llan_softc** %3, align 8
  %10 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %11 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %10, i32 0, i32 3
  %12 = call i32 @mtx_lock(i32* %11)
  %13 = load i32, i32* @H_FREE_LOGICAL_LAN, align 4
  %14 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %15 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = call i32 (i32, i32, ...) @phyp_hcall(i32 %13, i32 %16)
  %18 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %19 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %18, i32 0, i32 10
  store i64 0, i64* %19, align 8
  %20 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %21 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load i32, i32* @LLAN_BUFDESC_VALID, align 4
  store i32 %22, i32* %4, align 4
  %23 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %24 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 32
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %30 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %35 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %34, i32 0, i32 9
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @memcpy(i32* %5, i32 %36, i32 8)
  %38 = load i32, i32* @H_REGISTER_LOGICAL_LAN, align 4
  %39 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %40 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %43 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %47 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 (i32, i32, ...) @phyp_hcall(i32 %38, i32 %41, i32 %44, i32 %45, i32 %48, i32 %49)
  store i32 %50, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %64, %1
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @LLAN_MAX_RX_PACKETS, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %51
  %56 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %57 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %58 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %57, i32 0, i32 6
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = call i32 @llan_add_rxbuf(%struct.llan_softc* %56, i32* %62)
  br label %64

64:                                               ; preds = %55
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %51

67:                                               ; preds = %51
  %68 = load i32, i32* @H_VIO_SIGNAL, align 4
  %69 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %70 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (i32, i32, ...) @phyp_hcall(i32 %68, i32 %71, i32 1)
  %73 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %74 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %75 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %74, i32 0, i32 4
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %73
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %81 = xor i32 %80, -1
  %82 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %83 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %82, i32 0, i32 4
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, %81
  store i32 %87, i32* %85, align 4
  %88 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %89 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %88, i32 0, i32 3
  %90 = call i32 @mtx_unlock(i32* %89)
  %91 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %92 = call i32 @llan_intr(%struct.llan_softc* %91)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @phyp_hcall(i32, i32, ...) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @llan_add_rxbuf(%struct.llan_softc*, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @llan_intr(%struct.llan_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
