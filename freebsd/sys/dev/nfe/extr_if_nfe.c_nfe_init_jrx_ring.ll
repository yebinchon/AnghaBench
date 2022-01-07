; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_init_jrx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_init_jrx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfe_softc = type { i32 }
%struct.nfe_jrx_ring = type { i32, i32, i8*, i8*, i64, i64 }

@NFE_40BIT_ADDR = common dso_local global i32 0, align 4
@NFE_JUMBO_RX_RING_COUNT = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfe_softc*, %struct.nfe_jrx_ring*)* @nfe_init_jrx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfe_init_jrx_ring(%struct.nfe_softc* %0, %struct.nfe_jrx_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfe_softc*, align 8
  %5 = alloca %struct.nfe_jrx_ring*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.nfe_softc* %0, %struct.nfe_softc** %4, align 8
  store %struct.nfe_jrx_ring* %1, %struct.nfe_jrx_ring** %5, align 8
  %9 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %5, align 8
  %10 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %9, i32 0, i32 4
  store i64 0, i64* %10, align 8
  %11 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %5, align 8
  %12 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %11, i32 0, i32 5
  store i64 0, i64* %12, align 8
  %13 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %14 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @NFE_40BIT_ADDR, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %5, align 8
  %21 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %20, i32 0, i32 3
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %6, align 8
  store i64 4, i64* %7, align 8
  br label %27

23:                                               ; preds = %2
  %24 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %5, align 8
  %25 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %24, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %6, align 8
  store i64 4, i64* %7, align 8
  br label %27

27:                                               ; preds = %23, %19
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @NFE_JUMBO_RX_RING_COUNT, align 8
  %31 = mul i64 %29, %30
  %32 = call i32 @bzero(i8* %28, i64 %31)
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %46, %27
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* @NFE_JUMBO_RX_RING_COUNT, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load %struct.nfe_softc*, %struct.nfe_softc** %4, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @nfe_jnewbuf(%struct.nfe_softc* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @ENOBUFS, align 4
  store i32 %44, i32* %3, align 4
  br label %60

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %33

49:                                               ; preds = %33
  %50 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %5, align 8
  %51 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.nfe_jrx_ring*, %struct.nfe_jrx_ring** %5, align 8
  %54 = getelementptr inbounds %struct.nfe_jrx_ring, %struct.nfe_jrx_ring* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %57 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @bus_dmamap_sync(i32 %52, i32 %55, i32 %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %49, %43
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @bzero(i8*, i64) #1

declare dso_local i64 @nfe_jnewbuf(%struct.nfe_softc*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
