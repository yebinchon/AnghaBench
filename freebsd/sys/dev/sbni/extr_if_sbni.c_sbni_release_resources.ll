; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni.c_sbni_release_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni.c_sbni_release_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbni_softc = type { i64, i64, i32, i32, i64, i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sbni_release_resources(%struct.sbni_softc* %0) #0 {
  %2 = alloca %struct.sbni_softc*, align 8
  store %struct.sbni_softc* %0, %struct.sbni_softc** %2, align 8
  %3 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %4 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %3, i32 0, i32 4
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %9 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @SYS_RES_IRQ, align 4
  %12 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %13 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %16 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @bus_release_resource(i32 %10, i32 %11, i32 %14, i64 %17)
  br label %19

19:                                               ; preds = %7, %1
  %20 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %21 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %19
  %25 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %26 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %31 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SYS_RES_IOPORT, align 4
  %34 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %35 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %38 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @bus_release_resource(i32 %32, i32 %33, i32 %36, i64 %39)
  br label %41

41:                                               ; preds = %29, %24, %19
  ret void
}

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
