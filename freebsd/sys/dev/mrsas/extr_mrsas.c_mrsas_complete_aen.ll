; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_complete_aen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_complete_aen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i64, i32, i32, i32, i32*, i32, i32, i64 }
%struct.mrsas_mfi_cmd = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrsas_complete_aen(%struct.mrsas_softc* %0, %struct.mrsas_mfi_cmd* %1) #0 {
  %3 = alloca %struct.mrsas_softc*, align 8
  %4 = alloca %struct.mrsas_mfi_cmd*, align 8
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %3, align 8
  store %struct.mrsas_mfi_cmd* %1, %struct.mrsas_mfi_cmd** %4, align 8
  %5 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %4, align 8
  %6 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %34, label %9

9:                                                ; preds = %2
  %10 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %11 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %9
  %15 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %16 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %15, i32 0, i32 1
  store i32 1, i32* %16, align 8
  %17 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %18 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %17, i32 0, i32 5
  %19 = call i32 @mtx_lock(i32* %18)
  %20 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %21 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %20, i32 0, i32 7
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %14
  %25 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %26 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %25, i32 0, i32 7
  store i64 0, i64* %26, align 8
  %27 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %28 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %27, i32 0, i32 6
  %29 = call i32 @selwakeup(i32* %28)
  br label %30

30:                                               ; preds = %24, %14
  %31 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %32 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %31, i32 0, i32 5
  %33 = call i32 @mtx_unlock(i32* %32)
  br label %37

34:                                               ; preds = %9, %2
  %35 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %4, align 8
  %36 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %34, %30
  %38 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %39 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %38, i32 0, i32 4
  store i32* null, i32** %39, align 8
  %40 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %4, align 8
  %41 = call i32 @mrsas_release_mfi_cmd(%struct.mrsas_mfi_cmd* %40)
  %42 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %43 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %46 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %45, i32 0, i32 2
  %47 = call i32 @taskqueue_enqueue(i32 %44, i32* %46)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @selwakeup(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @mrsas_release_mfi_cmd(%struct.mrsas_mfi_cmd*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
