; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_8483x_enable_eee.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_8483x_enable_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_phy = type { i32 }
%struct.elink_params = type { %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }
%struct.elink_vars = type { i32 }

@PHY848xx_CMD_SET_EEE_MODE = common dso_local global i32 0, align 4
@PHY84833_MB_PROCESS1 = common dso_local global i32 0, align 4
@ELINK_STATUS_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"EEE enable failed.\0A\00", align 1
@SHMEM_EEE_10G_ADV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.elink_phy*, %struct.elink_params*, %struct.elink_vars*)* @elink_8483x_enable_eee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @elink_8483x_enable_eee(%struct.elink_phy* %0, %struct.elink_params* %1, %struct.elink_vars* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.elink_phy*, align 8
  %6 = alloca %struct.elink_params*, align 8
  %7 = alloca %struct.elink_vars*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.bxe_softc*, align 8
  %10 = alloca i32, align 4
  store %struct.elink_phy* %0, %struct.elink_phy** %5, align 8
  store %struct.elink_params* %1, %struct.elink_params** %6, align 8
  store %struct.elink_vars* %2, %struct.elink_vars** %7, align 8
  %11 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %12 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %11, i32 0, i32 0
  %13 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  store %struct.bxe_softc* %13, %struct.bxe_softc** %9, align 8
  store i32 1, i32* %10, align 4
  %14 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %15 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %16 = load i32, i32* @PHY848xx_CMD_SET_EEE_MODE, align 4
  %17 = load i32, i32* @PHY84833_MB_PROCESS1, align 4
  %18 = call i64 @elink_848xx_cmd_hdlr(%struct.elink_phy* %14, %struct.elink_params* %15, i32 %16, i32* %10, i32 1, i32 %17)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @ELINK_STATUS_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load %struct.bxe_softc*, %struct.bxe_softc** %9, align 8
  %24 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %25 = load i64, i64* %8, align 8
  store i64 %25, i64* %4, align 8
  br label %32

26:                                               ; preds = %3
  %27 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %28 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %29 = load %struct.elink_vars*, %struct.elink_vars** %7, align 8
  %30 = load i32, i32* @SHMEM_EEE_10G_ADV, align 4
  %31 = call i64 @elink_eee_advertise(%struct.elink_phy* %27, %struct.elink_params* %28, %struct.elink_vars* %29, i32 %30)
  store i64 %31, i64* %4, align 8
  br label %32

32:                                               ; preds = %26, %22
  %33 = load i64, i64* %4, align 8
  ret i64 %33
}

declare dso_local i64 @elink_848xx_cmd_hdlr(%struct.elink_phy*, %struct.elink_params*, i32, i32*, i32, i32) #1

declare dso_local i32 @ELINK_DEBUG_P0(%struct.bxe_softc*, i8*) #1

declare dso_local i64 @elink_eee_advertise(%struct.elink_phy*, %struct.elink_params*, %struct.elink_vars*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
