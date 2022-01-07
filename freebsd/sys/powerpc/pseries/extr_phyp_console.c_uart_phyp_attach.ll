; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_phyp_console.c_uart_phyp_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_phyp_console.c_uart_phyp_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_phyp_softc = type { i64, i32, i32, i32, i32, i32*, i64, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@uart_phyp_tty_class = common dso_local global i32 0, align 4
@MTX_SPIN = common dso_local global i32 0, align 4
@MTX_QUIET = common dso_local global i32 0, align 4
@MTX_NOWITNESS = common dso_local global i32 0, align 4
@console_sc = common dso_local global %struct.uart_phyp_softc* null, align 8
@uart_phyp_consdev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [7 x i8] c"ttyu%r\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@INTR_TYPE_TTY = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@uart_phyp_intr = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"u%r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @uart_phyp_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_phyp_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_phyp_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.uart_phyp_softc* @device_get_softc(i32 %5)
  store %struct.uart_phyp_softc* %6, %struct.uart_phyp_softc** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %3, align 8
  %9 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %8, i32 0, i32 10
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @ofw_bus_get_node(i32 %10)
  %12 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %3, align 8
  %13 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %12, i32 0, i32 9
  store i32 %11, i32* %13, align 8
  %14 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %3, align 8
  %15 = call i32 @uart_phyp_probe_node(%struct.uart_phyp_softc* %14)
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @device_get_unit(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %3, align 8
  %19 = call i32 @tty_alloc(i32* @uart_phyp_tty_class, %struct.uart_phyp_softc* %18)
  %20 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %3, align 8
  %21 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %3, align 8
  %23 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %22, i32 0, i32 8
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @device_get_nameunit(i32 %24)
  %26 = load i32, i32* @MTX_SPIN, align 4
  %27 = load i32, i32* @MTX_QUIET, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @MTX_NOWITNESS, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @mtx_init(i32* %23, i32 %25, i32* null, i32 %30)
  %32 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** @console_sc, align 8
  %33 = icmp ne %struct.uart_phyp_softc* %32, null
  br i1 %33, label %34, label %56

34:                                               ; preds = %1
  %35 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** @console_sc, align 8
  %36 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %3, align 8
  %39 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %34
  %43 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** @console_sc, align 8
  %44 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %3, align 8
  %47 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %46, i32 0, i32 7
  store i32 %45, i32* %47, align 8
  %48 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %3, align 8
  store %struct.uart_phyp_softc* %48, %struct.uart_phyp_softc** @console_sc, align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uart_phyp_consdev, i32 0, i32 0), align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @sprintf(i32 %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %3, align 8
  %53 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @tty_init_console(i32 %54, i32 0)
  br label %56

56:                                               ; preds = %42, %34, %1
  %57 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %3, align 8
  %58 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %57, i32 0, i32 6
  store i64 0, i64* %58, align 8
  %59 = load i32, i32* %2, align 4
  %60 = load i32, i32* @SYS_RES_IRQ, align 4
  %61 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %3, align 8
  %62 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %61, i32 0, i32 6
  %63 = load i32, i32* @RF_ACTIVE, align 4
  %64 = load i32, i32* @RF_SHAREABLE, align 4
  %65 = or i32 %63, %64
  %66 = call i32* @bus_alloc_resource_any(i32 %59, i32 %60, i64* %62, i32 %65)
  %67 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %3, align 8
  %68 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %67, i32 0, i32 5
  store i32* %66, i32** %68, align 8
  %69 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %3, align 8
  %70 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %69, i32 0, i32 5
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %86

73:                                               ; preds = %56
  %74 = load i32, i32* %2, align 4
  %75 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %3, align 8
  %76 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %75, i32 0, i32 5
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* @INTR_TYPE_TTY, align 4
  %79 = load i32, i32* @INTR_MPSAFE, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @uart_phyp_intr, align 4
  %82 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %3, align 8
  %83 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %3, align 8
  %84 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %83, i32 0, i32 4
  %85 = call i32 @bus_setup_intr(i32 %74, i32* %77, i32 %80, i32* null, i32 %81, %struct.uart_phyp_softc* %82, i32* %84)
  br label %110

86:                                               ; preds = %56
  %87 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %3, align 8
  %88 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %87, i32 0, i32 3
  %89 = call i32 @callout_init(i32* %88, i32 1)
  %90 = load i32, i32* @hz, align 4
  %91 = sdiv i32 %90, 20
  %92 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %3, align 8
  %93 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 8
  %94 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %3, align 8
  %95 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %96, 1
  br i1 %97, label %98, label %101

98:                                               ; preds = %86
  %99 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %3, align 8
  %100 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %99, i32 0, i32 1
  store i32 1, i32* %100, align 8
  br label %101

101:                                              ; preds = %98, %86
  %102 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %3, align 8
  %103 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %102, i32 0, i32 3
  %104 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %3, align 8
  %105 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @uart_phyp_intr, align 4
  %108 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %3, align 8
  %109 = call i32 @callout_reset(i32* %103, i32 %106, i32 %107, %struct.uart_phyp_softc* %108)
  br label %110

110:                                              ; preds = %101, %73
  %111 = load %struct.uart_phyp_softc*, %struct.uart_phyp_softc** %3, align 8
  %112 = getelementptr inbounds %struct.uart_phyp_softc, %struct.uart_phyp_softc* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @tty_makedev(i32 %113, i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  ret i32 0
}

declare dso_local %struct.uart_phyp_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @uart_phyp_probe_node(%struct.uart_phyp_softc*) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @tty_alloc(i32*, %struct.uart_phyp_softc*) #1

declare dso_local i32 @mtx_init(i32*, i32, i32*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @tty_init_console(i32, i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.uart_phyp_softc*, i32*) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.uart_phyp_softc*) #1

declare dso_local i32 @tty_makedev(i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
