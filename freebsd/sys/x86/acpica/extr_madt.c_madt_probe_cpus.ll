; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/acpica/extr_madt.c_madt_probe_cpus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/acpica/extr_madt.c_madt_probe_cpus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@madt_physaddr = common dso_local global i32 0, align 4
@ACPI_SIG_MADT = common dso_local global i32 0, align 4
@madt = common dso_local global %struct.TYPE_6__* null, align 8
@madt_length = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unable to re-map MADT\00", align 1
@madt_probe_cpus_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @madt_probe_cpus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madt_probe_cpus() #0 {
  %1 = load i32, i32* @madt_physaddr, align 4
  %2 = load i32, i32* @ACPI_SIG_MADT, align 4
  %3 = call %struct.TYPE_6__* @acpi_map_table(i32 %1, i32 %2)
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** @madt, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** @madt, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* @madt_length, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @madt, align 8
  %9 = icmp ne %struct.TYPE_6__* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @KASSERT(i32 %10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @madt_probe_cpus_handler, align 4
  %13 = call i32 @madt_walk_table(i32 %12, i32* null)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @madt, align 8
  %15 = call i32 @acpi_unmap_table(%struct.TYPE_6__* %14)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** @madt, align 8
  ret i32 0
}

declare dso_local %struct.TYPE_6__* @acpi_map_table(i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @madt_walk_table(i32, i32*) #1

declare dso_local i32 @acpi_unmap_table(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
