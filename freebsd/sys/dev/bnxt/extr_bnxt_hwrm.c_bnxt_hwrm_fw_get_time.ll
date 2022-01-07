; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_fw_get_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_fw_get_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.hwrm_fw_get_time_input = type { i32 }
%struct.hwrm_fw_get_time_output = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@HWRM_FW_GET_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_hwrm_fw_get_time(%struct.bnxt_softc* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca %struct.bnxt_softc*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.hwrm_fw_get_time_input, align 4
  %20 = alloca %struct.hwrm_fw_get_time_output*, align 8
  %21 = alloca i32, align 4
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %22 = bitcast %struct.hwrm_fw_get_time_input* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 4, i1 false)
  %23 = load %struct.bnxt_softc*, %struct.bnxt_softc** %10, align 8
  %24 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = bitcast i8* %27 to %struct.hwrm_fw_get_time_output*
  store %struct.hwrm_fw_get_time_output* %28, %struct.hwrm_fw_get_time_output** %20, align 8
  %29 = load %struct.bnxt_softc*, %struct.bnxt_softc** %10, align 8
  %30 = load i32, i32* @HWRM_FW_GET_TIME, align 4
  %31 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc* %29, %struct.hwrm_fw_get_time_input* %19, i32 %30)
  %32 = load %struct.bnxt_softc*, %struct.bnxt_softc** %10, align 8
  %33 = call i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc* %32)
  %34 = load %struct.bnxt_softc*, %struct.bnxt_softc** %10, align 8
  %35 = call i32 @_hwrm_send_message(%struct.bnxt_softc* %34, %struct.hwrm_fw_get_time_input* %19, i32 4)
  store i32 %35, i32* %21, align 4
  %36 = load i32, i32* %21, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %9
  br label %107

39:                                               ; preds = %9
  %40 = load i32*, i32** %11, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct.hwrm_fw_get_time_output*, %struct.hwrm_fw_get_time_output** %20, align 8
  %44 = getelementptr inbounds %struct.hwrm_fw_get_time_output, %struct.hwrm_fw_get_time_output* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le16toh(i32 %45)
  %47 = load i32*, i32** %11, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %42, %39
  %49 = load i32*, i32** %12, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load %struct.hwrm_fw_get_time_output*, %struct.hwrm_fw_get_time_output** %20, align 8
  %53 = getelementptr inbounds %struct.hwrm_fw_get_time_output, %struct.hwrm_fw_get_time_output* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %12, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %51, %48
  %57 = load i32*, i32** %13, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load %struct.hwrm_fw_get_time_output*, %struct.hwrm_fw_get_time_output** %20, align 8
  %61 = getelementptr inbounds %struct.hwrm_fw_get_time_output, %struct.hwrm_fw_get_time_output* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %13, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %59, %56
  %65 = load i32*, i32** %14, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load %struct.hwrm_fw_get_time_output*, %struct.hwrm_fw_get_time_output** %20, align 8
  %69 = getelementptr inbounds %struct.hwrm_fw_get_time_output, %struct.hwrm_fw_get_time_output* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %14, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %67, %64
  %73 = load i32*, i32** %15, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load %struct.hwrm_fw_get_time_output*, %struct.hwrm_fw_get_time_output** %20, align 8
  %77 = getelementptr inbounds %struct.hwrm_fw_get_time_output, %struct.hwrm_fw_get_time_output* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %15, align 8
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %75, %72
  %81 = load i32*, i32** %16, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load %struct.hwrm_fw_get_time_output*, %struct.hwrm_fw_get_time_output** %20, align 8
  %85 = getelementptr inbounds %struct.hwrm_fw_get_time_output, %struct.hwrm_fw_get_time_output* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %16, align 8
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %83, %80
  %89 = load i32*, i32** %17, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load %struct.hwrm_fw_get_time_output*, %struct.hwrm_fw_get_time_output** %20, align 8
  %93 = getelementptr inbounds %struct.hwrm_fw_get_time_output, %struct.hwrm_fw_get_time_output* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @le16toh(i32 %94)
  %96 = load i32*, i32** %17, align 8
  store i32 %95, i32* %96, align 4
  br label %97

97:                                               ; preds = %91, %88
  %98 = load i32*, i32** %18, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load %struct.hwrm_fw_get_time_output*, %struct.hwrm_fw_get_time_output** %20, align 8
  %102 = getelementptr inbounds %struct.hwrm_fw_get_time_output, %struct.hwrm_fw_get_time_output* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @le16toh(i32 %103)
  %105 = load i32*, i32** %18, align 8
  store i32 %104, i32* %105, align 4
  br label %106

106:                                              ; preds = %100, %97
  br label %107

107:                                              ; preds = %106, %38
  %108 = load %struct.bnxt_softc*, %struct.bnxt_softc** %10, align 8
  %109 = call i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc* %108)
  %110 = load i32, i32* %21, align 4
  ret i32 %110
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc*, %struct.hwrm_fw_get_time_input*, i32) #2

declare dso_local i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc*) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt_softc*, %struct.hwrm_fw_get_time_input*, i32) #2

declare dso_local i32 @le16toh(i32) #2

declare dso_local i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
