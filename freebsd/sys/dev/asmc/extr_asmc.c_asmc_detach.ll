; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/asmc/extr_asmc.c_asmc_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/asmc/extr_asmc.c_asmc_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asmc_softc = type { i32, i64, i32, i64, i32, i64, i64, i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @asmc_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asmc_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asmc_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.asmc_softc* @device_get_softc(i32 %4)
  store %struct.asmc_softc* %5, %struct.asmc_softc** %3, align 8
  %6 = load %struct.asmc_softc*, %struct.asmc_softc** %3, align 8
  %7 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %6, i32 0, i32 6
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.asmc_softc*, %struct.asmc_softc** %3, align 8
  %12 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %11, i32 0, i32 6
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.asmc_softc*, %struct.asmc_softc** %3, align 8
  %15 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %14, i32 0, i32 7
  %16 = call i32 @taskqueue_drain(i64 %13, i32* %15)
  %17 = load %struct.asmc_softc*, %struct.asmc_softc** %3, align 8
  %18 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @taskqueue_free(i64 %19)
  br label %21

21:                                               ; preds = %10, %1
  %22 = load %struct.asmc_softc*, %struct.asmc_softc** %3, align 8
  %23 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load i32, i32* %2, align 4
  %28 = load %struct.asmc_softc*, %struct.asmc_softc** %3, align 8
  %29 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.asmc_softc*, %struct.asmc_softc** %3, align 8
  %32 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @bus_teardown_intr(i32 %27, i64 %30, i64 %33)
  br label %35

35:                                               ; preds = %26, %21
  %36 = load %struct.asmc_softc*, %struct.asmc_softc** %3, align 8
  %37 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @SYS_RES_IRQ, align 4
  %43 = load %struct.asmc_softc*, %struct.asmc_softc** %3, align 8
  %44 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.asmc_softc*, %struct.asmc_softc** %3, align 8
  %47 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @bus_release_resource(i32 %41, i32 %42, i32 %45, i64 %48)
  br label %50

50:                                               ; preds = %40, %35
  %51 = load %struct.asmc_softc*, %struct.asmc_softc** %3, align 8
  %52 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* @SYS_RES_IOPORT, align 4
  %58 = load %struct.asmc_softc*, %struct.asmc_softc** %3, align 8
  %59 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.asmc_softc*, %struct.asmc_softc** %3, align 8
  %62 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @bus_release_resource(i32 %56, i32 %57, i32 %60, i64 %63)
  br label %65

65:                                               ; preds = %55, %50
  %66 = load %struct.asmc_softc*, %struct.asmc_softc** %3, align 8
  %67 = getelementptr inbounds %struct.asmc_softc, %struct.asmc_softc* %66, i32 0, i32 0
  %68 = call i32 @mtx_destroy(i32* %67)
  ret i32 0
}

declare dso_local %struct.asmc_softc* @device_get_softc(i32) #1

declare dso_local i32 @taskqueue_drain(i64, i32*) #1

declare dso_local i32 @taskqueue_free(i64) #1

declare dso_local i32 @bus_teardown_intr(i32, i64, i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
