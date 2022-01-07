; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wpi/extr_if_wpi.c_wpi_mrr_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wpi/extr_if_wpi.c_wpi_mrr_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpi_softc = type { i32, %struct.ieee80211com }
%struct.ieee80211com = type { i64 }
%struct.wpi_mrr_setup = type { i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i8*, i8*, i64 }

@WPI_RIDX_CCK1 = common dso_local global i64 0, align 8
@WPI_RIDX_CCK11 = common dso_local global i64 0, align 8
@wpi_ridx_to_plcp = common dso_local global i8** null, align 8
@WPI_NTRIES_DEFAULT = common dso_local global i8* null, align 8
@WPI_RIDX_OFDM6 = common dso_local global i64 0, align 8
@WPI_RIDX_OFDM54 = common dso_local global i64 0, align 8
@IEEE80211_MODE_11A = common dso_local global i64 0, align 8
@WPI_RIDX_CCK2 = common dso_local global i64 0, align 8
@WPI_MRR_CTL = common dso_local global i32 0, align 4
@WPI_CMD_MRR_SETUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"could not setup MRR for control frames\0A\00", align 1
@WPI_MRR_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"could not setup MRR for data frames\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpi_softc*)* @wpi_mrr_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpi_mrr_setup(%struct.wpi_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpi_softc*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca %struct.wpi_mrr_setup, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.wpi_softc* %0, %struct.wpi_softc** %3, align 8
  %8 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %9 = getelementptr inbounds %struct.wpi_softc, %struct.wpi_softc* %8, i32 0, i32 1
  store %struct.ieee80211com* %9, %struct.ieee80211com** %4, align 8
  %10 = load i64, i64* @WPI_RIDX_CCK1, align 8
  store i64 %10, i64* %6, align 8
  br label %11

11:                                               ; preds = %51, %1
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @WPI_RIDX_CCK11, align 8
  %14 = icmp ule i64 %12, %13
  br i1 %14, label %15, label %54

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.wpi_mrr_setup, %struct.wpi_mrr_setup* %5, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load i8**, i8*** @wpi_ridx_to_plcp, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds i8*, i8** %21, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds %struct.wpi_mrr_setup, %struct.wpi_mrr_setup* %5, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i8* %24, i8** %29, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @WPI_RIDX_CCK1, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %15
  %34 = load i64, i64* @WPI_RIDX_CCK1, align 8
  br label %38

35:                                               ; preds = %15
  %36 = load i64, i64* %6, align 8
  %37 = sub i64 %36, 1
  br label %38

38:                                               ; preds = %35, %33
  %39 = phi i64 [ %34, %33 ], [ %37, %35 ]
  %40 = getelementptr inbounds %struct.wpi_mrr_setup, %struct.wpi_mrr_setup* %5, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i64 %39, i64* %44, align 8
  %45 = load i8*, i8** @WPI_NTRIES_DEFAULT, align 8
  %46 = getelementptr inbounds %struct.wpi_mrr_setup, %struct.wpi_mrr_setup* %5, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i8* %45, i8** %50, align 8
  br label %51

51:                                               ; preds = %38
  %52 = load i64, i64* %6, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %6, align 8
  br label %11

54:                                               ; preds = %11
  %55 = load i64, i64* @WPI_RIDX_OFDM6, align 8
  store i64 %55, i64* %6, align 8
  br label %56

56:                                               ; preds = %106, %54
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* @WPI_RIDX_OFDM54, align 8
  %59 = icmp ule i64 %57, %58
  br i1 %59, label %60, label %109

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.wpi_mrr_setup, %struct.wpi_mrr_setup* %5, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i64, i64* %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 3
  store i64 0, i64* %65, align 8
  %66 = load i8**, i8*** @wpi_ridx_to_plcp, align 8
  %67 = load i64, i64* %6, align 8
  %68 = getelementptr inbounds i8*, i8** %66, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds %struct.wpi_mrr_setup, %struct.wpi_mrr_setup* %5, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i64, i64* %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  store i8* %69, i8** %74, align 8
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* @WPI_RIDX_OFDM6, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %60
  %79 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %80 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @IEEE80211_MODE_11A, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i64, i64* @WPI_RIDX_OFDM6, align 8
  br label %88

86:                                               ; preds = %78
  %87 = load i64, i64* @WPI_RIDX_CCK2, align 8
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i64 [ %85, %84 ], [ %87, %86 ]
  br label %93

90:                                               ; preds = %60
  %91 = load i64, i64* %6, align 8
  %92 = sub i64 %91, 1
  br label %93

93:                                               ; preds = %90, %88
  %94 = phi i64 [ %89, %88 ], [ %92, %90 ]
  %95 = getelementptr inbounds %struct.wpi_mrr_setup, %struct.wpi_mrr_setup* %5, i32 0, i32 1
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i64, i64* %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  store i64 %94, i64* %99, align 8
  %100 = load i8*, i8** @WPI_NTRIES_DEFAULT, align 8
  %101 = getelementptr inbounds %struct.wpi_mrr_setup, %struct.wpi_mrr_setup* %5, i32 0, i32 1
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = load i64, i64* %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  store i8* %100, i8** %105, align 8
  br label %106

106:                                              ; preds = %93
  %107 = load i64, i64* %6, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %6, align 8
  br label %56

109:                                              ; preds = %56
  %110 = load i32, i32* @WPI_MRR_CTL, align 4
  %111 = call i8* @htole32(i32 %110)
  %112 = getelementptr inbounds %struct.wpi_mrr_setup, %struct.wpi_mrr_setup* %5, i32 0, i32 0
  store i8* %111, i8** %112, align 8
  %113 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %114 = load i32, i32* @WPI_CMD_MRR_SETUP, align 4
  %115 = call i32 @wpi_cmd(%struct.wpi_softc* %113, i32 %114, %struct.wpi_mrr_setup* %5, i32 16, i32 0)
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %109
  %119 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %120 = getelementptr inbounds %struct.wpi_softc, %struct.wpi_softc* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @device_printf(i32 %121, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %123 = load i32, i32* %7, align 4
  store i32 %123, i32* %2, align 4
  br label %140

124:                                              ; preds = %109
  %125 = load i32, i32* @WPI_MRR_DATA, align 4
  %126 = call i8* @htole32(i32 %125)
  %127 = getelementptr inbounds %struct.wpi_mrr_setup, %struct.wpi_mrr_setup* %5, i32 0, i32 0
  store i8* %126, i8** %127, align 8
  %128 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %129 = load i32, i32* @WPI_CMD_MRR_SETUP, align 4
  %130 = call i32 @wpi_cmd(%struct.wpi_softc* %128, i32 %129, %struct.wpi_mrr_setup* %5, i32 16, i32 0)
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %124
  %134 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %135 = getelementptr inbounds %struct.wpi_softc, %struct.wpi_softc* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @device_printf(i32 %136, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %138 = load i32, i32* %7, align 4
  store i32 %138, i32* %2, align 4
  br label %140

139:                                              ; preds = %124
  store i32 0, i32* %2, align 4
  br label %140

140:                                              ; preds = %139, %133, %118
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @wpi_cmd(%struct.wpi_softc*, i32, %struct.wpi_mrr_setup*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
