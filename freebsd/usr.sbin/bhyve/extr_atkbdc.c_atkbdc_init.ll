; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_atkbdc.c_atkbdc_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_atkbdc.c_atkbdc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.inout_port = type { i8*, i32, %struct.atkbdc_softc*, i32, i8*, i32 }
%struct.atkbdc_softc = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, %struct.vmctx* }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"atkdbc\00", align 1
@KBD_STS_CTL_PORT = common dso_local global i32 0, align 4
@IOPORT_F_INOUT = common dso_local global i8* null, align 8
@atkbdc_sts_ctl_handler = common dso_local global i32 0, align 4
@KBD_DATA_PORT = common dso_local global i32 0, align 4
@atkbdc_data_handler = common dso_local global i32 0, align 4
@KBD_DEV_IRQ = common dso_local global i8* null, align 8
@AUX_DEV_IRQ = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atkbdc_init(%struct.vmctx* %0) #0 {
  %2 = alloca %struct.vmctx*, align 8
  %3 = alloca %struct.inout_port, align 8
  %4 = alloca %struct.atkbdc_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %2, align 8
  %6 = call %struct.atkbdc_softc* @calloc(i32 1, i32 40)
  store %struct.atkbdc_softc* %6, %struct.atkbdc_softc** %4, align 8
  %7 = load %struct.vmctx*, %struct.vmctx** %2, align 8
  %8 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %4, align 8
  %9 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %8, i32 0, i32 5
  store %struct.vmctx* %7, %struct.vmctx** %9, align 8
  %10 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %4, align 8
  %11 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %10, i32 0, i32 4
  %12 = call i32 @pthread_mutex_init(i32* %11, i32* null)
  %13 = call i32 @bzero(%struct.inout_port* %3, i32 48)
  %14 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %15 = load i32, i32* @KBD_STS_CTL_PORT, align 4
  %16 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %3, i32 0, i32 5
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %3, i32 0, i32 1
  store i32 1, i32* %17, align 8
  %18 = load i8*, i8** @IOPORT_F_INOUT, align 8
  %19 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %3, i32 0, i32 4
  store i8* %18, i8** %19, align 8
  %20 = load i32, i32* @atkbdc_sts_ctl_handler, align 4
  %21 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %3, i32 0, i32 3
  store i32 %20, i32* %21, align 8
  %22 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %4, align 8
  %23 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %3, i32 0, i32 2
  store %struct.atkbdc_softc* %22, %struct.atkbdc_softc** %23, align 8
  %24 = call i32 @register_inout(%struct.inout_port* %3)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = call i32 @bzero(%struct.inout_port* %3, i32 48)
  %30 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %30, align 8
  %31 = load i32, i32* @KBD_DATA_PORT, align 4
  %32 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %3, i32 0, i32 5
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %3, i32 0, i32 1
  store i32 1, i32* %33, align 8
  %34 = load i8*, i8** @IOPORT_F_INOUT, align 8
  %35 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %3, i32 0, i32 4
  store i8* %34, i8** %35, align 8
  %36 = load i32, i32* @atkbdc_data_handler, align 4
  %37 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %3, i32 0, i32 3
  store i32 %36, i32* %37, align 8
  %38 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %4, align 8
  %39 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %3, i32 0, i32 2
  store %struct.atkbdc_softc* %38, %struct.atkbdc_softc** %39, align 8
  %40 = call i32 @register_inout(%struct.inout_port* %3)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i8*, i8** @KBD_DEV_IRQ, align 8
  %46 = call i32 @pci_irq_reserve(i8* %45)
  %47 = load i8*, i8** @KBD_DEV_IRQ, align 8
  %48 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %4, align 8
  %49 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i8* %47, i8** %50, align 8
  %51 = load i8*, i8** @AUX_DEV_IRQ, align 8
  %52 = call i32 @pci_irq_reserve(i8* %51)
  %53 = load i8*, i8** @AUX_DEV_IRQ, align 8
  %54 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %4, align 8
  %55 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i8* %53, i8** %56, align 8
  %57 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %4, align 8
  %58 = call i32 @ps2kbd_init(%struct.atkbdc_softc* %57)
  %59 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %4, align 8
  %60 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %4, align 8
  %62 = call i32 @ps2mouse_init(%struct.atkbdc_softc* %61)
  %63 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %4, align 8
  %64 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  ret void
}

declare dso_local %struct.atkbdc_softc* @calloc(i32, i32) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @bzero(%struct.inout_port*, i32) #1

declare dso_local i32 @register_inout(%struct.inout_port*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pci_irq_reserve(i8*) #1

declare dso_local i32 @ps2kbd_init(%struct.atkbdc_softc*) #1

declare dso_local i32 @ps2mouse_init(%struct.atkbdc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
