; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_miibus_linkchg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_miibus_linkchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgb_softc = type { i32, i32, i32, i32 }
%struct.mii_data = type { i32 }

@IFM_AVALID = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@LINK_STATE_UP = common dso_local global i32 0, align 4
@LINK_STATE_DOWN = common dso_local global i32 0, align 4
@LINK_STATE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mgb_miibus_linkchg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mgb_miibus_linkchg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mgb_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.mii_data* @device_get_softc(i32 %6)
  %8 = call %struct.mgb_softc* @iflib_get_softc(%struct.mii_data* %7)
  store %struct.mgb_softc* %8, %struct.mgb_softc** %3, align 8
  %9 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %10 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.mii_data* @device_get_softc(i32 %11)
  store %struct.mii_data* %12, %struct.mii_data** %4, align 8
  %13 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %14 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IFM_AVALID, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %1
  %20 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %21 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IFM_ACTIVE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @LINK_STATE_UP, align 4
  store i32 %27, i32* %5, align 4
  br label %30

28:                                               ; preds = %19
  %29 = load i32, i32* @LINK_STATE_DOWN, align 4
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %28, %26
  br label %33

31:                                               ; preds = %1
  %32 = load i32, i32* @LINK_STATE_UNKNOWN, align 4
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %31, %30
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %36 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %38 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %41 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %44 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @iflib_link_state_change(i32 %39, i32 %42, i32 %45)
  ret void
}

declare dso_local %struct.mgb_softc* @iflib_get_softc(%struct.mii_data*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @iflib_link_state_change(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
