; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_stats_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_stats_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_softc = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.smb* }
%struct.smb = type { i32, i32, i32, i32, i64 }

@ALC_FLAG_SMB_BUG = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@ALC_RX_MIB_BASE = common dso_local global i64 0, align 8
@ALC_TX_MIB_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alc_softc*)* @alc_stats_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_stats_clear(%struct.alc_softc* %0) #0 {
  %2 = alloca %struct.alc_softc*, align 8
  %3 = alloca %struct.smb, align 8
  %4 = alloca %struct.smb*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.alc_softc* %0, %struct.alc_softc** %2, align 8
  %7 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %8 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @ALC_FLAG_SMB_BUG, align 4
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %44

13:                                               ; preds = %1
  %14 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %15 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %19 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %23 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @bus_dmamap_sync(i32 %17, i32 %21, i32 %24)
  %26 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %27 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.smb*, %struct.smb** %28, align 8
  store %struct.smb* %29, %struct.smb** %4, align 8
  %30 = load %struct.smb*, %struct.smb** %4, align 8
  %31 = getelementptr inbounds %struct.smb, %struct.smb* %30, i32 0, i32 4
  store i64 0, i64* %31, align 8
  %32 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %33 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %37 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %41 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @bus_dmamap_sync(i32 %35, i32 %39, i32 %42)
  br label %85

44:                                               ; preds = %1
  %45 = getelementptr inbounds %struct.smb, %struct.smb* %3, i32 0, i32 3
  store i32* %45, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %61, %44
  %47 = load i32*, i32** %5, align 8
  %48 = getelementptr inbounds %struct.smb, %struct.smb* %3, i32 0, i32 2
  %49 = icmp ule i32* %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %46
  %51 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %52 = load i64, i64* @ALC_RX_MIB_BASE, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = call i32 @CSR_READ_4(%struct.alc_softc* %51, i64 %55)
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = add i64 %58, 4
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %50
  %62 = load i32*, i32** %5, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %5, align 8
  br label %46

64:                                               ; preds = %46
  %65 = getelementptr inbounds %struct.smb, %struct.smb* %3, i32 0, i32 1
  store i32* %65, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %81, %64
  %67 = load i32*, i32** %5, align 8
  %68 = getelementptr inbounds %struct.smb, %struct.smb* %3, i32 0, i32 0
  %69 = icmp ule i32* %67, %68
  br i1 %69, label %70, label %84

70:                                               ; preds = %66
  %71 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %72 = load i64, i64* @ALC_TX_MIB_BASE, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %72, %74
  %76 = call i32 @CSR_READ_4(%struct.alc_softc* %71, i64 %75)
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = add i64 %78, 4
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %70
  %82 = load i32*, i32** %5, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %5, align 8
  br label %66

84:                                               ; preds = %66
  br label %85

85:                                               ; preds = %84, %13
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.alc_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
