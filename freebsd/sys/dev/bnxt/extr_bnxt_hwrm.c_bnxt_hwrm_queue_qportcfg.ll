; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_queue_qportcfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_queue_qportcfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.hwrm_queue_qportcfg_input = type { i32 }
%struct.hwrm_queue_qportcfg_output = type { i64, i32 }

@HWRM_QUEUE_QPORTCFG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BNXT_MAX_QUEUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_hwrm_queue_qportcfg(%struct.bnxt_softc* %0) #0 {
  %2 = alloca %struct.bnxt_softc*, align 8
  %3 = alloca %struct.hwrm_queue_qportcfg_input, align 4
  %4 = alloca %struct.hwrm_queue_qportcfg_output*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %2, align 8
  %8 = bitcast %struct.hwrm_queue_qportcfg_input* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 4, i1 false)
  %9 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %10 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.hwrm_queue_qportcfg_output*
  store %struct.hwrm_queue_qportcfg_output* %14, %struct.hwrm_queue_qportcfg_output** %4, align 8
  store i32 0, i32* %5, align 4
  %15 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %16 = load i32, i32* @HWRM_QUEUE_QPORTCFG, align 4
  %17 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc* %15, %struct.hwrm_queue_qportcfg_input* %3, i32 %16)
  %18 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %19 = call i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc* %18)
  %20 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %21 = call i32 @_hwrm_send_message(%struct.bnxt_softc* %20, %struct.hwrm_queue_qportcfg_input* %3, i32 4)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %83

25:                                               ; preds = %1
  %26 = load %struct.hwrm_queue_qportcfg_output*, %struct.hwrm_queue_qportcfg_output** %4, align 8
  %27 = getelementptr inbounds %struct.hwrm_queue_qportcfg_output, %struct.hwrm_queue_qportcfg_output* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %83

33:                                               ; preds = %25
  %34 = load %struct.hwrm_queue_qportcfg_output*, %struct.hwrm_queue_qportcfg_output** %4, align 8
  %35 = getelementptr inbounds %struct.hwrm_queue_qportcfg_output, %struct.hwrm_queue_qportcfg_output* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %38 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %40 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @BNXT_MAX_QUEUE, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %33
  %45 = load i64, i64* @BNXT_MAX_QUEUE, align 8
  %46 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %47 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %44, %33
  %49 = load %struct.hwrm_queue_qportcfg_output*, %struct.hwrm_queue_qportcfg_output** %4, align 8
  %50 = getelementptr inbounds %struct.hwrm_queue_qportcfg_output, %struct.hwrm_queue_qportcfg_output* %49, i32 0, i32 1
  store i32* %50, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %79, %48
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %55 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %53, %56
  br i1 %57, label %58, label %82

58:                                               ; preds = %51
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %6, align 8
  %61 = load i32, i32* %59, align 4
  %62 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %63 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  store i32 %61, i32* %68, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %6, align 8
  %71 = load i32, i32* %69, align 4
  %72 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %73 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i32 %71, i32* %78, align 4
  br label %79

79:                                               ; preds = %58
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %51

82:                                               ; preds = %51
  br label %83

83:                                               ; preds = %82, %30, %24
  %84 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %85 = call i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc* %84)
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc*, %struct.hwrm_queue_qportcfg_input*, i32) #2

declare dso_local i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc*) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt_softc*, %struct.hwrm_queue_qportcfg_input*, i32) #2

declare dso_local i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
