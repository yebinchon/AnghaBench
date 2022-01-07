; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_peek_host_status_le_4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_peek_host_status_le_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saf1761_otg_softc = type { i32 }

@SOTG_MEMORY_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"STAUS is zero at offset 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.saf1761_otg_softc*, i64)* @saf1761_peek_host_status_le_4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @saf1761_peek_host_status_le_4(%struct.saf1761_otg_softc* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.saf1761_otg_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.saf1761_otg_softc* %0, %struct.saf1761_otg_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %2, %29
  %9 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %10 = load i32, i32* @SOTG_MEMORY_REG, align 4
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %9, i32 %10, i64 %11)
  %13 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %14 = call i32 @SAF1761_90NS_DELAY(%struct.saf1761_otg_softc* %13)
  %15 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i64 @SAF1761_READ_LE_4(%struct.saf1761_otg_softc* %15, i64 %16)
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %8
  %21 = load i64, i64* %7, align 8
  store i64 %21, i64* %3, align 8
  br label %31

22:                                               ; preds = %8
  %23 = load i64, i64* %6, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %6, align 8
  %25 = icmp eq i64 %24, 8
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @DPRINTF(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %27)
  br label %30

29:                                               ; preds = %22
  br label %8

30:                                               ; preds = %26
  store i64 0, i64* %3, align 8
  br label %31

31:                                               ; preds = %30, %20
  %32 = load i64, i64* %3, align 8
  ret i64 %32
}

declare dso_local i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc*, i32, i64) #1

declare dso_local i32 @SAF1761_90NS_DELAY(%struct.saf1761_otg_softc*) #1

declare dso_local i64 @SAF1761_READ_LE_4(%struct.saf1761_otg_softc*, i64) #1

declare dso_local i32 @DPRINTF(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
