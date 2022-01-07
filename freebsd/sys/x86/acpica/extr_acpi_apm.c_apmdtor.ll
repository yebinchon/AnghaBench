; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/acpica/extr_acpi_apm.c_apmdtor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/acpica/extr_acpi_apm.c_apmdtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apm_clone_data = type { i64, %struct.TYPE_2__, %struct.acpi_softc* }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_softc = type { i64, i32 }

@APM_EV_ACKED = common dso_local global i64 0, align 8
@acpi = common dso_local global i32 0, align 4
@apm_clone_data = common dso_local global i32 0, align 4
@entries = common dso_local global i32 0, align 4
@M_APMDEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @apmdtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apmdtor(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.apm_clone_data*, align 8
  %4 = alloca %struct.acpi_softc*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.apm_clone_data*
  store %struct.apm_clone_data* %6, %struct.apm_clone_data** %3, align 8
  %7 = load %struct.apm_clone_data*, %struct.apm_clone_data** %3, align 8
  %8 = getelementptr inbounds %struct.apm_clone_data, %struct.apm_clone_data* %7, i32 0, i32 2
  %9 = load %struct.acpi_softc*, %struct.acpi_softc** %8, align 8
  store %struct.acpi_softc* %9, %struct.acpi_softc** %4, align 8
  %10 = load %struct.acpi_softc*, %struct.acpi_softc** %4, align 8
  %11 = getelementptr inbounds %struct.acpi_softc, %struct.acpi_softc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.apm_clone_data*, %struct.apm_clone_data** %3, align 8
  %16 = getelementptr inbounds %struct.apm_clone_data, %struct.apm_clone_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @APM_EV_ACKED, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load %struct.apm_clone_data*, %struct.apm_clone_data** %3, align 8
  %22 = call i32 @acpi_AckSleepState(%struct.apm_clone_data* %21, i32 0)
  br label %23

23:                                               ; preds = %20, %14, %1
  %24 = load i32, i32* @acpi, align 4
  %25 = call i32 @ACPI_LOCK(i32 %24)
  %26 = load %struct.acpi_softc*, %struct.acpi_softc** %4, align 8
  %27 = getelementptr inbounds %struct.acpi_softc, %struct.acpi_softc* %26, i32 0, i32 1
  %28 = load %struct.apm_clone_data*, %struct.apm_clone_data** %3, align 8
  %29 = load i32, i32* @apm_clone_data, align 4
  %30 = load i32, i32* @entries, align 4
  %31 = call i32 @STAILQ_REMOVE(i32* %27, %struct.apm_clone_data* %28, i32 %29, i32 %30)
  %32 = load %struct.apm_clone_data*, %struct.apm_clone_data** %3, align 8
  %33 = getelementptr inbounds %struct.apm_clone_data, %struct.apm_clone_data* %32, i32 0, i32 1
  %34 = call i32 @seldrain(%struct.TYPE_2__* %33)
  %35 = load %struct.apm_clone_data*, %struct.apm_clone_data** %3, align 8
  %36 = getelementptr inbounds %struct.apm_clone_data, %struct.apm_clone_data* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @knlist_destroy(i32* %37)
  %39 = load i32, i32* @acpi, align 4
  %40 = call i32 @ACPI_UNLOCK(i32 %39)
  %41 = load %struct.apm_clone_data*, %struct.apm_clone_data** %3, align 8
  %42 = load i32, i32* @M_APMDEV, align 4
  %43 = call i32 @free(%struct.apm_clone_data* %41, i32 %42)
  ret void
}

declare dso_local i32 @acpi_AckSleepState(%struct.apm_clone_data*, i32) #1

declare dso_local i32 @ACPI_LOCK(i32) #1

declare dso_local i32 @STAILQ_REMOVE(i32*, %struct.apm_clone_data*, i32, i32) #1

declare dso_local i32 @seldrain(%struct.TYPE_2__*) #1

declare dso_local i32 @knlist_destroy(i32*) #1

declare dso_local i32 @ACPI_UNLOCK(i32) #1

declare dso_local i32 @free(%struct.apm_clone_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
