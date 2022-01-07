; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/exca/extr_exca.c_exca_probe_slots.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/exca/extr_exca.c_exca_probe_slots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exca_softc = type { i64, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@EXCA_NSLOTS = common dso_local global i32 0, align 4
@EXCA_SOCKET_SIZE = common dso_local global i32 0, align 4
@exca_io_getb = common dso_local global i32 0, align 4
@exca_io_putb = common dso_local global i32 0, align 4
@chip_names = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exca_probe_slots(i32 %0, %struct.exca_softc* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.exca_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.exca_softc* %1, %struct.exca_softc** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @ENXIO, align 4
  store i32 %11, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %53, %4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* @EXCA_NSLOTS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %56

16:                                               ; preds = %12
  %17 = load %struct.exca_softc*, %struct.exca_softc** %6, align 8
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %17, i64 %19
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @EXCA_SOCKET_SIZE, align 4
  %26 = mul nsw i32 %24, %25
  %27 = call i32 @exca_init(%struct.exca_softc* %20, i32 %21, i32 %22, i32 %23, i32 %26)
  %28 = load i32, i32* @exca_io_getb, align 4
  %29 = load %struct.exca_softc*, %struct.exca_softc** %6, align 8
  %30 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @exca_io_putb, align 4
  %32 = load %struct.exca_softc*, %struct.exca_softc** %6, align 8
  %33 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.exca_softc*, %struct.exca_softc** %6, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %34, i64 %36
  %38 = call i64 @exca_valid_slot(%struct.exca_softc* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %16
  %41 = load i32, i32* %5, align 4
  %42 = load i32*, i32** @chip_names, align 8
  %43 = load %struct.exca_softc*, %struct.exca_softc** %6, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %43, i64 %45
  %47 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32, i32* %42, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @device_set_desc(i32 %41, i32 %50)
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %40, %16
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %12

56:                                               ; preds = %12
  %57 = load i32, i32* %9, align 4
  ret i32 %57
}

declare dso_local i32 @exca_init(%struct.exca_softc*, i32, i32, i32, i32) #1

declare dso_local i64 @exca_valid_slot(%struct.exca_softc*) #1

declare dso_local i32 @device_set_desc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
