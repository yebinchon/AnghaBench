; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_processor_tbl.c_start_processor_tbl.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_processor_tbl.c_start_processor_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lmodule = type { i32 }

@MAX_CPU_SAMPLES = common dso_local global i32 0, align 4
@get_cpus_samples = common dso_local global i32 0, align 4
@cpus_load_timer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_processor_tbl(%struct.lmodule* %0) #0 {
  %2 = alloca %struct.lmodule*, align 8
  store %struct.lmodule* %0, %struct.lmodule** %2, align 8
  %3 = load i32, i32* @MAX_CPU_SAMPLES, align 4
  %4 = sdiv i32 6000, %3
  %5 = load i32, i32* @get_cpus_samples, align 4
  %6 = load %struct.lmodule*, %struct.lmodule** %2, align 8
  %7 = call i32 @timer_start_repeat(i32 100, i32 %4, i32 %5, i32* null, %struct.lmodule* %6)
  store i32 %7, i32* @cpus_load_timer, align 4
  ret void
}

declare dso_local i32 @timer_start_repeat(i32, i32, i32, i32*, %struct.lmodule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
