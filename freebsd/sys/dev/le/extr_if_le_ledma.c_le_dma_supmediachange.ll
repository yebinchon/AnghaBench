; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/le/extr_if_le_ledma.c_le_dma_supmediachange.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/le/extr_if_le_ledma.c_le_dma_supmediachange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lance_softc = type { %struct.ifmedia }
%struct.ifmedia = type { i32 }

@IFM_ETHER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lance_softc*)* @le_dma_supmediachange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @le_dma_supmediachange(%struct.lance_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lance_softc*, align 8
  %4 = alloca %struct.ifmedia*, align 8
  store %struct.lance_softc* %0, %struct.lance_softc** %3, align 8
  %5 = load %struct.lance_softc*, %struct.lance_softc** %3, align 8
  %6 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %5, i32 0, i32 0
  store %struct.ifmedia* %6, %struct.ifmedia** %4, align 8
  %7 = load %struct.ifmedia*, %struct.ifmedia** %4, align 8
  %8 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @IFM_TYPE(i32 %9)
  %11 = load i64, i64* @IFM_ETHER, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %2, align 4
  br label %30

15:                                               ; preds = %1
  %16 = load %struct.ifmedia*, %struct.ifmedia** %4, align 8
  %17 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @IFM_SUBTYPE(i32 %18)
  switch i32 %19, label %27 [
    i32 129, label %20
    i32 130, label %23
    i32 128, label %26
  ]

20:                                               ; preds = %15
  %21 = load %struct.lance_softc*, %struct.lance_softc** %3, align 8
  %22 = call i32 @le_dma_setutp(%struct.lance_softc* %21)
  br label %29

23:                                               ; preds = %15
  %24 = load %struct.lance_softc*, %struct.lance_softc** %3, align 8
  %25 = call i32 @le_dma_setaui(%struct.lance_softc* %24)
  br label %29

26:                                               ; preds = %15
  br label %29

27:                                               ; preds = %15
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %2, align 4
  br label %30

29:                                               ; preds = %26, %23, %20
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %27, %13
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @IFM_TYPE(i32) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @le_dma_setutp(%struct.lance_softc*) #1

declare dso_local i32 @le_dma_setaui(%struct.lance_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
