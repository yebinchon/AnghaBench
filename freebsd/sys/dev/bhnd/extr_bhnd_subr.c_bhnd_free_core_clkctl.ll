; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_subr.c_bhnd_free_core_clkctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/extr_bhnd_subr.c_bhnd_free_core_clkctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_core_clkctl = type { i32 }

@M_BHND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bhnd_free_core_clkctl(%struct.bhnd_core_clkctl* %0) #0 {
  %2 = alloca %struct.bhnd_core_clkctl*, align 8
  store %struct.bhnd_core_clkctl* %0, %struct.bhnd_core_clkctl** %2, align 8
  %3 = load %struct.bhnd_core_clkctl*, %struct.bhnd_core_clkctl** %2, align 8
  %4 = call i32 @BHND_CLKCTL_LOCK_DESTROY(%struct.bhnd_core_clkctl* %3)
  %5 = load %struct.bhnd_core_clkctl*, %struct.bhnd_core_clkctl** %2, align 8
  %6 = load i32, i32* @M_BHND, align 4
  %7 = call i32 @free(%struct.bhnd_core_clkctl* %5, i32 %6)
  ret void
}

declare dso_local i32 @BHND_CLKCTL_LOCK_DESTROY(%struct.bhnd_core_clkctl*) #1

declare dso_local i32 @free(%struct.bhnd_core_clkctl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
