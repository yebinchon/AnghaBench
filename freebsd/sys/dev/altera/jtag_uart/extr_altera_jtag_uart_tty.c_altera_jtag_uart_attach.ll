; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/jtag_uart/extr_altera_jtag_uart_tty.c_altera_jtag_uart_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/jtag_uart/extr_altera_jtag_uart_tty.c_altera_jtag_uart_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_jtag_uart_softc = type { i32, i32, i32, i32*, i32, %struct.tty*, i32, i32, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32 }
%struct.tty = type { i32 }

@BERI_UART_BASE = common dso_local global i64 0, align 8
@aju_cons_lock = common dso_local global i32 0, align 4
@aju_cons_buffer_valid = common dso_local global i32 0, align 4
@aju_cons_buffer_data = common dso_local global i32 0, align 4
@aju_cons_jtag_present = common dso_local global i32 0, align 4
@aju_cons_jtag_missed = common dso_local global i32 0, align 4
@ALTERA_JTAG_UART_FLAG_CONSOLE = common dso_local global i32 0, align 4
@INTR_ENTROPY = common dso_local global i32 0, align 4
@INTR_TYPE_TTY = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@aju_intr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not activate interrupt\0A\00", align 1
@aju_ttydevsw = common dso_local global i32 0, align 4
@aju_cons_sc = common dso_local global %struct.altera_jtag_uart_softc* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@AJU_TTYNAME = common dso_local global i32 0, align 4
@AJU_IO_POLLINTERVAL = common dso_local global i32 0, align 4
@aju_io_callout = common dso_local global i32 0, align 4
@AJU_AC_POLLINTERVAL = common dso_local global i32 0, align 4
@aju_ac_callout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @altera_jtag_uart_attach(%struct.altera_jtag_uart_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.altera_jtag_uart_softc*, align 8
  %4 = alloca %struct.tty*, align 8
  %5 = alloca i32, align 4
  store %struct.altera_jtag_uart_softc* %0, %struct.altera_jtag_uart_softc** %3, align 8
  %6 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %7 = call i32 @AJU_LOCK_INIT(%struct.altera_jtag_uart_softc* %6)
  %8 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %9 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %8, i32 0, i32 18
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @rman_get_start(i32 %10)
  %12 = load i64, i64* @BERI_UART_BASE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %1
  %15 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %16 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %15, i32 0, i32 17
  store i32* @aju_cons_lock, i32** %16, align 8
  %17 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %18 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %17, i32 0, i32 15
  store i32* @aju_cons_buffer_valid, i32** %18, align 8
  %19 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %20 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %19, i32 0, i32 13
  store i32* @aju_cons_buffer_data, i32** %20, align 8
  %21 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %22 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %21, i32 0, i32 11
  store i32* @aju_cons_jtag_present, i32** %22, align 8
  %23 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %24 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %23, i32 0, i32 9
  store i32* @aju_cons_jtag_missed, i32** %24, align 8
  %25 = load i32, i32* @ALTERA_JTAG_UART_FLAG_CONSOLE, align 4
  %26 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %27 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  br label %51

30:                                               ; preds = %1
  %31 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %32 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %31, i32 0, i32 16
  %33 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %34 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %33, i32 0, i32 17
  store i32* %32, i32** %34, align 8
  %35 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %36 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %35, i32 0, i32 14
  %37 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %38 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %37, i32 0, i32 15
  store i32* %36, i32** %38, align 8
  %39 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %40 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %39, i32 0, i32 12
  %41 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %42 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %41, i32 0, i32 13
  store i32* %40, i32** %42, align 8
  %43 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %44 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %43, i32 0, i32 10
  %45 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %46 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %45, i32 0, i32 11
  store i32* %44, i32** %46, align 8
  %47 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %48 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %47, i32 0, i32 8
  %49 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %50 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %49, i32 0, i32 9
  store i32* %48, i32** %50, align 8
  br label %51

51:                                               ; preds = %30, %14
  %52 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %53 = call i32 @AJU_LOCK(%struct.altera_jtag_uart_softc* %52)
  %54 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %55 = call i32 @aju_intr_disable(%struct.altera_jtag_uart_softc* %54)
  %56 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %57 = call i32 @AJU_UNLOCK(%struct.altera_jtag_uart_softc* %56)
  %58 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %59 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %90

62:                                               ; preds = %51
  %63 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %64 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %67 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* @INTR_ENTROPY, align 4
  %70 = load i32, i32* @INTR_TYPE_TTY, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @INTR_MPSAFE, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @aju_intr, align 4
  %75 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %76 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %77 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %76, i32 0, i32 7
  %78 = call i32 @bus_setup_intr(i32 %65, i32* %68, i32 %73, i32* null, i32 %74, %struct.altera_jtag_uart_softc* %75, i32* %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %62
  %82 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %83 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @device_printf(i32 %84, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %86 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %87 = call i32 @AJU_LOCK_DESTROY(%struct.altera_jtag_uart_softc* %86)
  %88 = load i32, i32* %5, align 4
  store i32 %88, i32* %2, align 4
  br label %143

89:                                               ; preds = %62
  br label %90

90:                                               ; preds = %89, %51
  %91 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %92 = call %struct.tty* @tty_alloc(i32* @aju_ttydevsw, %struct.altera_jtag_uart_softc* %91)
  %93 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %94 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %93, i32 0, i32 5
  store %struct.tty* %92, %struct.tty** %94, align 8
  store %struct.tty* %92, %struct.tty** %4, align 8
  %95 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %96 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @ALTERA_JTAG_UART_FLAG_CONSOLE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %90
  %102 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  store %struct.altera_jtag_uart_softc* %102, %struct.altera_jtag_uart_softc** @aju_cons_sc, align 8
  %103 = load %struct.tty*, %struct.tty** %4, align 8
  %104 = call i32 @tty_init_console(%struct.tty* %103, i32 0)
  br label %105

105:                                              ; preds = %101, %90
  %106 = load %struct.tty*, %struct.tty** %4, align 8
  %107 = load i32, i32* @AJU_TTYNAME, align 4
  %108 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %109 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @tty_makedev(%struct.tty* %106, i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %107, i32 %110)
  %112 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %113 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %112, i32 0, i32 3
  %114 = load i32*, i32** %113, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %123

116:                                              ; preds = %105
  %117 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %118 = call i32 @AJU_LOCK(%struct.altera_jtag_uart_softc* %117)
  %119 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %120 = call i32 @aju_intr_readable_enable(%struct.altera_jtag_uart_softc* %119)
  %121 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %122 = call i32 @AJU_UNLOCK(%struct.altera_jtag_uart_softc* %121)
  br label %133

123:                                              ; preds = %105
  %124 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %125 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %124, i32 0, i32 2
  %126 = call i32 @callout_init(i32* %125, i32 1)
  %127 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %128 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %127, i32 0, i32 2
  %129 = load i32, i32* @AJU_IO_POLLINTERVAL, align 4
  %130 = load i32, i32* @aju_io_callout, align 4
  %131 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %132 = call i32 @callout_reset(i32* %128, i32 %129, i32 %130, %struct.altera_jtag_uart_softc* %131)
  br label %133

133:                                              ; preds = %123, %116
  %134 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %135 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %134, i32 0, i32 1
  %136 = call i32 @callout_init(i32* %135, i32 1)
  %137 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %138 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %137, i32 0, i32 1
  %139 = load i32, i32* @AJU_AC_POLLINTERVAL, align 4
  %140 = load i32, i32* @aju_ac_callout, align 4
  %141 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %142 = call i32 @callout_reset(i32* %138, i32 %139, i32 %140, %struct.altera_jtag_uart_softc* %141)
  store i32 0, i32* %2, align 4
  br label %143

143:                                              ; preds = %133, %81
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i32 @AJU_LOCK_INIT(%struct.altera_jtag_uart_softc*) #1

declare dso_local i64 @rman_get_start(i32) #1

declare dso_local i32 @AJU_LOCK(%struct.altera_jtag_uart_softc*) #1

declare dso_local i32 @aju_intr_disable(%struct.altera_jtag_uart_softc*) #1

declare dso_local i32 @AJU_UNLOCK(%struct.altera_jtag_uart_softc*) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.altera_jtag_uart_softc*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @AJU_LOCK_DESTROY(%struct.altera_jtag_uart_softc*) #1

declare dso_local %struct.tty* @tty_alloc(i32*, %struct.altera_jtag_uart_softc*) #1

declare dso_local i32 @tty_init_console(%struct.tty*, i32) #1

declare dso_local i32 @tty_makedev(%struct.tty*, i32*, i8*, i32, i32) #1

declare dso_local i32 @aju_intr_readable_enable(%struct.altera_jtag_uart_softc*) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.altera_jtag_uart_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
