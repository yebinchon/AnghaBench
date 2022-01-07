; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_console.c_uart_opal_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_console.c_uart_opal_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_opal_softc = type { i64, i32, i32, i32, i32, i32*, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@MTX_SPIN = common dso_local global i32 0, align 4
@MTX_QUIET = common dso_local global i32 0, align 4
@MTX_NOWITNESS = common dso_local global i32 0, align 4
@console_sc = common dso_local global %struct.uart_opal_softc* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"console\0A\00", align 1
@uart_opal_consdev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ttyu%r\00", align 1
@uart_opal_tty_class = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@INTR_TYPE_TTY = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@uart_opal_intr = common dso_local global i32 0, align 4
@CALLOUT_MPSAFE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"u%r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @uart_opal_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_opal_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_opal_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.uart_opal_softc* @device_get_softc(i32 %5)
  store %struct.uart_opal_softc* %6, %struct.uart_opal_softc** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @ofw_bus_get_node(i32 %7)
  %9 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** %3, align 8
  %10 = getelementptr inbounds %struct.uart_opal_softc, %struct.uart_opal_softc* %9, i32 0, i32 9
  store i32 %8, i32* %10, align 8
  %11 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** %3, align 8
  %12 = call i32 @uart_opal_probe_node(%struct.uart_opal_softc* %11)
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @device_get_unit(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** %3, align 8
  %16 = getelementptr inbounds %struct.uart_opal_softc, %struct.uart_opal_softc* %15, i32 0, i32 8
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @device_get_nameunit(i32 %17)
  %19 = load i32, i32* @MTX_SPIN, align 4
  %20 = load i32, i32* @MTX_QUIET, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @MTX_NOWITNESS, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @mtx_init(i32* %16, i32 %18, i32* null, i32 %23)
  %25 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** @console_sc, align 8
  %26 = icmp ne %struct.uart_opal_softc* %25, null
  br i1 %26, label %27, label %45

27:                                               ; preds = %1
  %28 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** @console_sc, align 8
  %29 = getelementptr inbounds %struct.uart_opal_softc, %struct.uart_opal_softc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** %3, align 8
  %32 = getelementptr inbounds %struct.uart_opal_softc, %struct.uart_opal_softc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %27
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @device_printf(i32 %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* %2, align 4
  %39 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** @console_sc, align 8
  %40 = call i32 @device_set_softc(i32 %38, %struct.uart_opal_softc* %39)
  %41 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** @console_sc, align 8
  store %struct.uart_opal_softc* %41, %struct.uart_opal_softc** %3, align 8
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uart_opal_consdev, i32 0, i32 0), align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @sprintf(i32 %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %35, %27, %1
  %46 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** %3, align 8
  %47 = call i32 @tty_alloc(i32* @uart_opal_tty_class, %struct.uart_opal_softc* %46)
  %48 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** %3, align 8
  %49 = getelementptr inbounds %struct.uart_opal_softc, %struct.uart_opal_softc* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** @console_sc, align 8
  %51 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** %3, align 8
  %52 = icmp eq %struct.uart_opal_softc* %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  %54 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** %3, align 8
  %55 = getelementptr inbounds %struct.uart_opal_softc, %struct.uart_opal_softc* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @tty_init_console(i32 %56, i32 0)
  br label %58

58:                                               ; preds = %53, %45
  %59 = load i32, i32* %2, align 4
  %60 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** %3, align 8
  %61 = getelementptr inbounds %struct.uart_opal_softc, %struct.uart_opal_softc* %60, i32 0, i32 7
  store i32 %59, i32* %61, align 8
  %62 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** %3, align 8
  %63 = getelementptr inbounds %struct.uart_opal_softc, %struct.uart_opal_softc* %62, i32 0, i32 6
  store i64 0, i64* %63, align 8
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* @SYS_RES_IRQ, align 4
  %66 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** %3, align 8
  %67 = getelementptr inbounds %struct.uart_opal_softc, %struct.uart_opal_softc* %66, i32 0, i32 6
  %68 = load i32, i32* @RF_ACTIVE, align 4
  %69 = load i32, i32* @RF_SHAREABLE, align 4
  %70 = or i32 %68, %69
  %71 = call i32* @bus_alloc_resource_any(i32 %64, i32 %65, i64* %67, i32 %70)
  %72 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** %3, align 8
  %73 = getelementptr inbounds %struct.uart_opal_softc, %struct.uart_opal_softc* %72, i32 0, i32 5
  store i32* %71, i32** %73, align 8
  %74 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** %3, align 8
  %75 = getelementptr inbounds %struct.uart_opal_softc, %struct.uart_opal_softc* %74, i32 0, i32 5
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %91

78:                                               ; preds = %58
  %79 = load i32, i32* %2, align 4
  %80 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** %3, align 8
  %81 = getelementptr inbounds %struct.uart_opal_softc, %struct.uart_opal_softc* %80, i32 0, i32 5
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* @INTR_TYPE_TTY, align 4
  %84 = load i32, i32* @INTR_MPSAFE, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @uart_opal_intr, align 4
  %87 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** %3, align 8
  %88 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** %3, align 8
  %89 = getelementptr inbounds %struct.uart_opal_softc, %struct.uart_opal_softc* %88, i32 0, i32 4
  %90 = call i32 @bus_setup_intr(i32 %79, i32* %82, i32 %85, i32* null, i32 %86, %struct.uart_opal_softc* %87, i32* %89)
  br label %116

91:                                               ; preds = %58
  %92 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** %3, align 8
  %93 = getelementptr inbounds %struct.uart_opal_softc, %struct.uart_opal_softc* %92, i32 0, i32 3
  %94 = load i32, i32* @CALLOUT_MPSAFE, align 4
  %95 = call i32 @callout_init(i32* %93, i32 %94)
  %96 = load i32, i32* @hz, align 4
  %97 = sdiv i32 %96, 20
  %98 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** %3, align 8
  %99 = getelementptr inbounds %struct.uart_opal_softc, %struct.uart_opal_softc* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 8
  %100 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** %3, align 8
  %101 = getelementptr inbounds %struct.uart_opal_softc, %struct.uart_opal_softc* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %102, 1
  br i1 %103, label %104, label %107

104:                                              ; preds = %91
  %105 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** %3, align 8
  %106 = getelementptr inbounds %struct.uart_opal_softc, %struct.uart_opal_softc* %105, i32 0, i32 1
  store i32 1, i32* %106, align 8
  br label %107

107:                                              ; preds = %104, %91
  %108 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** %3, align 8
  %109 = getelementptr inbounds %struct.uart_opal_softc, %struct.uart_opal_softc* %108, i32 0, i32 3
  %110 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** %3, align 8
  %111 = getelementptr inbounds %struct.uart_opal_softc, %struct.uart_opal_softc* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @uart_opal_intr, align 4
  %114 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** %3, align 8
  %115 = call i32 @callout_reset(i32* %109, i32 %112, i32 %113, %struct.uart_opal_softc* %114)
  br label %116

116:                                              ; preds = %107, %78
  %117 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** %3, align 8
  %118 = getelementptr inbounds %struct.uart_opal_softc, %struct.uart_opal_softc* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @tty_makedev(i32 %119, i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %120)
  ret i32 0
}

declare dso_local %struct.uart_opal_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @uart_opal_probe_node(%struct.uart_opal_softc*) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @device_set_softc(i32, %struct.uart_opal_softc*) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @tty_alloc(i32*, %struct.uart_opal_softc*) #1

declare dso_local i32 @tty_init_console(i32, i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.uart_opal_softc*, i32*) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.uart_opal_softc*) #1

declare dso_local i32 @tty_makedev(i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
