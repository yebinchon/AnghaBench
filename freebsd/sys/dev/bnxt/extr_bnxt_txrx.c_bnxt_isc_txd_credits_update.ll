; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_txrx.c_bnxt_isc_txd_credits_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_txrx.c_bnxt_isc_txd_credits_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32, %struct.bnxt_cp_ring* }
%struct.bnxt_cp_ring = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.tx_cmpl = type { i64, i32, i32 }

@TX_CMPL_TYPE_MASK = common dso_local global i64 0, align 8
@TX_CMPL_ERRORS_BUFFER_ERROR_MASK = common dso_local global i64 0, align 8
@TX_CMPL_ERRORS_BUFFER_ERROR_SFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"TX completion error %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Unhandled TX completion type %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32)* @bnxt_isc_txd_credits_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_isc_txd_credits_update(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnxt_softc*, align 8
  %8 = alloca %struct.bnxt_cp_ring*, align 8
  %9 = alloca %struct.tx_cmpl*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to %struct.bnxt_softc*
  store %struct.bnxt_softc* %18, %struct.bnxt_softc** %7, align 8
  %19 = load %struct.bnxt_softc*, %struct.bnxt_softc** %7, align 8
  %20 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %19, i32 0, i32 1
  %21 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %21, i64 %22
  store %struct.bnxt_cp_ring* %23, %struct.bnxt_cp_ring** %8, align 8
  %24 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %8, align 8
  %25 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.tx_cmpl*
  store %struct.tx_cmpl* %28, %struct.tx_cmpl** %9, align 8
  store i32 0, i32* %10, align 4
  %29 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %8, align 8
  %30 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %11, align 8
  %32 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %8, align 8
  %33 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %12, align 4
  br label %35

35:                                               ; preds = %118, %3
  %36 = load i64, i64* %11, align 8
  store i64 %36, i64* %14, align 8
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %13, align 4
  %38 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %8, align 8
  %39 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %38, i32 0, i32 2
  %40 = load i64, i64* %11, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @NEXT_CP_CONS_V(%struct.TYPE_3__* %39, i64 %40, i32 %41)
  %43 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %8, align 8
  %44 = load i64, i64* %11, align 8
  %45 = call i32 @CMPL_PREFETCH_NEXT(%struct.bnxt_cp_ring* %43, i64 %44)
  %46 = load %struct.tx_cmpl*, %struct.tx_cmpl** %9, align 8
  %47 = load i64, i64* %11, align 8
  %48 = getelementptr inbounds %struct.tx_cmpl, %struct.tx_cmpl* %46, i64 %47
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @CMP_VALID(%struct.tx_cmpl* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %35
  br label %119

53:                                               ; preds = %35
  %54 = load %struct.tx_cmpl*, %struct.tx_cmpl** %9, align 8
  %55 = load i64, i64* %11, align 8
  %56 = getelementptr inbounds %struct.tx_cmpl, %struct.tx_cmpl* %54, i64 %55
  %57 = getelementptr inbounds %struct.tx_cmpl, %struct.tx_cmpl* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @TX_CMPL_TYPE_MASK, align 8
  %60 = and i64 %58, %59
  store i64 %60, i64* %15, align 8
  %61 = load i64, i64* %15, align 8
  switch i64 %61, label %94 [
    i64 128, label %62
  ]

62:                                               ; preds = %53
  %63 = load %struct.tx_cmpl*, %struct.tx_cmpl** %9, align 8
  %64 = load i64, i64* %11, align 8
  %65 = getelementptr inbounds %struct.tx_cmpl, %struct.tx_cmpl* %63, i64 %64
  %66 = getelementptr inbounds %struct.tx_cmpl, %struct.tx_cmpl* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @le16toh(i32 %67)
  %69 = load i64, i64* @TX_CMPL_ERRORS_BUFFER_ERROR_MASK, align 8
  %70 = and i64 %68, %69
  %71 = load i64, i64* @TX_CMPL_ERRORS_BUFFER_ERROR_SFT, align 8
  %72 = lshr i64 %70, %71
  store i64 %72, i64* %16, align 8
  %73 = load i64, i64* %16, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %62
  %76 = load %struct.bnxt_softc*, %struct.bnxt_softc** %7, align 8
  %77 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i64, i64* %16, align 8
  %80 = call i32 @device_printf(i32 %78, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %79)
  br label %81

81:                                               ; preds = %75, %62
  %82 = load %struct.tx_cmpl*, %struct.tx_cmpl** %9, align 8
  %83 = load i64, i64* %11, align 8
  %84 = getelementptr inbounds %struct.tx_cmpl, %struct.tx_cmpl* %82, i64 %83
  %85 = getelementptr inbounds %struct.tx_cmpl, %struct.tx_cmpl* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = ashr i32 %86, 24
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %81
  br label %119

93:                                               ; preds = %81
  br label %118

94:                                               ; preds = %53
  %95 = load i64, i64* %15, align 8
  %96 = and i64 %95, 1
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %94
  %99 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %8, align 8
  %100 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %99, i32 0, i32 2
  %101 = load i64, i64* %11, align 8
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @NEXT_CP_CONS_V(%struct.TYPE_3__* %100, i64 %101, i32 %102)
  %104 = load %struct.tx_cmpl*, %struct.tx_cmpl** %9, align 8
  %105 = load i64, i64* %11, align 8
  %106 = getelementptr inbounds %struct.tx_cmpl, %struct.tx_cmpl* %104, i64 %105
  %107 = load i32, i32* %12, align 4
  %108 = call i32 @CMP_VALID(%struct.tx_cmpl* %106, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %98
  br label %119

111:                                              ; preds = %98
  br label %112

112:                                              ; preds = %111, %94
  %113 = load %struct.bnxt_softc*, %struct.bnxt_softc** %7, align 8
  %114 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i64, i64* %15, align 8
  %117 = call i32 @device_printf(i32 %115, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %116)
  br label %118

118:                                              ; preds = %112, %93
  br label %35

119:                                              ; preds = %110, %92, %52
  %120 = load i32, i32* %6, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %138

122:                                              ; preds = %119
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %138

125:                                              ; preds = %122
  %126 = load i64, i64* %14, align 8
  %127 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %8, align 8
  %128 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %127, i32 0, i32 0
  store i64 %126, i64* %128, align 8
  %129 = load i32, i32* %13, align 4
  %130 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %8, align 8
  %131 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 8
  %132 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %8, align 8
  %133 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %132, i32 0, i32 2
  %134 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %8, align 8
  %135 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @BNXT_CP_IDX_DISABLE_DB(%struct.TYPE_3__* %133, i64 %136)
  br label %138

138:                                              ; preds = %125, %122, %119
  %139 = load i32, i32* %10, align 4
  ret i32 %139
}

declare dso_local i32 @NEXT_CP_CONS_V(%struct.TYPE_3__*, i64, i32) #1

declare dso_local i32 @CMPL_PREFETCH_NEXT(%struct.bnxt_cp_ring*, i64) #1

declare dso_local i32 @CMP_VALID(%struct.tx_cmpl*, i32) #1

declare dso_local i64 @le16toh(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

declare dso_local i32 @BNXT_CP_IDX_DISABLE_DB(%struct.TYPE_3__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
