; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_e82545.c_e82545_intr_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_e82545.c_e82545_intr_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e82545_softc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"intr_read: off %x\0A\0D\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e82545_softc*, i32)* @e82545_intr_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e82545_intr_read(%struct.e82545_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.e82545_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.e82545_softc* %0, %struct.e82545_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @DPRINTF(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %27 [
    i32 132, label %9
    i32 128, label %17
    i32 131, label %21
    i32 129, label %22
    i32 130, label %26
  ]

9:                                                ; preds = %2
  %10 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %11 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %14 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %13, i32 0, i32 0
  store i32 0, i32* %14, align 4
  %15 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %16 = call i32 @e82545_icr_deassert(%struct.e82545_softc* %15, i32 -1)
  br label %28

17:                                               ; preds = %2
  %18 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %19 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  br label %28

21:                                               ; preds = %2
  br label %28

22:                                               ; preds = %2
  %23 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %24 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %5, align 4
  br label %28

26:                                               ; preds = %2
  br label %28

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %27, %26, %22, %21, %17, %9
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @e82545_icr_deassert(%struct.e82545_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
