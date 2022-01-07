; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/acpica/extr_acpi_apm.c_apm_create_clone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/acpica/extr_acpi_apm.c_apm_create_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apm_clone_data = type { i32, %struct.TYPE_2__, i32, %struct.acpi_softc*, %struct.cdev* }
%struct.TYPE_2__ = type { i32 }
%struct.cdev = type { i32 }
%struct.acpi_softc = type { i32 }

@M_APMDEV = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@APM_EV_NONE = common dso_local global i32 0, align 4
@acpi_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"acpi\00", align 1
@ACPI_EVF_DEVD = common dso_local global i32 0, align 4
@ACPI_EVF_WRITE = common dso_local global i32 0, align 4
@ACPI_EVF_NONE = common dso_local global i32 0, align 4
@acpi = common dso_local global i32 0, align 4
@entries = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.apm_clone_data* (%struct.cdev*, %struct.acpi_softc*)* @apm_create_clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.apm_clone_data* @apm_create_clone(%struct.cdev* %0, %struct.acpi_softc* %1) #0 {
  %3 = alloca %struct.cdev*, align 8
  %4 = alloca %struct.acpi_softc*, align 8
  %5 = alloca %struct.apm_clone_data*, align 8
  store %struct.cdev* %0, %struct.cdev** %3, align 8
  store %struct.acpi_softc* %1, %struct.acpi_softc** %4, align 8
  %6 = load i32, i32* @M_APMDEV, align 4
  %7 = load i32, i32* @M_WAITOK, align 4
  %8 = call %struct.apm_clone_data* @malloc(i32 32, i32 %6, i32 %7)
  store %struct.apm_clone_data* %8, %struct.apm_clone_data** %5, align 8
  %9 = load %struct.cdev*, %struct.cdev** %3, align 8
  %10 = load %struct.apm_clone_data*, %struct.apm_clone_data** %5, align 8
  %11 = getelementptr inbounds %struct.apm_clone_data, %struct.apm_clone_data* %10, i32 0, i32 4
  store %struct.cdev* %9, %struct.cdev** %11, align 8
  %12 = load %struct.acpi_softc*, %struct.acpi_softc** %4, align 8
  %13 = load %struct.apm_clone_data*, %struct.apm_clone_data** %5, align 8
  %14 = getelementptr inbounds %struct.apm_clone_data, %struct.apm_clone_data* %13, i32 0, i32 3
  store %struct.acpi_softc* %12, %struct.acpi_softc** %14, align 8
  %15 = load i32, i32* @APM_EV_NONE, align 4
  %16 = load %struct.apm_clone_data*, %struct.apm_clone_data** %5, align 8
  %17 = getelementptr inbounds %struct.apm_clone_data, %struct.apm_clone_data* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load %struct.apm_clone_data*, %struct.apm_clone_data** %5, align 8
  %19 = getelementptr inbounds %struct.apm_clone_data, %struct.apm_clone_data* %18, i32 0, i32 1
  %20 = call i32 @bzero(%struct.TYPE_2__* %19, i32 4)
  %21 = load %struct.apm_clone_data*, %struct.apm_clone_data** %5, align 8
  %22 = getelementptr inbounds %struct.apm_clone_data, %struct.apm_clone_data* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @knlist_init_mtx(i32* %23, i32* @acpi_mutex)
  %25 = load %struct.cdev*, %struct.cdev** %3, align 8
  %26 = call i32 @devtoname(%struct.cdev* %25)
  %27 = call i64 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load i32, i32* @ACPI_EVF_DEVD, align 4
  %31 = load i32, i32* @ACPI_EVF_WRITE, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.apm_clone_data*, %struct.apm_clone_data** %5, align 8
  %34 = getelementptr inbounds %struct.apm_clone_data, %struct.apm_clone_data* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  br label %39

35:                                               ; preds = %2
  %36 = load i32, i32* @ACPI_EVF_NONE, align 4
  %37 = load %struct.apm_clone_data*, %struct.apm_clone_data** %5, align 8
  %38 = getelementptr inbounds %struct.apm_clone_data, %struct.apm_clone_data* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %35, %29
  %40 = load i32, i32* @acpi, align 4
  %41 = call i32 @ACPI_LOCK(i32 %40)
  %42 = load %struct.acpi_softc*, %struct.acpi_softc** %4, align 8
  %43 = getelementptr inbounds %struct.acpi_softc, %struct.acpi_softc* %42, i32 0, i32 0
  %44 = load %struct.apm_clone_data*, %struct.apm_clone_data** %5, align 8
  %45 = load i32, i32* @entries, align 4
  %46 = call i32 @STAILQ_INSERT_TAIL(i32* %43, %struct.apm_clone_data* %44, i32 %45)
  %47 = load i32, i32* @acpi, align 4
  %48 = call i32 @ACPI_UNLOCK(i32 %47)
  %49 = load %struct.apm_clone_data*, %struct.apm_clone_data** %5, align 8
  ret %struct.apm_clone_data* %49
}

declare dso_local %struct.apm_clone_data* @malloc(i32, i32, i32) #1

declare dso_local i32 @bzero(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @knlist_init_mtx(i32*, i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @devtoname(%struct.cdev*) #1

declare dso_local i32 @ACPI_LOCK(i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.apm_clone_data*, i32) #1

declare dso_local i32 @ACPI_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
