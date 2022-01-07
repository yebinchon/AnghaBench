; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ubsec/extr_ubsec.c_ubsec_kfree.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ubsec/extr_ubsec.c_ubsec_kfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubsec_softc = type { i32 }
%struct.ubsec_q2 = type { i32 }
%struct.ubsec_q2_modexp = type { i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ubsec_q2_rsapriv = type { i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, %struct.TYPE_3__ }

@M_DEVBUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"invalid kfree 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubsec_softc*, %struct.ubsec_q2*)* @ubsec_kfree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ubsec_kfree(%struct.ubsec_softc* %0, %struct.ubsec_q2* %1) #0 {
  %3 = alloca %struct.ubsec_softc*, align 8
  %4 = alloca %struct.ubsec_q2*, align 8
  %5 = alloca %struct.ubsec_q2_modexp*, align 8
  %6 = alloca %struct.ubsec_q2_rsapriv*, align 8
  store %struct.ubsec_softc* %0, %struct.ubsec_softc** %3, align 8
  store %struct.ubsec_q2* %1, %struct.ubsec_q2** %4, align 8
  %7 = load %struct.ubsec_q2*, %struct.ubsec_q2** %4, align 8
  %8 = getelementptr inbounds %struct.ubsec_q2, %struct.ubsec_q2* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %67 [
    i32 129, label %10
    i32 128, label %43
  ]

10:                                               ; preds = %2
  %11 = load %struct.ubsec_q2*, %struct.ubsec_q2** %4, align 8
  %12 = bitcast %struct.ubsec_q2* %11 to %struct.ubsec_q2_modexp*
  store %struct.ubsec_q2_modexp* %12, %struct.ubsec_q2_modexp** %5, align 8
  %13 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %14 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %5, align 8
  %15 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %14, i32 0, i32 7
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = call i32 @ubsec_dma_free(%struct.ubsec_softc* %13, i32* %16)
  %18 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %19 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %5, align 8
  %20 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %19, i32 0, i32 7
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = call i32 @ubsec_dma_free(%struct.ubsec_softc* %18, i32* %21)
  %23 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %24 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %5, align 8
  %25 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %24, i32 0, i32 6
  %26 = call i32 @ubsec_dma_free(%struct.ubsec_softc* %23, i32* %25)
  %27 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %28 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %5, align 8
  %29 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %28, i32 0, i32 5
  %30 = call i32 @ubsec_dma_free(%struct.ubsec_softc* %27, i32* %29)
  %31 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %32 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %5, align 8
  %33 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %32, i32 0, i32 4
  %34 = call i32 @ubsec_dma_free(%struct.ubsec_softc* %31, i32* %33)
  %35 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %36 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %5, align 8
  %37 = getelementptr inbounds %struct.ubsec_q2_modexp, %struct.ubsec_q2_modexp* %36, i32 0, i32 3
  %38 = call i32 @ubsec_dma_free(%struct.ubsec_softc* %35, i32* %37)
  %39 = load %struct.ubsec_q2_modexp*, %struct.ubsec_q2_modexp** %5, align 8
  %40 = bitcast %struct.ubsec_q2_modexp* %39 to %struct.ubsec_q2_rsapriv*
  %41 = load i32, i32* @M_DEVBUF, align 4
  %42 = call i32 @free(%struct.ubsec_q2_rsapriv* %40, i32 %41)
  br label %75

43:                                               ; preds = %2
  %44 = load %struct.ubsec_q2*, %struct.ubsec_q2** %4, align 8
  %45 = bitcast %struct.ubsec_q2* %44 to %struct.ubsec_q2_rsapriv*
  store %struct.ubsec_q2_rsapriv* %45, %struct.ubsec_q2_rsapriv** %6, align 8
  %46 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %47 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %6, align 8
  %48 = getelementptr inbounds %struct.ubsec_q2_rsapriv, %struct.ubsec_q2_rsapriv* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = call i32 @ubsec_dma_free(%struct.ubsec_softc* %46, i32* %49)
  %51 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %52 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %6, align 8
  %53 = getelementptr inbounds %struct.ubsec_q2_rsapriv, %struct.ubsec_q2_rsapriv* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = call i32 @ubsec_dma_free(%struct.ubsec_softc* %51, i32* %54)
  %56 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %57 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %6, align 8
  %58 = getelementptr inbounds %struct.ubsec_q2_rsapriv, %struct.ubsec_q2_rsapriv* %57, i32 0, i32 1
  %59 = call i32 @ubsec_dma_free(%struct.ubsec_softc* %56, i32* %58)
  %60 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %61 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %6, align 8
  %62 = getelementptr inbounds %struct.ubsec_q2_rsapriv, %struct.ubsec_q2_rsapriv* %61, i32 0, i32 0
  %63 = call i32 @ubsec_dma_free(%struct.ubsec_softc* %60, i32* %62)
  %64 = load %struct.ubsec_q2_rsapriv*, %struct.ubsec_q2_rsapriv** %6, align 8
  %65 = load i32, i32* @M_DEVBUF, align 4
  %66 = call i32 @free(%struct.ubsec_q2_rsapriv* %64, i32 %65)
  br label %75

67:                                               ; preds = %2
  %68 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %69 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ubsec_q2*, %struct.ubsec_q2** %4, align 8
  %72 = getelementptr inbounds %struct.ubsec_q2, %struct.ubsec_q2* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @device_printf(i32 %70, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %67, %43, %10
  ret void
}

declare dso_local i32 @ubsec_dma_free(%struct.ubsec_softc*, i32*) #1

declare dso_local i32 @free(%struct.ubsec_q2_rsapriv*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
