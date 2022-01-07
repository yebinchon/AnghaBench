; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/acpica/extr_acpi_wakeup.c_acpi_wakeup_machdep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/acpica/extr_acpi_wakeup.c_acpi_wakeup_machdep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*)* }
%struct.acpi_softc = type { i32 }

@switchtime = common dso_local global i32 0, align 4
@switchticks = common dso_local global i32 0, align 4
@ticks = common dso_local global i32 0, align 4
@mem_range_softc = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@suspcpus = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_wakeup_machdep(%struct.acpi_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.acpi_softc* %0, %struct.acpi_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load i32, i32* %8, align 4
  store i32 %13, i32* %5, align 4
  br label %53

14:                                               ; preds = %4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %34, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = call i32 (...) @ucode_reload()
  %22 = call i32 (...) @pmap_init_pat()
  %23 = call i32 (...) @initializecpu()
  %24 = load i32, i32* @switchtime, align 4
  %25 = call i32 @PCPU_SET(i32 %24, i32 0)
  %26 = load i32, i32* @switchticks, align 4
  %27 = load i32, i32* @ticks, align 4
  %28 = call i32 @PCPU_SET(i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %20, %17
  %30 = call i32 (...) @mca_resume()
  %31 = call i32 (...) @vmm_resume_p()
  %32 = call i32 @intr_resume(i32 0)
  %33 = call i32 @AcpiSetFirmwareWakingVector(i32 0, i32 0)
  br label %51

34:                                               ; preds = %14
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mem_range_softc, i32 0, i32 0), align 8
  %39 = icmp ne %struct.TYPE_4__* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mem_range_softc, i32 0, i32 0), align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %42, align 8
  %44 = icmp ne i32 (%struct.TYPE_5__*)* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mem_range_softc, i32 0, i32 0), align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %47, align 8
  %49 = call i32 %48(%struct.TYPE_5__* @mem_range_softc)
  br label %50

50:                                               ; preds = %45, %40, %37, %34
  br label %51

51:                                               ; preds = %50, %29
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %51, %12
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @ucode_reload(...) #1

declare dso_local i32 @pmap_init_pat(...) #1

declare dso_local i32 @initializecpu(...) #1

declare dso_local i32 @PCPU_SET(i32, i32) #1

declare dso_local i32 @mca_resume(...) #1

declare dso_local i32 @vmm_resume_p(...) #1

declare dso_local i32 @intr_resume(i32) #1

declare dso_local i32 @AcpiSetFirmwareWakingVector(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
