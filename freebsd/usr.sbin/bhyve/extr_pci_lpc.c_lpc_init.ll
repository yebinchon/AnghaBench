; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_lpc.c_lpc_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_lpc.c_lpc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc_uart_softc = type { i8*, i32, i32, i32, i32 }
%struct.vmctx = type { i32 }
%struct.inout_port = type { i8*, %struct.lpc_uart_softc*, i32, i32, i32, i32 }

@romfile = common dso_local global i32* null, align 8
@LPC_UART_NUM = common dso_local global i32 0, align 4
@lpc_uart_softc = common dso_local global %struct.lpc_uart_softc* null, align 8
@lpc_uart_names = common dso_local global i8** null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Unable to allocate resources for LPC device %s\0A\00", align 1
@lpc_uart_intr_assert = common dso_local global i32 0, align 4
@lpc_uart_intr_deassert = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Unable to initialize backend '%s' for LPC device %s\0A\00", align 1
@UART_IO_BAR_SIZE = common dso_local global i32 0, align 4
@IOPORT_F_INOUT = common dso_local global i32 0, align 4
@lpc_uart_io_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*)* @lpc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc_init(%struct.vmctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmctx*, align 8
  %4 = alloca %struct.lpc_uart_softc*, align 8
  %5 = alloca %struct.inout_port, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %3, align 8
  %9 = load i32*, i32** @romfile, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %13 = load i32*, i32** @romfile, align 8
  %14 = call i32 @bootrom_init(%struct.vmctx* %12, i32* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %2, align 4
  br label %99

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %19, %1
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %95, %20
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @LPC_UART_NUM, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %98

25:                                               ; preds = %21
  %26 = load %struct.lpc_uart_softc*, %struct.lpc_uart_softc** @lpc_uart_softc, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.lpc_uart_softc, %struct.lpc_uart_softc* %26, i64 %28
  store %struct.lpc_uart_softc* %29, %struct.lpc_uart_softc** %4, align 8
  %30 = load i8**, i8*** @lpc_uart_names, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.lpc_uart_softc*, %struct.lpc_uart_softc** %4, align 8
  %37 = getelementptr inbounds %struct.lpc_uart_softc, %struct.lpc_uart_softc* %36, i32 0, i32 2
  %38 = load %struct.lpc_uart_softc*, %struct.lpc_uart_softc** %4, align 8
  %39 = getelementptr inbounds %struct.lpc_uart_softc, %struct.lpc_uart_softc* %38, i32 0, i32 4
  %40 = call i64 @uart_legacy_alloc(i32 %35, i32* %37, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %25
  %43 = load i32, i32* @stderr, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %44)
  store i32 -1, i32* %2, align 4
  br label %99

46:                                               ; preds = %25
  %47 = load %struct.lpc_uart_softc*, %struct.lpc_uart_softc** %4, align 8
  %48 = getelementptr inbounds %struct.lpc_uart_softc, %struct.lpc_uart_softc* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @pci_irq_reserve(i32 %49)
  %51 = load i32, i32* @lpc_uart_intr_assert, align 4
  %52 = load i32, i32* @lpc_uart_intr_deassert, align 4
  %53 = load %struct.lpc_uart_softc*, %struct.lpc_uart_softc** %4, align 8
  %54 = call i32 @uart_init(i32 %51, i32 %52, %struct.lpc_uart_softc* %53)
  %55 = load %struct.lpc_uart_softc*, %struct.lpc_uart_softc** %4, align 8
  %56 = getelementptr inbounds %struct.lpc_uart_softc, %struct.lpc_uart_softc* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  %57 = load %struct.lpc_uart_softc*, %struct.lpc_uart_softc** %4, align 8
  %58 = getelementptr inbounds %struct.lpc_uart_softc, %struct.lpc_uart_softc* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.lpc_uart_softc*, %struct.lpc_uart_softc** %4, align 8
  %61 = getelementptr inbounds %struct.lpc_uart_softc, %struct.lpc_uart_softc* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @uart_set_backend(i32 %59, i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %46
  %66 = load i32, i32* @stderr, align 4
  %67 = load %struct.lpc_uart_softc*, %struct.lpc_uart_softc** %4, align 8
  %68 = getelementptr inbounds %struct.lpc_uart_softc, %struct.lpc_uart_softc* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i8* %69, i8* %70)
  store i32 -1, i32* %2, align 4
  br label %99

72:                                               ; preds = %46
  %73 = call i32 @bzero(%struct.inout_port* %5, i32 32)
  %74 = load i8*, i8** %6, align 8
  %75 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %5, i32 0, i32 0
  store i8* %74, i8** %75, align 8
  %76 = load %struct.lpc_uart_softc*, %struct.lpc_uart_softc** %4, align 8
  %77 = getelementptr inbounds %struct.lpc_uart_softc, %struct.lpc_uart_softc* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %5, i32 0, i32 5
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* @UART_IO_BAR_SIZE, align 4
  %81 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %5, i32 0, i32 4
  store i32 %80, i32* %81, align 8
  %82 = load i32, i32* @IOPORT_F_INOUT, align 4
  %83 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %5, i32 0, i32 3
  store i32 %82, i32* %83, align 4
  %84 = load i32, i32* @lpc_uart_io_handler, align 4
  %85 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %5, i32 0, i32 2
  store i32 %84, i32* %85, align 8
  %86 = load %struct.lpc_uart_softc*, %struct.lpc_uart_softc** %4, align 8
  %87 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %5, i32 0, i32 1
  store %struct.lpc_uart_softc* %86, %struct.lpc_uart_softc** %87, align 8
  %88 = call i32 @register_inout(%struct.inout_port* %5)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp eq i32 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load %struct.lpc_uart_softc*, %struct.lpc_uart_softc** %4, align 8
  %94 = getelementptr inbounds %struct.lpc_uart_softc, %struct.lpc_uart_softc* %93, i32 0, i32 1
  store i32 1, i32* %94, align 8
  br label %95

95:                                               ; preds = %72
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %21

98:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %98, %65, %42, %17
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @bootrom_init(%struct.vmctx*, i32*) #1

declare dso_local i64 @uart_legacy_alloc(i32, i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @pci_irq_reserve(i32) #1

declare dso_local i32 @uart_init(i32, i32, %struct.lpc_uart_softc*) #1

declare dso_local i64 @uart_set_backend(i32, i8*) #1

declare dso_local i32 @bzero(%struct.inout_port*, i32) #1

declare dso_local i32 @register_inout(%struct.inout_port*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
