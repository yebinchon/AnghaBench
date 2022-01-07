; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_setmulti.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_setmulti.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.ti_cmd_desc = type { i32 }

@IFF_ALLMULTI = common dso_local global i32 0, align 4
@TI_CMD_SET_ALLMULTI = common dso_local global i32 0, align 4
@TI_CMD_CODE_ALLMULTI_ENB = common dso_local global i32 0, align 4
@TI_CMD_CODE_ALLMULTI_DIS = common dso_local global i32 0, align 4
@TI_MB_HOSTINTR = common dso_local global i32 0, align 4
@ti_del_mcast = common dso_local global i32 0, align 4
@ti_add_mcast = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ti_softc*)* @ti_setmulti to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_setmulti(%struct.ti_softc* %0) #0 {
  %2 = alloca %struct.ti_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ti_cmd_desc, align 4
  %5 = alloca i32, align 4
  store %struct.ti_softc* %0, %struct.ti_softc** %2, align 8
  %6 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %7 = call i32 @TI_LOCK_ASSERT(%struct.ti_softc* %6)
  %8 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %9 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %8, i32 0, i32 0
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %3, align 8
  %11 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IFF_ALLMULTI, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @TI_CMD_SET_ALLMULTI, align 4
  %19 = load i32, i32* @TI_CMD_CODE_ALLMULTI_ENB, align 4
  %20 = call i32 @TI_DO_CMD(i32 %18, i32 %19, i32 0)
  br label %44

21:                                               ; preds = %1
  %22 = load i32, i32* @TI_CMD_SET_ALLMULTI, align 4
  %23 = load i32, i32* @TI_CMD_CODE_ALLMULTI_DIS, align 4
  %24 = call i32 @TI_DO_CMD(i32 %22, i32 %23, i32 0)
  br label %25

25:                                               ; preds = %21
  %26 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %27 = load i32, i32* @TI_MB_HOSTINTR, align 4
  %28 = call i32 @CSR_READ_4(%struct.ti_softc* %26, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %30 = load i32, i32* @TI_MB_HOSTINTR, align 4
  %31 = call i32 @CSR_WRITE_4(%struct.ti_softc* %29, i32 %30, i32 1)
  %32 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %33 = load i32, i32* @ti_del_mcast, align 4
  %34 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %35 = call i32 @if_foreach_llmaddr(%struct.ifnet* %32, i32 %33, %struct.ti_softc* %34)
  %36 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %37 = load i32, i32* @ti_add_mcast, align 4
  %38 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %39 = call i32 @if_foreach_llmaddr(%struct.ifnet* %36, i32 %37, %struct.ti_softc* %38)
  %40 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %41 = load i32, i32* @TI_MB_HOSTINTR, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @CSR_WRITE_4(%struct.ti_softc* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %25, %17
  ret void
}

declare dso_local i32 @TI_LOCK_ASSERT(%struct.ti_softc*) #1

declare dso_local i32 @TI_DO_CMD(i32, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.ti_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.ti_softc*, i32, i32) #1

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, %struct.ti_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
