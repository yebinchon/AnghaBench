; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_init_sb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_init_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.hc_status_block_data_e2 = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.hc_status_block_sm*, %struct.TYPE_5__, i8*, %struct.TYPE_4__, i8* }
%struct.hc_status_block_sm = type { i32 }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_4__ = type { i32, i8*, i32, i8* }
%struct.hc_status_block_data_e1x = type { i32, %struct.TYPE_6__ }

@HC_SEG_ACCESS_NORM = common dso_local global i32 0, align 4
@IGU_SEG_ACCESS_NORM = common dso_local global i32 0, align 4
@SB_ENABLED = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@SM_RX_ID = common dso_local global i64 0, align 8
@SM_TX_ID = common dso_local global i64 0, align 8
@DBG_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Init FW SB %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, i32, i32, i32, i32, i32)* @bxe_init_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_init_sb(%struct.bxe_softc* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.bxe_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.hc_status_block_data_e2, align 8
  %14 = alloca %struct.hc_status_block_data_e1x, align 8
  %15 = alloca %struct.hc_status_block_sm*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %20 = call i64 @CHIP_INT_MODE_IS_BC(%struct.bxe_softc* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32, i32* @HC_SEG_ACCESS_NORM, align 4
  store i32 %23, i32* %17, align 4
  br label %26

24:                                               ; preds = %6
  %25 = load i32, i32* @IGU_SEG_ACCESS_NORM, align 4
  store i32 %25, i32* %17, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @bxe_zero_fp_sb(%struct.bxe_softc* %27, i32 %28)
  %30 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %31 = call i32 @CHIP_IS_E1x(%struct.bxe_softc* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %76, label %33

33:                                               ; preds = %26
  %34 = call i32 @memset(%struct.hc_status_block_data_e2* %13, i32 0, i32 80)
  %35 = load i8*, i8** @SB_ENABLED, align 8
  %36 = getelementptr inbounds %struct.hc_status_block_data_e2, %struct.hc_status_block_data_e2* %13, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %39 = call i8* @SC_FUNC(%struct.bxe_softc* %38)
  %40 = getelementptr inbounds %struct.hc_status_block_data_e2, %struct.hc_status_block_data_e2* %13, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  store i8* %39, i8** %42, align 8
  %43 = load i32, i32* %9, align 4
  %44 = getelementptr inbounds %struct.hc_status_block_data_e2, %struct.hc_status_block_data_e2* %13, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 8
  %47 = load i32, i32* %10, align 4
  %48 = getelementptr inbounds %struct.hc_status_block_data_e2, %struct.hc_status_block_data_e2* %13, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 8
  %51 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %52 = call i8* @SC_VN(%struct.bxe_softc* %51)
  %53 = getelementptr inbounds %struct.hc_status_block_data_e2, %struct.hc_status_block_data_e2* %13, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i8* %52, i8** %55, align 8
  %56 = load i8*, i8** @TRUE, align 8
  %57 = getelementptr inbounds %struct.hc_status_block_data_e2, %struct.hc_status_block_data_e2* %13, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i8* @U64_HI(i32 %59)
  %61 = getelementptr inbounds %struct.hc_status_block_data_e2, %struct.hc_status_block_data_e2* %13, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  store i8* %60, i8** %63, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i8* @U64_LO(i32 %64)
  %66 = getelementptr inbounds %struct.hc_status_block_data_e2, %struct.hc_status_block_data_e2* %13, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store i8* %65, i8** %68, align 8
  %69 = getelementptr inbounds %struct.hc_status_block_data_e2, %struct.hc_status_block_data_e2* %13, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load %struct.hc_status_block_sm*, %struct.hc_status_block_sm** %70, align 8
  store %struct.hc_status_block_sm* %71, %struct.hc_status_block_sm** %15, align 8
  %72 = bitcast %struct.hc_status_block_data_e2* %13 to i32*
  store i32* %72, i32** %16, align 8
  store i32 20, i32* %18, align 4
  %73 = getelementptr inbounds %struct.hc_status_block_data_e2, %struct.hc_status_block_data_e2* %13, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @bxe_map_sb_state_machines(i32 %74)
  br label %119

76:                                               ; preds = %26
  %77 = bitcast %struct.hc_status_block_data_e1x* %14 to %struct.hc_status_block_data_e2*
  %78 = call i32 @memset(%struct.hc_status_block_data_e2* %77, i32 0, i32 80)
  %79 = load i8*, i8** @SB_ENABLED, align 8
  %80 = getelementptr inbounds %struct.hc_status_block_data_e1x, %struct.hc_status_block_data_e1x* %14, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 4
  store i8* %79, i8** %81, align 8
  %82 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %83 = call i8* @SC_FUNC(%struct.bxe_softc* %82)
  %84 = getelementptr inbounds %struct.hc_status_block_data_e1x, %struct.hc_status_block_data_e1x* %14, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  store i8* %83, i8** %86, align 8
  %87 = getelementptr inbounds %struct.hc_status_block_data_e1x, %struct.hc_status_block_data_e1x* %14, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i32 255, i32* %89, align 8
  %90 = load i32, i32* @FALSE, align 4
  %91 = getelementptr inbounds %struct.hc_status_block_data_e1x, %struct.hc_status_block_data_e1x* %14, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  store i32 %90, i32* %93, align 8
  %94 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %95 = call i8* @SC_VN(%struct.bxe_softc* %94)
  %96 = getelementptr inbounds %struct.hc_status_block_data_e1x, %struct.hc_status_block_data_e1x* %14, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  store i8* %95, i8** %98, align 8
  %99 = load i8*, i8** @TRUE, align 8
  %100 = getelementptr inbounds %struct.hc_status_block_data_e1x, %struct.hc_status_block_data_e1x* %14, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 2
  store i8* %99, i8** %101, align 8
  %102 = load i32, i32* %8, align 4
  %103 = call i8* @U64_HI(i32 %102)
  %104 = getelementptr inbounds %struct.hc_status_block_data_e1x, %struct.hc_status_block_data_e1x* %14, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  store i8* %103, i8** %106, align 8
  %107 = load i32, i32* %8, align 4
  %108 = call i8* @U64_LO(i32 %107)
  %109 = getelementptr inbounds %struct.hc_status_block_data_e1x, %struct.hc_status_block_data_e1x* %14, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  store i8* %108, i8** %111, align 8
  %112 = getelementptr inbounds %struct.hc_status_block_data_e1x, %struct.hc_status_block_data_e1x* %14, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load %struct.hc_status_block_sm*, %struct.hc_status_block_sm** %113, align 8
  store %struct.hc_status_block_sm* %114, %struct.hc_status_block_sm** %15, align 8
  %115 = bitcast %struct.hc_status_block_data_e1x* %14 to i32*
  store i32* %115, i32** %16, align 8
  store i32 20, i32* %18, align 4
  %116 = getelementptr inbounds %struct.hc_status_block_data_e1x, %struct.hc_status_block_data_e1x* %14, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @bxe_map_sb_state_machines(i32 %117)
  br label %119

119:                                              ; preds = %76, %33
  %120 = load %struct.hc_status_block_sm*, %struct.hc_status_block_sm** %15, align 8
  %121 = load i64, i64* @SM_RX_ID, align 8
  %122 = getelementptr inbounds %struct.hc_status_block_sm, %struct.hc_status_block_sm* %120, i64 %121
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %17, align 4
  %125 = call i32 @bxe_setup_ndsb_state_machine(%struct.hc_status_block_sm* %122, i32 %123, i32 %124)
  %126 = load %struct.hc_status_block_sm*, %struct.hc_status_block_sm** %15, align 8
  %127 = load i64, i64* @SM_TX_ID, align 8
  %128 = getelementptr inbounds %struct.hc_status_block_sm, %struct.hc_status_block_sm* %126, i64 %127
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* %17, align 4
  %131 = call i32 @bxe_setup_ndsb_state_machine(%struct.hc_status_block_sm* %128, i32 %129, i32 %130)
  %132 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %133 = load i32, i32* @DBG_LOAD, align 4
  %134 = load i32, i32* %11, align 4
  %135 = call i32 @BLOGD(%struct.bxe_softc* %132, i32 %133, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %134)
  %136 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %137 = load i32, i32* %11, align 4
  %138 = load i32*, i32** %16, align 8
  %139 = load i32, i32* %18, align 4
  %140 = call i32 @bxe_wr_fp_sb_data(%struct.bxe_softc* %136, i32 %137, i32* %138, i32 %139)
  ret void
}

declare dso_local i64 @CHIP_INT_MODE_IS_BC(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_zero_fp_sb(%struct.bxe_softc*, i32) #1

declare dso_local i32 @CHIP_IS_E1x(%struct.bxe_softc*) #1

declare dso_local i32 @memset(%struct.hc_status_block_data_e2*, i32, i32) #1

declare dso_local i8* @SC_FUNC(%struct.bxe_softc*) #1

declare dso_local i8* @SC_VN(%struct.bxe_softc*) #1

declare dso_local i8* @U64_HI(i32) #1

declare dso_local i8* @U64_LO(i32) #1

declare dso_local i32 @bxe_map_sb_state_machines(i32) #1

declare dso_local i32 @bxe_setup_ndsb_state_machine(%struct.hc_status_block_sm*, i32, i32) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i32) #1

declare dso_local i32 @bxe_wr_fp_sb_data(%struct.bxe_softc*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
