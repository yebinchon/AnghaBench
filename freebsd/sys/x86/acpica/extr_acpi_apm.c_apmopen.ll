; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/acpica/extr_acpi_apm.c_apmopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/acpica/extr_acpi_apm.c_apmopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.acpi_softc = type { i32 }
%struct.apm_clone_data = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"acpi\00", align 1
@apmdtor = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@ACPI_EVF_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @apmopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apmopen(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.acpi_softc*, align 8
  %10 = alloca %struct.apm_clone_data*, align 8
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.thread* %3, %struct.thread** %8, align 8
  %11 = call i32 @devclass_find(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %12 = call %struct.acpi_softc* @devclass_get_softc(i32 %11, i32 0)
  store %struct.acpi_softc* %12, %struct.acpi_softc** %9, align 8
  %13 = load %struct.cdev*, %struct.cdev** %5, align 8
  %14 = load %struct.acpi_softc*, %struct.acpi_softc** %9, align 8
  %15 = call %struct.apm_clone_data* @apm_create_clone(%struct.cdev* %13, %struct.acpi_softc* %14)
  store %struct.apm_clone_data* %15, %struct.apm_clone_data** %10, align 8
  %16 = load %struct.apm_clone_data*, %struct.apm_clone_data** %10, align 8
  %17 = load i32, i32* @apmdtor, align 4
  %18 = call i32 @devfs_set_cdevpriv(%struct.apm_clone_data* %16, i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @FWRITE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load i32, i32* @ACPI_EVF_WRITE, align 4
  %25 = load %struct.apm_clone_data*, %struct.apm_clone_data** %10, align 8
  %26 = getelementptr inbounds %struct.apm_clone_data, %struct.apm_clone_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %23, %4
  ret i32 0
}

declare dso_local %struct.acpi_softc* @devclass_get_softc(i32, i32) #1

declare dso_local i32 @devclass_find(i8*) #1

declare dso_local %struct.apm_clone_data* @apm_create_clone(%struct.cdev*, %struct.acpi_softc*) #1

declare dso_local i32 @devfs_set_cdevpriv(%struct.apm_clone_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
