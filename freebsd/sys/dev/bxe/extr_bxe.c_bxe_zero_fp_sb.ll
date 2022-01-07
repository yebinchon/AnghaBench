; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_zero_fp_sb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_zero_fp_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.hc_status_block_data_e2 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i8* }
%struct.TYPE_3__ = type { i8* }
%struct.hc_status_block_data_e1x = type { %struct.TYPE_4__ }

@SB_DISABLED = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@BAR_CSTRORM_INTMEM = common dso_local global i64 0, align 8
@CSTORM_STATUS_BLOCK_SIZE = common dso_local global i32 0, align 4
@CSTORM_SYNC_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, i32)* @bxe_zero_fp_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_zero_fp_sb(%struct.bxe_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hc_status_block_data_e2, align 8
  %6 = alloca %struct.hc_status_block_data_e1x, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %10 = call i32 @CHIP_IS_E1x(%struct.bxe_softc* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %2
  %13 = call i32 @memset(%struct.hc_status_block_data_e2* %5, i32 0, i32 16)
  %14 = load i8*, i8** @SB_DISABLED, align 8
  %15 = getelementptr inbounds %struct.hc_status_block_data_e2, %struct.hc_status_block_data_e2* %5, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load i8*, i8** @FALSE, align 8
  %18 = getelementptr inbounds %struct.hc_status_block_data_e2, %struct.hc_status_block_data_e2* %5, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i8* %17, i8** %20, align 8
  %21 = bitcast %struct.hc_status_block_data_e2* %5 to i32*
  store i32* %21, i32** %7, align 8
  store i32 4, i32* %8, align 4
  br label %33

22:                                               ; preds = %2
  %23 = bitcast %struct.hc_status_block_data_e1x* %6 to %struct.hc_status_block_data_e2*
  %24 = call i32 @memset(%struct.hc_status_block_data_e2* %23, i32 0, i32 16)
  %25 = load i8*, i8** @SB_DISABLED, align 8
  %26 = getelementptr inbounds %struct.hc_status_block_data_e1x, %struct.hc_status_block_data_e1x* %6, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** @FALSE, align 8
  %29 = getelementptr inbounds %struct.hc_status_block_data_e1x, %struct.hc_status_block_data_e1x* %6, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i8* %28, i8** %31, align 8
  %32 = bitcast %struct.hc_status_block_data_e1x* %6 to i32*
  store i32* %32, i32** %7, align 8
  store i32 4, i32* %8, align 4
  br label %33

33:                                               ; preds = %22, %12
  %34 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @bxe_wr_fp_sb_data(%struct.bxe_softc* %34, i32 %35, i32* %36, i32 %37)
  %39 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %40 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i64 @CSTORM_STATUS_BLOCK_OFFSET(i32 %41)
  %43 = add nsw i64 %40, %42
  %44 = load i32, i32* @CSTORM_STATUS_BLOCK_SIZE, align 4
  %45 = call i32 @bxe_fill(%struct.bxe_softc* %39, i64 %43, i32 0, i32 %44)
  %46 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %47 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i64 @CSTORM_SYNC_BLOCK_OFFSET(i32 %48)
  %50 = add nsw i64 %47, %49
  %51 = load i32, i32* @CSTORM_SYNC_BLOCK_SIZE, align 4
  %52 = call i32 @bxe_fill(%struct.bxe_softc* %46, i64 %50, i32 0, i32 %51)
  ret void
}

declare dso_local i32 @CHIP_IS_E1x(%struct.bxe_softc*) #1

declare dso_local i32 @memset(%struct.hc_status_block_data_e2*, i32, i32) #1

declare dso_local i32 @bxe_wr_fp_sb_data(%struct.bxe_softc*, i32, i32*, i32) #1

declare dso_local i32 @bxe_fill(%struct.bxe_softc*, i64, i32, i32) #1

declare dso_local i64 @CSTORM_STATUS_BLOCK_OFFSET(i32) #1

declare dso_local i64 @CSTORM_SYNC_BLOCK_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
