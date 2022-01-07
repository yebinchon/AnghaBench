; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wpi/extr_if_wpi.c_wpi_add_node_entry_adhoc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wpi/extr_if_wpi.c_wpi_add_node_entry_adhoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpi_softc = type { i32 }

@WPI_ID_IBSS_MIN = common dso_local global i32 0, align 4
@WPI_ID_IBSS_MAX = common dso_local global i32 0, align 4
@WPI_ID_UNDEFINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpi_softc*)* @wpi_add_node_entry_adhoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpi_add_node_entry_adhoc(%struct.wpi_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpi_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.wpi_softc* %0, %struct.wpi_softc** %3, align 8
  %5 = load i32, i32* @WPI_ID_IBSS_MIN, align 4
  store i32 %5, i32* %4, align 4
  br label %6

6:                                                ; preds = %27, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @WPI_ID_IBSS_MAX, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %30

10:                                               ; preds = %6
  %11 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %12 = getelementptr inbounds %struct.wpi_softc, %struct.wpi_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = shl i32 1, %14
  %16 = and i32 %13, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %10
  %19 = load i32, i32* %4, align 4
  %20 = shl i32 1, %19
  %21 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %22 = getelementptr inbounds %struct.wpi_softc, %struct.wpi_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %32

26:                                               ; preds = %10
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %6

30:                                               ; preds = %6
  %31 = load i32, i32* @WPI_ID_UNDEFINED, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %18
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
