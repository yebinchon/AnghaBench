; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_destroy_rx_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_destroy_rx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32, i32, i64, %struct.hn_rx_ring*, i32, i32*, i32 }
%struct.hn_rx_ring = type { i32, %struct.hn_rx_ring*, i32, i32*, i32 }

@HN_FLAG_RXBUF_REF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"RXBUF is referenced\0A\00", align 1
@HN_RX_FLAG_BR_REF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"%dth channel bufring is referenced\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hn_softc*)* @hn_destroy_rx_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_destroy_rx_data(%struct.hn_softc* %0) #0 {
  %2 = alloca %struct.hn_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hn_rx_ring*, align 8
  store %struct.hn_softc* %0, %struct.hn_softc** %2, align 8
  %5 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %6 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %5, i32 0, i32 5
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %31

9:                                                ; preds = %1
  %10 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %11 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @HN_FLAG_RXBUF_REF, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %9
  %17 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %18 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %17, i32 0, i32 6
  %19 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %20 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %19, i32 0, i32 5
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @hyperv_dmamem_free(i32* %18, i32* %21)
  br label %28

23:                                               ; preds = %9
  %24 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %25 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i32, i8*, ...) @device_printf(i32 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %23, %16
  %29 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %30 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %29, i32 0, i32 5
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %28, %1
  %32 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %33 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %99

37:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %84, %37
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %41 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %87

44:                                               ; preds = %38
  %45 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %46 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %45, i32 0, i32 3
  %47 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.hn_rx_ring, %struct.hn_rx_ring* %47, i64 %49
  store %struct.hn_rx_ring* %50, %struct.hn_rx_ring** %4, align 8
  %51 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %4, align 8
  %52 = getelementptr inbounds %struct.hn_rx_ring, %struct.hn_rx_ring* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  br label %84

56:                                               ; preds = %44
  %57 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %4, align 8
  %58 = getelementptr inbounds %struct.hn_rx_ring, %struct.hn_rx_ring* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @HN_RX_FLAG_BR_REF, align 4
  %61 = and i32 %59, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %56
  %64 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %4, align 8
  %65 = getelementptr inbounds %struct.hn_rx_ring, %struct.hn_rx_ring* %64, i32 0, i32 4
  %66 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %4, align 8
  %67 = getelementptr inbounds %struct.hn_rx_ring, %struct.hn_rx_ring* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @hyperv_dmamem_free(i32* %65, i32* %68)
  br label %76

70:                                               ; preds = %56
  %71 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %72 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %3, align 4
  %75 = call i32 (i32, i8*, ...) @device_printf(i32 %73, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %70, %63
  %77 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %4, align 8
  %78 = getelementptr inbounds %struct.hn_rx_ring, %struct.hn_rx_ring* %77, i32 0, i32 3
  store i32* null, i32** %78, align 8
  %79 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %4, align 8
  %80 = getelementptr inbounds %struct.hn_rx_ring, %struct.hn_rx_ring* %79, i32 0, i32 1
  %81 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %80, align 8
  %82 = load i32, i32* @M_DEVBUF, align 4
  %83 = call i32 @free(%struct.hn_rx_ring* %81, i32 %82)
  br label %84

84:                                               ; preds = %76, %55
  %85 = load i32, i32* %3, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %3, align 4
  br label %38

87:                                               ; preds = %38
  %88 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %89 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %88, i32 0, i32 3
  %90 = load %struct.hn_rx_ring*, %struct.hn_rx_ring** %89, align 8
  %91 = load i32, i32* @M_DEVBUF, align 4
  %92 = call i32 @free(%struct.hn_rx_ring* %90, i32 %91)
  %93 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %94 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %93, i32 0, i32 3
  store %struct.hn_rx_ring* null, %struct.hn_rx_ring** %94, align 8
  %95 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %96 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %95, i32 0, i32 1
  store i32 0, i32* %96, align 4
  %97 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %98 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %97, i32 0, i32 2
  store i64 0, i64* %98, align 8
  br label %99

99:                                               ; preds = %87, %36
  ret void
}

declare dso_local i32 @hyperv_dmamem_free(i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @free(%struct.hn_rx_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
