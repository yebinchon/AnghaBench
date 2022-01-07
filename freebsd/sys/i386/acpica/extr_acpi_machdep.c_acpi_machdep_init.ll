; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/acpica/extr_acpi_machdep.c_acpi_machdep_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/acpica/extr_acpi_machdep.c_acpi_machdep_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.acpi_softc = type { i32, i32 }

@intr_model = common dso_local global i64 0, align 8
@ACPI_INTR_PIC = common dso_local global i64 0, align 8
@AcpiGbl_FADT = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@INTR_TRIGGER_LEVEL = common dso_local global i32 0, align 4
@INTR_POLARITY_LOW = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"reset_video\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@acpi_reset_video = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Call the VESA reset BIOS vector on the resume path\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_machdep_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.acpi_softc* @device_get_softc(i32 %4)
  store %struct.acpi_softc* %5, %struct.acpi_softc** %3, align 8
  %6 = load %struct.acpi_softc*, %struct.acpi_softc** %3, align 8
  %7 = call i32 @acpi_apm_init(%struct.acpi_softc* %6)
  %8 = load %struct.acpi_softc*, %struct.acpi_softc** %3, align 8
  %9 = call i32 @acpi_install_wakeup_handler(%struct.acpi_softc* %8)
  %10 = load i64, i64* @intr_model, align 8
  %11 = load i64, i64* @ACPI_INTR_PIC, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @AcpiGbl_FADT, i32 0, i32 0), align 4
  %16 = load i32, i32* @INTR_TRIGGER_LEVEL, align 4
  %17 = load i32, i32* @INTR_POLARITY_LOW, align 4
  %18 = call i32 @BUS_CONFIG_INTR(i32 %14, i32 %15, i32 %16, i32 %17)
  br label %22

19:                                               ; preds = %1
  %20 = load i64, i64* @intr_model, align 8
  %21 = call i32 @acpi_SetIntrModel(i64 %20)
  br label %22

22:                                               ; preds = %19, %13
  %23 = load %struct.acpi_softc*, %struct.acpi_softc** %3, align 8
  %24 = getelementptr inbounds %struct.acpi_softc, %struct.acpi_softc* %23, i32 0, i32 1
  %25 = load %struct.acpi_softc*, %struct.acpi_softc** %3, align 8
  %26 = getelementptr inbounds %struct.acpi_softc, %struct.acpi_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @SYSCTL_CHILDREN(i32 %27)
  %29 = load i32, i32* @OID_AUTO, align 4
  %30 = load i32, i32* @CTLFLAG_RW, align 4
  %31 = call i32 @SYSCTL_ADD_UINT(i32* %24, i32 %28, i32 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %30, i32* @acpi_reset_video, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.acpi_softc* @device_get_softc(i32) #1

declare dso_local i32 @acpi_apm_init(%struct.acpi_softc*) #1

declare dso_local i32 @acpi_install_wakeup_handler(%struct.acpi_softc*) #1

declare dso_local i32 @BUS_CONFIG_INTR(i32, i32, i32, i32) #1

declare dso_local i32 @acpi_SetIntrModel(i64) #1

declare dso_local i32 @SYSCTL_ADD_UINT(i32*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
