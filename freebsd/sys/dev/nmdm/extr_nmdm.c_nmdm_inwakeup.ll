; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nmdm/extr_nmdm.c_nmdm_inwakeup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nmdm/extr_nmdm.c_nmdm_inwakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }
%struct.nmdmpart = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@taskqueue_swi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*)* @nmdm_inwakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nmdm_inwakeup(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  %3 = alloca %struct.nmdmpart*, align 8
  store %struct.tty* %0, %struct.tty** %2, align 8
  %4 = load %struct.tty*, %struct.tty** %2, align 8
  %5 = call %struct.nmdmpart* @tty_softc(%struct.tty* %4)
  store %struct.nmdmpart* %5, %struct.nmdmpart** %3, align 8
  %6 = load i32, i32* @taskqueue_swi, align 4
  %7 = load %struct.nmdmpart*, %struct.nmdmpart** %3, align 8
  %8 = getelementptr inbounds %struct.nmdmpart, %struct.nmdmpart* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @taskqueue_enqueue(i32 %6, i32* %10)
  ret void
}

declare dso_local %struct.nmdmpart* @tty_softc(%struct.tty*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
