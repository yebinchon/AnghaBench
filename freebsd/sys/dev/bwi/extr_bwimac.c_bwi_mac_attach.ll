; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_softc = type { i64, i64, i32, %struct.bwi_mac* }
%struct.bwi_mac = type { i32, i32, i32 }

@BWI_MAC_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"sc_nmac %d\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"too many MACs\0A\00", align 1
@PCI_PRODUCT_BROADCOM_BCM4309 = common dso_local global i64 0, align 8
@BWI_DBG_MAC = common dso_local global i32 0, align 4
@BWI_DBG_ATTACH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"ignore second MAC\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"%dth MAC already attached\0A\00", align 1
@bwi_sup_macrev = common dso_local global i64* null, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"MAC rev %u is not supported\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@BWI_MAC_F_HAS_TXSTATS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"has TX stats\00", align 1
@BWI_MAC_F_PHYE_RESET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"MAC: rev %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bwi_mac_attach(%struct.bwi_softc* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bwi_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.bwi_mac*, align 8
  %9 = alloca i32, align 4
  store %struct.bwi_softc* %0, %struct.bwi_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %11 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @BWI_MAC_MAX, align 8
  %14 = icmp ule i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %17 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp uge i64 %18, 0
  br label %20

20:                                               ; preds = %15, %3
  %21 = phi i1 [ false, %3 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  %23 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %24 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @KASSERT(i32 %22, i8* %26)
  %28 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %29 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BWI_MAC_MAX, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %20
  %34 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %35 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i32, i8*, ...) @device_printf(i32 %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %143

38:                                               ; preds = %20
  %39 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %40 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %45 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PCI_PRODUCT_BROADCOM_BCM4309, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %51 = load i32, i32* @BWI_DBG_MAC, align 4
  %52 = load i32, i32* @BWI_DBG_ATTACH, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @DPRINTF(%struct.bwi_softc* %50, i32 %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %143

55:                                               ; preds = %43, %38
  %56 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %57 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %56, i32 0, i32 3
  %58 = load %struct.bwi_mac*, %struct.bwi_mac** %57, align 8
  %59 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %60 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %58, i64 %61
  store %struct.bwi_mac* %62, %struct.bwi_mac** %8, align 8
  %63 = load %struct.bwi_mac*, %struct.bwi_mac** %8, align 8
  %64 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %63, i32 0, i32 2
  %65 = call i64 @BWI_REGWIN_EXIST(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %55
  %68 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %69 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %72 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 (i32, i8*, ...) @device_printf(i32 %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %73)
  store i32 0, i32* %4, align 4
  br label %143

75:                                               ; preds = %55
  store i32 0, i32* %9, align 4
  br label %76

76:                                               ; preds = %91, %75
  %77 = load i32, i32* %9, align 4
  %78 = load i64*, i64** @bwi_sup_macrev, align 8
  %79 = call i32 @nitems(i64* %78)
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %76
  %82 = load i64*, i64** @bwi_sup_macrev, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %7, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %94

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %76

94:                                               ; preds = %89, %76
  %95 = load i32, i32* %9, align 4
  %96 = load i64*, i64** @bwi_sup_macrev, align 8
  %97 = call i32 @nitems(i64* %96)
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %94
  %100 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %101 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i64, i64* %7, align 8
  %104 = call i32 (i32, i8*, ...) @device_printf(i32 %102, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i64 %103)
  %105 = load i32, i32* @ENXIO, align 4
  store i32 %105, i32* %4, align 4
  br label %143

106:                                              ; preds = %94
  %107 = load %struct.bwi_mac*, %struct.bwi_mac** %8, align 8
  %108 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %109 = load i32, i32* %6, align 4
  %110 = load i64, i64* %7, align 8
  %111 = call i32 @BWI_CREATE_MAC(%struct.bwi_mac* %107, %struct.bwi_softc* %108, i32 %109, i64 %110)
  %112 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %113 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %113, align 8
  %116 = load %struct.bwi_mac*, %struct.bwi_mac** %8, align 8
  %117 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp slt i32 %118, 5
  br i1 %119, label %120, label %131

120:                                              ; preds = %106
  %121 = load i32, i32* @BWI_MAC_F_HAS_TXSTATS, align 4
  %122 = load %struct.bwi_mac*, %struct.bwi_mac** %8, align 8
  %123 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 4
  %126 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %127 = load i32, i32* @BWI_DBG_MAC, align 4
  %128 = load i32, i32* @BWI_DBG_ATTACH, align 4
  %129 = or i32 %127, %128
  %130 = call i32 @DPRINTF(%struct.bwi_softc* %126, i32 %129, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %137

131:                                              ; preds = %106
  %132 = load i32, i32* @BWI_MAC_F_PHYE_RESET, align 4
  %133 = load %struct.bwi_mac*, %struct.bwi_mac** %8, align 8
  %134 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 4
  br label %137

137:                                              ; preds = %131, %120
  %138 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %139 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load i64, i64* %7, align 8
  %142 = call i32 (i32, i8*, ...) @device_printf(i32 %140, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i64 %141)
  store i32 0, i32* %4, align 4
  br label %143

143:                                              ; preds = %137, %99, %67, %49, %33
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @DPRINTF(%struct.bwi_softc*, i32, i8*, i8*) #1

declare dso_local i64 @BWI_REGWIN_EXIST(i32*) #1

declare dso_local i32 @nitems(i64*) #1

declare dso_local i32 @BWI_CREATE_MAC(%struct.bwi_mac*, %struct.bwi_softc*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
