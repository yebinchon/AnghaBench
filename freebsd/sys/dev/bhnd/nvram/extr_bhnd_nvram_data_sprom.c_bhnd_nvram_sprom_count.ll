; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_sprom.c_bhnd_nvram_sprom_count.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_sprom.c_bhnd_nvram_sprom_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_data = type { i32 }
%struct.bhnd_nvram_sprom = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bhnd_nvram_sprom_count(%struct.bhnd_nvram_data* %0) #0 {
  %2 = alloca %struct.bhnd_nvram_data*, align 8
  %3 = alloca %struct.bhnd_nvram_sprom*, align 8
  store %struct.bhnd_nvram_data* %0, %struct.bhnd_nvram_data** %2, align 8
  %4 = load %struct.bhnd_nvram_data*, %struct.bhnd_nvram_data** %2, align 8
  %5 = bitcast %struct.bhnd_nvram_data* %4 to %struct.bhnd_nvram_sprom*
  store %struct.bhnd_nvram_sprom* %5, %struct.bhnd_nvram_sprom** %3, align 8
  %6 = load %struct.bhnd_nvram_sprom*, %struct.bhnd_nvram_sprom** %3, align 8
  %7 = getelementptr inbounds %struct.bhnd_nvram_sprom, %struct.bhnd_nvram_sprom* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  ret i64 %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
