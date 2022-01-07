; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/esp/extr_esp_sbus.c_espdetach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/esp/extr_esp_sbus.c_espdetach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp_softc = type { i32, i32, i32, i32, %struct.ncr53c9x_softc }
%struct.ncr53c9x_softc = type { i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.esp_softc*)* @espdetach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @espdetach(%struct.esp_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.esp_softc*, align 8
  %4 = alloca %struct.ncr53c9x_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.esp_softc* %0, %struct.esp_softc** %3, align 8
  %6 = load %struct.esp_softc*, %struct.esp_softc** %3, align 8
  %7 = getelementptr inbounds %struct.esp_softc, %struct.esp_softc* %6, i32 0, i32 4
  store %struct.ncr53c9x_softc* %7, %struct.ncr53c9x_softc** %4, align 8
  %8 = load %struct.esp_softc*, %struct.esp_softc** %3, align 8
  %9 = getelementptr inbounds %struct.esp_softc, %struct.esp_softc* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.esp_softc*, %struct.esp_softc** %3, align 8
  %12 = getelementptr inbounds %struct.esp_softc, %struct.esp_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.esp_softc*, %struct.esp_softc** %3, align 8
  %15 = getelementptr inbounds %struct.esp_softc, %struct.esp_softc* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @bus_teardown_intr(i32 %10, i32 %13, i32 %16)
  %18 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %4, align 8
  %19 = call i32 @ncr53c9x_detach(%struct.ncr53c9x_softc* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %48

24:                                               ; preds = %1
  %25 = load %struct.esp_softc*, %struct.esp_softc** %3, align 8
  %26 = getelementptr inbounds %struct.esp_softc, %struct.esp_softc* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @lsi64854_detach(i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %48

33:                                               ; preds = %24
  %34 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %4, align 8
  %35 = call i32 @NCR_LOCK_DESTROY(%struct.ncr53c9x_softc* %34)
  %36 = load %struct.esp_softc*, %struct.esp_softc** %3, align 8
  %37 = getelementptr inbounds %struct.esp_softc, %struct.esp_softc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SYS_RES_IRQ, align 4
  %40 = load %struct.esp_softc*, %struct.esp_softc** %3, align 8
  %41 = getelementptr inbounds %struct.esp_softc, %struct.esp_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @rman_get_rid(i32 %42)
  %44 = load %struct.esp_softc*, %struct.esp_softc** %3, align 8
  %45 = getelementptr inbounds %struct.esp_softc, %struct.esp_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @bus_release_resource(i32 %38, i32 %39, i32 %43, i32 %46)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %33, %31, %22
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @ncr53c9x_detach(%struct.ncr53c9x_softc*) #1

declare dso_local i32 @lsi64854_detach(i32) #1

declare dso_local i32 @NCR_LOCK_DESTROY(%struct.ncr53c9x_softc*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @rman_get_rid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
