; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/acpica/extr_acpi_apm.c_apmkqfilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/acpica/extr_acpi_apm.c_apmkqfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.knote = type { i32*, %struct.apm_clone_data* }
%struct.apm_clone_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@acpi = common dso_local global i32 0, align 4
@apm_readfiltops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.knote*)* @apmkqfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apmkqfilter(%struct.cdev* %0, %struct.knote* %1) #0 {
  %3 = alloca %struct.cdev*, align 8
  %4 = alloca %struct.knote*, align 8
  %5 = alloca %struct.apm_clone_data*, align 8
  store %struct.cdev* %0, %struct.cdev** %3, align 8
  store %struct.knote* %1, %struct.knote** %4, align 8
  %6 = bitcast %struct.apm_clone_data** %5 to i8**
  %7 = call i32 @devfs_get_cdevpriv(i8** %6)
  %8 = load i32, i32* @acpi, align 4
  %9 = call i32 @ACPI_LOCK(i32 %8)
  %10 = load %struct.apm_clone_data*, %struct.apm_clone_data** %5, align 8
  %11 = load %struct.knote*, %struct.knote** %4, align 8
  %12 = getelementptr inbounds %struct.knote, %struct.knote* %11, i32 0, i32 1
  store %struct.apm_clone_data* %10, %struct.apm_clone_data** %12, align 8
  %13 = load %struct.knote*, %struct.knote** %4, align 8
  %14 = getelementptr inbounds %struct.knote, %struct.knote* %13, i32 0, i32 0
  store i32* @apm_readfiltops, i32** %14, align 8
  %15 = load %struct.apm_clone_data*, %struct.apm_clone_data** %5, align 8
  %16 = getelementptr inbounds %struct.apm_clone_data, %struct.apm_clone_data* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.knote*, %struct.knote** %4, align 8
  %19 = call i32 @knlist_add(i32* %17, %struct.knote* %18, i32 0)
  %20 = load i32, i32* @acpi, align 4
  %21 = call i32 @ACPI_UNLOCK(i32 %20)
  ret i32 0
}

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32 @ACPI_LOCK(i32) #1

declare dso_local i32 @knlist_add(i32*, %struct.knote*, i32) #1

declare dso_local i32 @ACPI_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
