; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_can_use_msi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_can_use_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i64, i32, i32 }

@BGE_CHIPREV_5750_AX = common dso_local global i32 0, align 4
@BGE_CHIPREV_5750_BX = common dso_local global i32 0, align 4
@BGE_CHIPREV_5784_AX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bge_softc*)* @bge_can_use_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bge_can_use_msi(%struct.bge_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bge_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.bge_softc* %0, %struct.bge_softc** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %6 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %50

10:                                               ; preds = %1
  %11 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %12 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %42 [
    i32 130, label %14
    i32 131, label %14
    i32 129, label %20
    i32 128, label %34
  ]

14:                                               ; preds = %10, %10
  %15 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %16 = call i32 @bge_has_multiple_ports(%struct.bge_softc* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 1, i32* %4, align 4
  br label %19

19:                                               ; preds = %18, %14
  br label %48

20:                                               ; preds = %10
  %21 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %22 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @BGE_CHIPREV_5750_AX, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %28 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @BGE_CHIPREV_5750_BX, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 1, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %26, %20
  br label %48

34:                                               ; preds = %10
  %35 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %36 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @BGE_CHIPREV_5784_AX, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %48

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %10, %41
  %43 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %44 = call i32 @BGE_IS_575X_PLUS(%struct.bge_softc* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 1, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %42
  br label %48

48:                                               ; preds = %47, %40, %33, %19
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %9
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @bge_has_multiple_ports(%struct.bge_softc*) #1

declare dso_local i32 @BGE_IS_575X_PLUS(%struct.bge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
