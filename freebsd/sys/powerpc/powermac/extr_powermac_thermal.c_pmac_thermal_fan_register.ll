; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_powermac_thermal.c_pmac_thermal_fan_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_powermac_thermal.c_pmac_thermal_fan_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmac_fan = type { i32 }
%struct.pmac_fan_le = type { %struct.pmac_fan* }

@M_PMACTHERM = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@fans = common dso_local global i32 0, align 4
@entries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmac_thermal_fan_register(%struct.pmac_fan* %0) #0 {
  %2 = alloca %struct.pmac_fan*, align 8
  %3 = alloca %struct.pmac_fan_le*, align 8
  store %struct.pmac_fan* %0, %struct.pmac_fan** %2, align 8
  %4 = load i32, i32* @M_PMACTHERM, align 4
  %5 = load i32, i32* @M_ZERO, align 4
  %6 = load i32, i32* @M_WAITOK, align 4
  %7 = or i32 %5, %6
  %8 = call %struct.pmac_fan_le* @malloc(i32 8, i32 %4, i32 %7)
  store %struct.pmac_fan_le* %8, %struct.pmac_fan_le** %3, align 8
  %9 = load %struct.pmac_fan*, %struct.pmac_fan** %2, align 8
  %10 = load %struct.pmac_fan_le*, %struct.pmac_fan_le** %3, align 8
  %11 = getelementptr inbounds %struct.pmac_fan_le, %struct.pmac_fan_le* %10, i32 0, i32 0
  store %struct.pmac_fan* %9, %struct.pmac_fan** %11, align 8
  %12 = load %struct.pmac_fan_le*, %struct.pmac_fan_le** %3, align 8
  %13 = load i32, i32* @entries, align 4
  %14 = call i32 @SLIST_INSERT_HEAD(i32* @fans, %struct.pmac_fan_le* %12, i32 %13)
  ret void
}

declare dso_local %struct.pmac_fan_le* @malloc(i32, i32, i32) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.pmac_fan_le*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
