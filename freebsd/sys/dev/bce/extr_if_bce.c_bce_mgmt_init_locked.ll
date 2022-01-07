; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_mgmt_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_mgmt_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bce_softc = type { i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@BCE_VERBOSE_RESET = common dso_local global i32 0, align 4
@BCE_MFW_ENABLE_FLAG = common dso_local global i32 0, align 4
@BCE_VERBOSE_SPECIAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"No management firmware running...\0A\00", align 1
@BCE_MISC_ENABLE_SET_BITS = common dso_local global i32 0, align 4
@BCE_MISC_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bce_softc*)* @bce_mgmt_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bce_mgmt_init_locked(%struct.bce_softc* %0) #0 {
  %2 = alloca %struct.bce_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  store %struct.bce_softc* %0, %struct.bce_softc** %2, align 8
  %4 = load i32, i32* @BCE_VERBOSE_RESET, align 4
  %5 = call i32 @DBENTER(i32 %4)
  %6 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %7 = call i32 @BCE_LOCK_ASSERT(%struct.bce_softc* %6)
  %8 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %9 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @BCE_MFW_ENABLE_FLAG, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %16 = load i32, i32* @BCE_VERBOSE_SPECIAL, align 4
  %17 = call i32 @DBPRINT(%struct.bce_softc* %15, i32 %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %32

18:                                               ; preds = %1
  %19 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %20 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %19, i32 0, i32 1
  %21 = load %struct.ifnet*, %struct.ifnet** %20, align 8
  store %struct.ifnet* %21, %struct.ifnet** %3, align 8
  %22 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %23 = load i32, i32* @BCE_MISC_ENABLE_SET_BITS, align 4
  %24 = load i32, i32* @BCE_MISC_ENABLE_DEFAULT, align 4
  %25 = call i32 @REG_WR(%struct.bce_softc* %22, i32 %23, i32 %24)
  %26 = load %struct.bce_softc*, %struct.bce_softc** %2, align 8
  %27 = load i32, i32* @BCE_MISC_ENABLE_SET_BITS, align 4
  %28 = call i32 @REG_RD(%struct.bce_softc* %26, i32 %27)
  %29 = call i32 @DELAY(i32 20)
  %30 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %31 = call i32 @bce_ifmedia_upd_locked(%struct.ifnet* %30)
  br label %32

32:                                               ; preds = %18, %14
  %33 = load i32, i32* @BCE_VERBOSE_RESET, align 4
  %34 = call i32 @DBEXIT(i32 %33)
  ret void
}

declare dso_local i32 @DBENTER(i32) #1

declare dso_local i32 @BCE_LOCK_ASSERT(%struct.bce_softc*) #1

declare dso_local i32 @DBPRINT(%struct.bce_softc*, i32, i8*) #1

declare dso_local i32 @REG_WR(%struct.bce_softc*, i32, i32) #1

declare dso_local i32 @REG_RD(%struct.bce_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @bce_ifmedia_upd_locked(%struct.ifnet*) #1

declare dso_local i32 @DBEXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
