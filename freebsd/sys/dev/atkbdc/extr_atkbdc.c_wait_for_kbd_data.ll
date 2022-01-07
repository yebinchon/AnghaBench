; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbdc.c_wait_for_kbd_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbdc.c_wait_for_kbd_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atkbdc_softc = type { i32, i32 }

@KBDS_BUFFER_FULL = common dso_local global i32 0, align 4
@KBDS_KBD_BUFFER_FULL = common dso_local global i32 0, align 4
@KBDS_AUX_BUFFER_FULL = common dso_local global i32 0, align 4
@KBDD_DELAYTIME = common dso_local global i32 0, align 4
@KBDC_DELAYTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atkbdc_softc*)* @wait_for_kbd_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_kbd_data(%struct.atkbdc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atkbdc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.atkbdc_softc* %0, %struct.atkbdc_softc** %3, align 8
  %6 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %7 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = mul nsw i32 %8, 2
  store i32 %9, i32* %4, align 4
  br label %10

10:                                               ; preds = %36, %1
  %11 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %12 = call i32 @read_status(%struct.atkbdc_softc* %11)
  %13 = load i32, i32* @KBDS_BUFFER_FULL, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @KBDS_KBD_BUFFER_FULL, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %37

17:                                               ; preds = %10
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @KBDS_AUX_BUFFER_FULL, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load i32, i32* @KBDD_DELAYTIME, align 4
  %23 = call i32 @DELAY(i32 %22)
  %24 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %25 = getelementptr inbounds %struct.atkbdc_softc, %struct.atkbdc_softc* %24, i32 0, i32 1
  %26 = load %struct.atkbdc_softc*, %struct.atkbdc_softc** %3, align 8
  %27 = call i32 @read_data(%struct.atkbdc_softc* %26)
  %28 = call i32 @addq(i32* %25, i32 %27)
  br label %29

29:                                               ; preds = %21, %17
  %30 = load i32, i32* @KBDC_DELAYTIME, align 4
  %31 = call i32 @DELAY(i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %41

36:                                               ; preds = %29
  br label %10

37:                                               ; preds = %10
  %38 = load i32, i32* @KBDD_DELAYTIME, align 4
  %39 = call i32 @DELAY(i32 %38)
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %37, %35
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @read_status(%struct.atkbdc_softc*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @addq(i32*, i32) #1

declare dso_local i32 @read_data(%struct.atkbdc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
