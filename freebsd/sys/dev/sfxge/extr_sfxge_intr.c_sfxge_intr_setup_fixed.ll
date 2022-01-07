; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_intr.c_sfxge_intr_setup_fixed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_intr.c_sfxge_intr_setup_fixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { %struct.sfxge_intr, i32 }
%struct.sfxge_intr = type { i32, %struct.sfxge_intr_hdl*, i32 }
%struct.sfxge_intr_hdl = type { i32, %struct.resource* }
%struct.resource = type { i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@M_SFXGE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@EFX_INTR_LINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfxge_softc*)* @sfxge_intr_setup_fixed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfxge_intr_setup_fixed(%struct.sfxge_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sfxge_softc*, align 8
  %4 = alloca %struct.sfxge_intr_hdl*, align 8
  %5 = alloca %struct.sfxge_intr*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %3, align 8
  %9 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %10 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %13 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %12, i32 0, i32 0
  store %struct.sfxge_intr* %13, %struct.sfxge_intr** %5, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @SYS_RES_IRQ, align 4
  %16 = load i32, i32* @RF_SHAREABLE, align 4
  %17 = load i32, i32* @RF_ACTIVE, align 4
  %18 = or i32 %16, %17
  %19 = call %struct.resource* @bus_alloc_resource_any(i32 %14, i32 %15, i32* %8, i32 %18)
  store %struct.resource* %19, %struct.resource** %6, align 8
  %20 = load %struct.resource*, %struct.resource** %6, align 8
  %21 = icmp eq %struct.resource* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  store i32 %23, i32* %2, align 4
  br label %44

24:                                               ; preds = %1
  %25 = load i32, i32* @M_SFXGE, align 4
  %26 = load i32, i32* @M_WAITOK, align 4
  %27 = call %struct.sfxge_intr_hdl* @malloc(i32 16, i32 %25, i32 %26)
  store %struct.sfxge_intr_hdl* %27, %struct.sfxge_intr_hdl** %4, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.sfxge_intr_hdl*, %struct.sfxge_intr_hdl** %4, align 8
  %30 = getelementptr inbounds %struct.sfxge_intr_hdl, %struct.sfxge_intr_hdl* %29, i64 0
  %31 = getelementptr inbounds %struct.sfxge_intr_hdl, %struct.sfxge_intr_hdl* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load %struct.resource*, %struct.resource** %6, align 8
  %33 = load %struct.sfxge_intr_hdl*, %struct.sfxge_intr_hdl** %4, align 8
  %34 = getelementptr inbounds %struct.sfxge_intr_hdl, %struct.sfxge_intr_hdl* %33, i64 0
  %35 = getelementptr inbounds %struct.sfxge_intr_hdl, %struct.sfxge_intr_hdl* %34, i32 0, i32 1
  store %struct.resource* %32, %struct.resource** %35, align 8
  %36 = load i32, i32* @EFX_INTR_LINE, align 4
  %37 = load %struct.sfxge_intr*, %struct.sfxge_intr** %5, align 8
  %38 = getelementptr inbounds %struct.sfxge_intr, %struct.sfxge_intr* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.sfxge_intr*, %struct.sfxge_intr** %5, align 8
  %40 = getelementptr inbounds %struct.sfxge_intr, %struct.sfxge_intr* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load %struct.sfxge_intr_hdl*, %struct.sfxge_intr_hdl** %4, align 8
  %42 = load %struct.sfxge_intr*, %struct.sfxge_intr** %5, align 8
  %43 = getelementptr inbounds %struct.sfxge_intr, %struct.sfxge_intr* %42, i32 0, i32 1
  store %struct.sfxge_intr_hdl* %41, %struct.sfxge_intr_hdl** %43, align 8
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %24, %22
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local %struct.sfxge_intr_hdl* @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
