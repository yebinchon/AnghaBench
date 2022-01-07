; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_link_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_link_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"Bootcode is missing - cannot reset link\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_link_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_link_reset(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %3 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %4 = call i32 @BXE_NOMCP(%struct.bxe_softc* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %1
  %7 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %8 = call i32 @bxe_acquire_phy_lock(%struct.bxe_softc* %7)
  %9 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %10 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %9, i32 0, i32 1
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %12 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %11, i32 0, i32 0
  %13 = call i32 @elink_lfa_reset(i32* %10, i32* %12)
  %14 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %15 = call i32 @bxe_release_phy_lock(%struct.bxe_softc* %14)
  br label %24

16:                                               ; preds = %1
  %17 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %18 = call i32 @CHIP_REV_IS_SLOW(%struct.bxe_softc* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %22 = call i32 @BLOGW(%struct.bxe_softc* %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %16
  br label %24

24:                                               ; preds = %23, %6
  ret void
}

declare dso_local i32 @BXE_NOMCP(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_acquire_phy_lock(%struct.bxe_softc*) #1

declare dso_local i32 @elink_lfa_reset(i32*, i32*) #1

declare dso_local i32 @bxe_release_phy_lock(%struct.bxe_softc*) #1

declare dso_local i32 @CHIP_REV_IS_SLOW(%struct.bxe_softc*) #1

declare dso_local i32 @BLOGW(%struct.bxe_softc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
