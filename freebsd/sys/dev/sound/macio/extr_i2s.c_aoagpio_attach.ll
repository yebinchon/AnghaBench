; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_i2s.c_aoagpio_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_i2s.c_aoagpio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aoagpio_softc = type { i32 }
%struct.resource = type { i32 }

@GPIO_CTRL_EXTINT_SET = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"interrupting at irq %d\0A\00", align 1
@INTR_TRIGGER_EDGE = common dso_local global i32 0, align 4
@INTR_POLARITY_LOW = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_ENTROPY = common dso_local global i32 0, align 4
@aoagpio_int = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @aoagpio_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aoagpio_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.aoagpio_softc*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.aoagpio_softc* @device_get_softc(i32 %9)
  store %struct.aoagpio_softc* %10, %struct.aoagpio_softc** %4, align 8
  %11 = load %struct.aoagpio_softc*, %struct.aoagpio_softc** %4, align 8
  %12 = getelementptr inbounds %struct.aoagpio_softc, %struct.aoagpio_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 1, %13
  %15 = load i32, i32* @GPIO_CTRL_EXTINT_SET, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %52

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @SYS_RES_IRQ, align 4
  %21 = load i32, i32* @RF_ACTIVE, align 4
  %22 = call %struct.resource* @bus_alloc_resource_any(i32 %19, i32 %20, i32* %8, i32 %21)
  store %struct.resource* %22, %struct.resource** %5, align 8
  %23 = load %struct.resource*, %struct.resource** %5, align 8
  %24 = icmp eq %struct.resource* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %2, align 4
  br label %53

27:                                               ; preds = %18
  %28 = load %struct.resource*, %struct.resource** %5, align 8
  %29 = call i32 @rman_get_start(%struct.resource* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @DPRINTF(i8* %32)
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @INTR_TRIGGER_EDGE, align 4
  %36 = load i32, i32* @INTR_POLARITY_LOW, align 4
  %37 = call i64 @powerpc_config_intr(i32 %34, i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = load i32, i32* @ENXIO, align 4
  store i32 %40, i32* %2, align 4
  br label %53

41:                                               ; preds = %27
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.resource*, %struct.resource** %5, align 8
  %44 = load i32, i32* @INTR_TYPE_MISC, align 4
  %45 = load i32, i32* @INTR_MPSAFE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @INTR_ENTROPY, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @aoagpio_int, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @bus_setup_intr(i32 %42, %struct.resource* %43, i32 %48, i32* null, i32 %49, i32 %50, i8** %6)
  br label %52

52:                                               ; preds = %41, %1
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %39, %25
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.aoagpio_softc* @device_get_softc(i32) #1

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i64 @powerpc_config_intr(i32, i32, i32) #1

declare dso_local i32 @bus_setup_intr(i32, %struct.resource*, i32, i32*, i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
