; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_openpic.c_openpic_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_openpic.c_openpic_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.openpic_softc = type { i32 }

@INTR_POLARITY_LOW = common dso_local global i32 0, align 4
@OPENPIC_POLARITY_POSITIVE = common dso_local global i32 0, align 4
@INTR_TRIGGER_EDGE = common dso_local global i32 0, align 4
@OPENPIC_SENSE_LEVEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @openpic_config(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.openpic_softc*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.openpic_softc* @device_get_softc(i32 %11)
  store %struct.openpic_softc* %12, %struct.openpic_softc** %9, align 8
  %13 = load %struct.openpic_softc*, %struct.openpic_softc** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @OPENPIC_SRC_VECTOR(i32 %14)
  %16 = call i32 @openpic_read(%struct.openpic_softc* %13, i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @INTR_POLARITY_LOW, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %4
  %21 = load i32, i32* @OPENPIC_POLARITY_POSITIVE, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %10, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %10, align 4
  br label %29

25:                                               ; preds = %4
  %26 = load i32, i32* @OPENPIC_POLARITY_POSITIVE, align 4
  %27 = load i32, i32* %10, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %25, %20
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @INTR_TRIGGER_EDGE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i32, i32* @OPENPIC_SENSE_LEVEL, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %10, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %10, align 4
  br label %42

38:                                               ; preds = %29
  %39 = load i32, i32* @OPENPIC_SENSE_LEVEL, align 4
  %40 = load i32, i32* %10, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %38, %33
  %43 = load %struct.openpic_softc*, %struct.openpic_softc** %9, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @OPENPIC_SRC_VECTOR(i32 %44)
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @openpic_write(%struct.openpic_softc* %43, i32 %45, i32 %46)
  ret void
}

declare dso_local %struct.openpic_softc* @device_get_softc(i32) #1

declare dso_local i32 @openpic_read(%struct.openpic_softc*, i32) #1

declare dso_local i32 @OPENPIC_SRC_VECTOR(i32) #1

declare dso_local i32 @openpic_write(%struct.openpic_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
