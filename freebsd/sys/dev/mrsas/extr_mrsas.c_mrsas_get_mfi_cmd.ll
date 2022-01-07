; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_get_mfi_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_get_mfi_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_mfi_cmd = type { i32 }
%struct.mrsas_softc = type { i32, i32 }

@next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mrsas_mfi_cmd* @mrsas_get_mfi_cmd(%struct.mrsas_softc* %0) #0 {
  %2 = alloca %struct.mrsas_softc*, align 8
  %3 = alloca %struct.mrsas_mfi_cmd*, align 8
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %2, align 8
  store %struct.mrsas_mfi_cmd* null, %struct.mrsas_mfi_cmd** %3, align 8
  %4 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %5 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %4, i32 0, i32 0
  %6 = call i32 @mtx_lock(i32* %5)
  %7 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %8 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %7, i32 0, i32 1
  %9 = call i32 @TAILQ_EMPTY(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %1
  %12 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %13 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %12, i32 0, i32 1
  %14 = call %struct.mrsas_mfi_cmd* @TAILQ_FIRST(i32* %13)
  store %struct.mrsas_mfi_cmd* %14, %struct.mrsas_mfi_cmd** %3, align 8
  %15 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %16 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %15, i32 0, i32 1
  %17 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %3, align 8
  %18 = load i32, i32* @next, align 4
  %19 = call i32 @TAILQ_REMOVE(i32* %16, %struct.mrsas_mfi_cmd* %17, i32 %18)
  br label %20

20:                                               ; preds = %11, %1
  %21 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %22 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %21, i32 0, i32 0
  %23 = call i32 @mtx_unlock(i32* %22)
  %24 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %3, align 8
  ret %struct.mrsas_mfi_cmd* %24
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.mrsas_mfi_cmd* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.mrsas_mfi_cmd*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
