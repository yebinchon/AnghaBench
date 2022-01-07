; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_rxq_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_rxq_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgb_softc = type { i32 }
%struct.TYPE_3__ = type { i32 }

@MGB_INTR_STS = common dso_local global i32 0, align 4
@MGB_INTR_ENBL_SET = common dso_local global i32 0, align 4
@MGB_INTR_ENBL_CLR = common dso_local global i32 0, align 4
@FILTER_SCHEDULE_THREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @mgb_rxq_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mgb_rxq_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mgb_softc*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.mgb_softc*
  store %struct.mgb_softc* %9, %struct.mgb_softc** %3, align 8
  %10 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %11 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_3__* @iflib_get_softc_ctx(i32 %12)
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %4, align 8
  %14 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %15 = load i32, i32* @MGB_INTR_STS, align 4
  %16 = call i32 @CSR_READ_REG(%struct.mgb_softc* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %18 = load i32, i32* @MGB_INTR_ENBL_SET, align 4
  %19 = call i32 @CSR_READ_REG(%struct.mgb_softc* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %47, %1
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @MGB_INTR_STS_RX(i32 %31)
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  %36 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %37 = load i32, i32* @MGB_INTR_ENBL_CLR, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @MGB_INTR_STS_RX(i32 %38)
  %40 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %36, i32 %37, i32 %39)
  %41 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %42 = load i32, i32* @MGB_INTR_STS, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @MGB_INTR_STS_RX(i32 %43)
  %45 = call i32 @CSR_WRITE_REG(%struct.mgb_softc* %41, i32 %42, i32 %44)
  br label %46

46:                                               ; preds = %35, %29
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %23

50:                                               ; preds = %23
  %51 = load i32, i32* @FILTER_SCHEDULE_THREAD, align 4
  ret i32 %51
}

declare dso_local %struct.TYPE_3__* @iflib_get_softc_ctx(i32) #1

declare dso_local i32 @CSR_READ_REG(%struct.mgb_softc*, i32) #1

declare dso_local i32 @MGB_INTR_STS_RX(i32) #1

declare dso_local i32 @CSR_WRITE_REG(%struct.mgb_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
