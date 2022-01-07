; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_vnic_ctx_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_vnic_ctx_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.hwrm_vnic_rss_cos_lb_ctx_alloc_input = type { i32 }
%struct.hwrm_vnic_rss_cos_lb_ctx_alloc_output = type { i32 }

@HWRM_NA_SIGNATURE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Attempt to re-allocate vnic ctx %04x\0A\00", align 1
@EDOOFUS = common dso_local global i32 0, align 4
@HWRM_VNIC_RSS_COS_LB_CTX_ALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_hwrm_vnic_ctx_alloc(%struct.bnxt_softc* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.hwrm_vnic_rss_cos_lb_ctx_alloc_input, align 4
  %7 = alloca %struct.hwrm_vnic_rss_cos_lb_ctx_alloc_output*, align 8
  %8 = alloca i32, align 4
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = bitcast %struct.hwrm_vnic_rss_cos_lb_ctx_alloc_input* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 4, i1 false)
  %10 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %11 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.hwrm_vnic_rss_cos_lb_ctx_alloc_output*
  store %struct.hwrm_vnic_rss_cos_lb_ctx_alloc_output* %15, %struct.hwrm_vnic_rss_cos_lb_ctx_alloc_output** %7, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* @HWRM_NA_SIGNATURE, align 8
  %19 = trunc i64 %18 to i32
  %20 = icmp ne i32 %17, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %23 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @device_printf(i32 %24, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EDOOFUS, align 4
  store i32 %28, i32* %3, align 4
  br label %50

29:                                               ; preds = %2
  %30 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %31 = load i32, i32* @HWRM_VNIC_RSS_COS_LB_CTX_ALLOC, align 4
  %32 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc* %30, %struct.hwrm_vnic_rss_cos_lb_ctx_alloc_input* %6, i32 %31)
  %33 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %34 = call i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc* %33)
  %35 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %36 = call i32 @_hwrm_send_message(%struct.bnxt_softc* %35, %struct.hwrm_vnic_rss_cos_lb_ctx_alloc_input* %6, i32 4)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %46

40:                                               ; preds = %29
  %41 = load %struct.hwrm_vnic_rss_cos_lb_ctx_alloc_output*, %struct.hwrm_vnic_rss_cos_lb_ctx_alloc_output** %7, align 8
  %42 = getelementptr inbounds %struct.hwrm_vnic_rss_cos_lb_ctx_alloc_output, %struct.hwrm_vnic_rss_cos_lb_ctx_alloc_output* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le32toh(i32 %43)
  %45 = load i32*, i32** %5, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %40, %39
  %47 = load %struct.bnxt_softc*, %struct.bnxt_softc** %4, align 8
  %48 = call i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc* %47)
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %46, %21
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #2

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc*, %struct.hwrm_vnic_rss_cos_lb_ctx_alloc_input*, i32) #2

declare dso_local i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc*) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt_softc*, %struct.hwrm_vnic_rss_cos_lb_ctx_alloc_input*, i32) #2

declare dso_local i32 @le32toh(i32) #2

declare dso_local i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
