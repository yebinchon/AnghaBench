; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_phy_db.c_iwm_phy_db_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_phy_db.c_iwm_phy_db_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_phy_db = type { i32, i32, %struct.iwm_softc* }
%struct.iwm_softc = type { i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iwm_phy_db* @iwm_phy_db_init(%struct.iwm_softc* %0) #0 {
  %2 = alloca %struct.iwm_phy_db*, align 8
  %3 = alloca %struct.iwm_softc*, align 8
  %4 = alloca %struct.iwm_phy_db*, align 8
  store %struct.iwm_softc* %0, %struct.iwm_softc** %3, align 8
  %5 = load i32, i32* @M_DEVBUF, align 4
  %6 = load i32, i32* @M_NOWAIT, align 4
  %7 = load i32, i32* @M_ZERO, align 4
  %8 = or i32 %6, %7
  %9 = call %struct.iwm_phy_db* @malloc(i32 16, i32 %5, i32 %8)
  store %struct.iwm_phy_db* %9, %struct.iwm_phy_db** %4, align 8
  %10 = load %struct.iwm_phy_db*, %struct.iwm_phy_db** %4, align 8
  %11 = icmp ne %struct.iwm_phy_db* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load %struct.iwm_phy_db*, %struct.iwm_phy_db** %4, align 8
  store %struct.iwm_phy_db* %13, %struct.iwm_phy_db** %2, align 8
  br label %23

14:                                               ; preds = %1
  %15 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %16 = load %struct.iwm_phy_db*, %struct.iwm_phy_db** %4, align 8
  %17 = getelementptr inbounds %struct.iwm_phy_db, %struct.iwm_phy_db* %16, i32 0, i32 2
  store %struct.iwm_softc* %15, %struct.iwm_softc** %17, align 8
  %18 = load %struct.iwm_phy_db*, %struct.iwm_phy_db** %4, align 8
  %19 = getelementptr inbounds %struct.iwm_phy_db, %struct.iwm_phy_db* %18, i32 0, i32 0
  store i32 -1, i32* %19, align 8
  %20 = load %struct.iwm_phy_db*, %struct.iwm_phy_db** %4, align 8
  %21 = getelementptr inbounds %struct.iwm_phy_db, %struct.iwm_phy_db* %20, i32 0, i32 1
  store i32 -1, i32* %21, align 4
  %22 = load %struct.iwm_phy_db*, %struct.iwm_phy_db** %4, align 8
  store %struct.iwm_phy_db* %22, %struct.iwm_phy_db** %2, align 8
  br label %23

23:                                               ; preds = %14, %12
  %24 = load %struct.iwm_phy_db*, %struct.iwm_phy_db** %2, align 8
  ret %struct.iwm_phy_db* %24
}

declare dso_local %struct.iwm_phy_db* @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
