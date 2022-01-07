; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_destroy_tx_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_destroy_tx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32, i32, i64, i32*, i32*, i32, i32 }

@HN_FLAG_CHIM_REF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"chimney sending buffer is referenced\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hn_softc*)* @hn_destroy_tx_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_destroy_tx_data(%struct.hn_softc* %0) #0 {
  %2 = alloca %struct.hn_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.hn_softc* %0, %struct.hn_softc** %2, align 8
  %4 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %5 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %4, i32 0, i32 4
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %30

8:                                                ; preds = %1
  %9 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %10 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @HN_FLAG_CHIM_REF, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %8
  %16 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %17 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %16, i32 0, i32 6
  %18 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %19 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @hyperv_dmamem_free(i32* %17, i32* %20)
  br label %27

22:                                               ; preds = %8
  %23 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %24 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %22, %15
  %28 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %29 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %28, i32 0, i32 4
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %27, %1
  %31 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %32 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %66

36:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %51, %36
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %40 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %37
  %44 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %45 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = call i32 @hn_tx_ring_destroy(i32* %49)
  br label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %37

54:                                               ; preds = %37
  %55 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %56 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* @M_DEVBUF, align 4
  %59 = call i32 @free(i32* %57, i32 %58)
  %60 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %61 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %60, i32 0, i32 3
  store i32* null, i32** %61, align 8
  %62 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %63 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %62, i32 0, i32 1
  store i32 0, i32* %63, align 4
  %64 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %65 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %64, i32 0, i32 2
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %54, %35
  ret void
}

declare dso_local i32 @hyperv_dmamem_free(i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @hn_tx_ring_destroy(i32*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
