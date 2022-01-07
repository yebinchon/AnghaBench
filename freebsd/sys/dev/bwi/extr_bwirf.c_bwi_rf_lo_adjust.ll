; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_lo_adjust.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_lo_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { i32 }
%struct.bwi_tpctl = type { i32 }
%struct.bwi_rf_lo = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bwi_rf_lo_adjust(%struct.bwi_mac* %0, %struct.bwi_tpctl* %1) #0 {
  %3 = alloca %struct.bwi_mac*, align 8
  %4 = alloca %struct.bwi_tpctl*, align 8
  %5 = alloca %struct.bwi_rf_lo*, align 8
  store %struct.bwi_mac* %0, %struct.bwi_mac** %3, align 8
  store %struct.bwi_tpctl* %1, %struct.bwi_tpctl** %4, align 8
  %6 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %7 = load %struct.bwi_tpctl*, %struct.bwi_tpctl** %4, align 8
  %8 = call %struct.bwi_rf_lo* @bwi_rf_lo_find(%struct.bwi_mac* %6, %struct.bwi_tpctl* %7)
  store %struct.bwi_rf_lo* %8, %struct.bwi_rf_lo** %5, align 8
  %9 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %10 = load %struct.bwi_rf_lo*, %struct.bwi_rf_lo** %5, align 8
  %11 = call i32 @RF_LO_WRITE(%struct.bwi_mac* %9, %struct.bwi_rf_lo* %10)
  ret void
}

declare dso_local %struct.bwi_rf_lo* @bwi_rf_lo_find(%struct.bwi_mac*, %struct.bwi_tpctl*) #1

declare dso_local i32 @RF_LO_WRITE(%struct.bwi_mac*, %struct.bwi_rf_lo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
