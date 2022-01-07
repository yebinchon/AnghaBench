; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ste/extr_if_ste.c_ste_eeprom_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ste/extr_if_ste.c_ste_eeprom_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ste_softc = type { i32 }

@STE_EEPROM_CTL = common dso_local global i32 0, align 4
@STE_EECTL_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"eeprom failed to come ready\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ste_softc*)* @ste_eeprom_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ste_eeprom_wait(%struct.ste_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ste_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.ste_softc* %0, %struct.ste_softc** %3, align 8
  %5 = call i32 @DELAY(i32 1000)
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %20, %1
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 100
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
  %10 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %11 = load i32, i32* @STE_EEPROM_CTL, align 4
  %12 = call i32 @CSR_READ_2(%struct.ste_softc* %10, i32 %11)
  %13 = load i32, i32* @STE_EECTL_BUSY, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = call i32 @DELAY(i32 1000)
  br label %19

18:                                               ; preds = %9
  br label %23

19:                                               ; preds = %16
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %6

23:                                               ; preds = %18, %6
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 100
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %28 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %32

31:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %26
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @CSR_READ_2(%struct.ste_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
