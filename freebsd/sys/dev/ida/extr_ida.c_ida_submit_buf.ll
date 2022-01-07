; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ida/extr_ida.c_ida_submit_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ida/extr_ida.c_ida_submit_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ida_softc = type { i32, i32 }
%struct.bio = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ida_submit_buf(%struct.ida_softc* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.ida_softc*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.ida_softc* %0, %struct.ida_softc** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %5 = load %struct.ida_softc*, %struct.ida_softc** %3, align 8
  %6 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %5, i32 0, i32 0
  %7 = call i32 @mtx_lock(i32* %6)
  %8 = load %struct.ida_softc*, %struct.ida_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %8, i32 0, i32 1
  %10 = load %struct.bio*, %struct.bio** %4, align 8
  %11 = call i32 @bioq_insert_tail(i32* %9, %struct.bio* %10)
  %12 = load %struct.ida_softc*, %struct.ida_softc** %3, align 8
  %13 = call i32 @ida_startio(%struct.ida_softc* %12)
  %14 = load %struct.ida_softc*, %struct.ida_softc** %3, align 8
  %15 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %14, i32 0, i32 0
  %16 = call i32 @mtx_unlock(i32* %15)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @bioq_insert_tail(i32*, %struct.bio*) #1

declare dso_local i32 @ida_startio(%struct.ida_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
