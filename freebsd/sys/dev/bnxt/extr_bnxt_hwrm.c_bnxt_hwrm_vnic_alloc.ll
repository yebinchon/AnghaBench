; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_vnic_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_vnic_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.bnxt_vnic_info = type { i32, i32 }
%struct.hwrm_vnic_alloc_input = type { i32, i32 }
%struct.hwrm_vnic_alloc_output = type { i32 }

@HWRM_NA_SIGNATURE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Attempt to re-allocate vnic %04x\0A\00", align 1
@EDOOFUS = common dso_local global i32 0, align 4
@HWRM_VNIC_ALLOC = common dso_local global i32 0, align 4
@BNXT_VNIC_FLAG_DEFAULT = common dso_local global i32 0, align 4
@HWRM_VNIC_ALLOC_INPUT_FLAGS_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_hwrm_vnic_alloc(%struct.bnxt_softc* %0, %struct.bnxt_vnic_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt_softc*, align 8
  %5 = alloca %struct.bnxt_vnic_info*, align 8
  %6 = alloca %struct.hwrm_vnic_alloc_input, align 4
  %7 = alloca %struct.hwrm_vnic_alloc_output*, align 8
  %8 = alloca i32, align 4
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %4, align 8
  store %struct.bnxt_vnic_info* %1, %struct.bnxt_vnic_info** %5, align 8
  %9 = bitcast %struct.hwrm_vnic_alloc_input* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 8, i1 false)
  %10 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %11 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.hwrm_vnic_alloc_output*
  store %struct.hwrm_vnic_alloc_output* %15, %struct.hwrm_vnic_alloc_output** %7, align 8
  %16 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %5, align 8
  %17 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* @HWRM_NA_SIGNATURE, align 8
  %20 = trunc i64 %19 to i32
  %21 = icmp ne i32 %18, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %24 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %5, align 8
  %27 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EDOOFUS, align 4
  store i32 %30, i32* %3, align 4
  br label %64

31:                                               ; preds = %2
  %32 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %33 = load i32, i32* @HWRM_VNIC_ALLOC, align 4
  %34 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc* %32, %struct.hwrm_vnic_alloc_input* %6, i32 %33)
  %35 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %5, align 8
  %36 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @BNXT_VNIC_FLAG_DEFAULT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %31
  %42 = load i32, i32* @HWRM_VNIC_ALLOC_INPUT_FLAGS_DEFAULT, align 4
  %43 = call i32 @htole32(i32 %42)
  %44 = getelementptr inbounds %struct.hwrm_vnic_alloc_input, %struct.hwrm_vnic_alloc_input* %6, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %31
  %46 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %47 = call i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc* %46)
  %48 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %49 = call i32 @_hwrm_send_message(%struct.bnxt_softc* %48, %struct.hwrm_vnic_alloc_input* %6, i32 8)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %60

53:                                               ; preds = %45
  %54 = load %struct.hwrm_vnic_alloc_output*, %struct.hwrm_vnic_alloc_output** %7, align 8
  %55 = getelementptr inbounds %struct.hwrm_vnic_alloc_output, %struct.hwrm_vnic_alloc_output* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @le32toh(i32 %56)
  %58 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %5, align 8
  %59 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %53, %52
  %61 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %62 = call i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc* %61)
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %60, %22
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #2

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc*, %struct.hwrm_vnic_alloc_input*, i32) #2

declare dso_local i32 @htole32(i32) #2

declare dso_local i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc*) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt_softc*, %struct.hwrm_vnic_alloc_input*, i32) #2

declare dso_local i32 @le32toh(i32) #2

declare dso_local i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
