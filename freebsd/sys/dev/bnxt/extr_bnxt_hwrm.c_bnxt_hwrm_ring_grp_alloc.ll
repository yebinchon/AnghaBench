; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_ring_grp_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_ring_grp_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.bnxt_grp_info = type { i32, i32, i32, i32, i32 }
%struct.hwrm_ring_grp_alloc_input = type { i8*, i8*, i8*, i8*, i32 }
%struct.hwrm_ring_grp_alloc_output = type { i32 }

@HWRM_NA_SIGNATURE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Attempt to re-allocate ring group %04x\0A\00", align 1
@EDOOFUS = common dso_local global i32 0, align 4
@HWRM_RING_GRP_ALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_hwrm_ring_grp_alloc(%struct.bnxt_softc* %0, %struct.bnxt_grp_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt_softc*, align 8
  %5 = alloca %struct.bnxt_grp_info*, align 8
  %6 = alloca %struct.hwrm_ring_grp_alloc_input, align 8
  %7 = alloca %struct.hwrm_ring_grp_alloc_output*, align 8
  %8 = alloca i32, align 4
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %4, align 8
  store %struct.bnxt_grp_info* %1, %struct.bnxt_grp_info** %5, align 8
  %9 = bitcast %struct.hwrm_ring_grp_alloc_input* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 40, i1 false)
  store i32 0, i32* %8, align 4
  %10 = load %struct.bnxt_grp_info*, %struct.bnxt_grp_info** %5, align 8
  %11 = getelementptr inbounds %struct.bnxt_grp_info, %struct.bnxt_grp_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i64, i64* @HWRM_NA_SIGNATURE, align 8
  %14 = trunc i64 %13 to i32
  %15 = icmp ne i32 %12, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %18 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.bnxt_grp_info*, %struct.bnxt_grp_info** %5, align 8
  %21 = getelementptr inbounds %struct.bnxt_grp_info, %struct.bnxt_grp_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @device_printf(i32 %19, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @EDOOFUS, align 4
  store i32 %24, i32* %3, align 4
  br label %73

25:                                               ; preds = %2
  %26 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %27 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = bitcast i8* %30 to %struct.hwrm_ring_grp_alloc_output*
  store %struct.hwrm_ring_grp_alloc_output* %31, %struct.hwrm_ring_grp_alloc_output** %7, align 8
  %32 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %33 = load i32, i32* @HWRM_RING_GRP_ALLOC, align 4
  %34 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc* %32, %struct.hwrm_ring_grp_alloc_input* %6, i32 %33)
  %35 = load %struct.bnxt_grp_info*, %struct.bnxt_grp_info** %5, align 8
  %36 = getelementptr inbounds %struct.bnxt_grp_info, %struct.bnxt_grp_info* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @htole16(i32 %37)
  %39 = getelementptr inbounds %struct.hwrm_ring_grp_alloc_input, %struct.hwrm_ring_grp_alloc_input* %6, i32 0, i32 3
  store i8* %38, i8** %39, align 8
  %40 = load %struct.bnxt_grp_info*, %struct.bnxt_grp_info** %5, align 8
  %41 = getelementptr inbounds %struct.bnxt_grp_info, %struct.bnxt_grp_info* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @htole16(i32 %42)
  %44 = getelementptr inbounds %struct.hwrm_ring_grp_alloc_input, %struct.hwrm_ring_grp_alloc_input* %6, i32 0, i32 2
  store i8* %43, i8** %44, align 8
  %45 = load %struct.bnxt_grp_info*, %struct.bnxt_grp_info** %5, align 8
  %46 = getelementptr inbounds %struct.bnxt_grp_info, %struct.bnxt_grp_info* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @htole16(i32 %47)
  %49 = getelementptr inbounds %struct.hwrm_ring_grp_alloc_input, %struct.hwrm_ring_grp_alloc_input* %6, i32 0, i32 1
  store i8* %48, i8** %49, align 8
  %50 = load %struct.bnxt_grp_info*, %struct.bnxt_grp_info** %5, align 8
  %51 = getelementptr inbounds %struct.bnxt_grp_info, %struct.bnxt_grp_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @htole16(i32 %52)
  %54 = getelementptr inbounds %struct.hwrm_ring_grp_alloc_input, %struct.hwrm_ring_grp_alloc_input* %6, i32 0, i32 0
  store i8* %53, i8** %54, align 8
  %55 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %56 = call i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc* %55)
  %57 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %58 = call i32 @_hwrm_send_message(%struct.bnxt_softc* %57, %struct.hwrm_ring_grp_alloc_input* %6, i32 40)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %25
  br label %69

62:                                               ; preds = %25
  %63 = load %struct.hwrm_ring_grp_alloc_output*, %struct.hwrm_ring_grp_alloc_output** %7, align 8
  %64 = getelementptr inbounds %struct.hwrm_ring_grp_alloc_output, %struct.hwrm_ring_grp_alloc_output* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @le32toh(i32 %65)
  %67 = load %struct.bnxt_grp_info*, %struct.bnxt_grp_info** %5, align 8
  %68 = getelementptr inbounds %struct.bnxt_grp_info, %struct.bnxt_grp_info* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %62, %61
  %70 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %71 = call i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc* %70)
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %69, %16
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #2

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc*, %struct.hwrm_ring_grp_alloc_input*, i32) #2

declare dso_local i8* @htole16(i32) #2

declare dso_local i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc*) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt_softc*, %struct.hwrm_ring_grp_alloc_input*, i32) #2

declare dso_local i32 @le32toh(i32) #2

declare dso_local i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
