; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_rx_fill.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_rx_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msk_if_softc = type { i32, %struct.TYPE_4__, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@MSK_FLAG_DESCV2 = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@PREF_UNIT_GET_IDX_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"prefetch unit stuck?\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@PREF_UNIT_PUT_IDX_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msk_if_softc*, i32)* @msk_rx_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msk_rx_fill(%struct.msk_if_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msk_if_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.msk_if_softc* %0, %struct.msk_if_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %9 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @MSK_FLAG_DESCV2, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %112

14:                                               ; preds = %2
  %15 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %16 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %15, i32 0, i32 5
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IFCAP_RXCSUM, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %112

23:                                               ; preds = %14
  store i32 100, i32* %7, align 4
  br label %24

24:                                               ; preds = %42, %23
  %25 = load i32, i32* %7, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %24
  %28 = call i32 @DELAY(i32 100)
  %29 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %30 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %33 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @PREF_UNIT_GET_IDX_REG, align 4
  %36 = call i32 @Y2_PREF_Q_ADDR(i32 %34, i32 %35)
  %37 = call i64 @CSR_READ_2(i32 %31, i32 %36)
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  br label %45

41:                                               ; preds = %27
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %7, align 4
  br label %24

45:                                               ; preds = %40, %24
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %50 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @device_printf(i32 %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %53, i32* %3, align 4
  br label %113

54:                                               ; preds = %45
  %55 = load i32, i32* %5, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %76

57:                                               ; preds = %54
  %58 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %59 = call i64 @msk_jumbo_newbuf(%struct.msk_if_softc* %58, i32 0)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @ENOBUFS, align 4
  store i32 %62, i32* %3, align 4
  br label %113

63:                                               ; preds = %57
  %64 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %65 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %69 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %73 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @bus_dmamap_sync(i32 %67, i32 %71, i32 %74)
  br label %95

76:                                               ; preds = %54
  %77 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %78 = call i64 @msk_newbuf(%struct.msk_if_softc* %77, i32 0)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* @ENOBUFS, align 4
  store i32 %81, i32* %3, align 4
  br label %113

82:                                               ; preds = %76
  %83 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %84 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %88 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %92 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @bus_dmamap_sync(i32 %86, i32 %90, i32 %93)
  br label %95

95:                                               ; preds = %82, %63
  %96 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %97 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i64 0, i64* %98, align 8
  %99 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %100 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %103 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @PREF_UNIT_PUT_IDX_REG, align 4
  %106 = call i32 @Y2_PREF_Q_ADDR(i32 %104, i32 %105)
  %107 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %108 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @CSR_WRITE_2(i32 %101, i32 %106, i64 %110)
  br label %112

112:                                              ; preds = %95, %14, %2
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %112, %80, %61, %48
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @DELAY(i32) #1

declare dso_local i64 @CSR_READ_2(i32, i32) #1

declare dso_local i32 @Y2_PREF_Q_ADDR(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @msk_jumbo_newbuf(%struct.msk_if_softc*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i64 @msk_newbuf(%struct.msk_if_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_2(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
