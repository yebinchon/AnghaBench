; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_mdio.c_thunder_mdio_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_mdio.c_thunder_mdio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thunder_mdio_softc = type { i32, i32*, i32 }

@REG_BASE_RID = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Could not allocate memory\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"ThunderX MDIO lock\00", align 1
@SMI_EN = common dso_local global i32 0, align 4
@SMI_EN_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thunder_mdio_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.thunder_mdio_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.thunder_mdio_softc* @device_get_softc(i32 %6)
  store %struct.thunder_mdio_softc* %7, %struct.thunder_mdio_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.thunder_mdio_softc*, %struct.thunder_mdio_softc** %4, align 8
  %10 = getelementptr inbounds %struct.thunder_mdio_softc, %struct.thunder_mdio_softc* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* @REG_BASE_RID, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @SYS_RES_MEMORY, align 4
  %14 = load i32, i32* @RF_ACTIVE, align 4
  %15 = call i32* @bus_alloc_resource_any(i32 %12, i32 %13, i32* %5, i32 %14)
  %16 = load %struct.thunder_mdio_softc*, %struct.thunder_mdio_softc** %4, align 8
  %17 = getelementptr inbounds %struct.thunder_mdio_softc, %struct.thunder_mdio_softc* %16, i32 0, i32 1
  store i32* %15, i32** %17, align 8
  %18 = load %struct.thunder_mdio_softc*, %struct.thunder_mdio_softc** %4, align 8
  %19 = getelementptr inbounds %struct.thunder_mdio_softc, %struct.thunder_mdio_softc* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @device_printf(i32 %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %2, align 4
  br label %36

26:                                               ; preds = %1
  %27 = load %struct.thunder_mdio_softc*, %struct.thunder_mdio_softc** %4, align 8
  %28 = getelementptr inbounds %struct.thunder_mdio_softc, %struct.thunder_mdio_softc* %27, i32 0, i32 0
  %29 = call i32 @TAILQ_INIT(i32* %28)
  %30 = load %struct.thunder_mdio_softc*, %struct.thunder_mdio_softc** %4, align 8
  %31 = call i32 @MDIO_LOCK_INIT(%struct.thunder_mdio_softc* %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.thunder_mdio_softc*, %struct.thunder_mdio_softc** %4, align 8
  %33 = load i32, i32* @SMI_EN, align 4
  %34 = load i32, i32* @SMI_EN_EN, align 4
  %35 = call i32 @mdio_reg_write(%struct.thunder_mdio_softc* %32, i32 %33, i32 %34)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %26, %22
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.thunder_mdio_softc* @device_get_softc(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @MDIO_LOCK_INIT(%struct.thunder_mdio_softc*, i8*) #1

declare dso_local i32 @mdio_reg_write(%struct.thunder_mdio_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
