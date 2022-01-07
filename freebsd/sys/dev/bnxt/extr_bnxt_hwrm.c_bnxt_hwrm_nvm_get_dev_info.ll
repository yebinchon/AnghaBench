; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_nvm_get_dev_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_nvm_get_dev_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.hwrm_nvm_get_dev_info_input = type { i32 }
%struct.hwrm_nvm_get_dev_info_output = type { i32, i32, i32, i32, i32, i32 }

@HWRM_NVM_GET_DEV_INFO = common dso_local global i32 0, align 4
@BNXT_NVM_TIMEO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_hwrm_nvm_get_dev_info(%struct.bnxt_softc* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.bnxt_softc*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.hwrm_nvm_get_dev_info_input, align 4
  %16 = alloca %struct.hwrm_nvm_get_dev_info_output*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %19 = bitcast %struct.hwrm_nvm_get_dev_info_input* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 4, i1 false)
  %20 = load %struct.bnxt_softc*, %struct.bnxt_softc** %8, align 8
  %21 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = bitcast i8* %24 to %struct.hwrm_nvm_get_dev_info_output*
  store %struct.hwrm_nvm_get_dev_info_output* %25, %struct.hwrm_nvm_get_dev_info_output** %16, align 8
  %26 = load %struct.bnxt_softc*, %struct.bnxt_softc** %8, align 8
  %27 = load i32, i32* @HWRM_NVM_GET_DEV_INFO, align 4
  %28 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc* %26, %struct.hwrm_nvm_get_dev_info_input* %15, i32 %27)
  %29 = load %struct.bnxt_softc*, %struct.bnxt_softc** %8, align 8
  %30 = call i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc* %29)
  %31 = load %struct.bnxt_softc*, %struct.bnxt_softc** %8, align 8
  %32 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %18, align 4
  %34 = load i32, i32* @BNXT_NVM_TIMEO, align 4
  %35 = load %struct.bnxt_softc*, %struct.bnxt_softc** %8, align 8
  %36 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.bnxt_softc*, %struct.bnxt_softc** %8, align 8
  %38 = call i32 @_hwrm_send_message(%struct.bnxt_softc* %37, %struct.hwrm_nvm_get_dev_info_input* %15, i32 4)
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* %18, align 4
  %40 = load %struct.bnxt_softc*, %struct.bnxt_softc** %8, align 8
  %41 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %17, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %7
  br label %100

45:                                               ; preds = %7
  %46 = load i32*, i32** %9, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load %struct.hwrm_nvm_get_dev_info_output*, %struct.hwrm_nvm_get_dev_info_output** %16, align 8
  %50 = getelementptr inbounds %struct.hwrm_nvm_get_dev_info_output, %struct.hwrm_nvm_get_dev_info_output* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le16toh(i32 %51)
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %48, %45
  %55 = load i32*, i32** %10, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load %struct.hwrm_nvm_get_dev_info_output*, %struct.hwrm_nvm_get_dev_info_output** %16, align 8
  %59 = getelementptr inbounds %struct.hwrm_nvm_get_dev_info_output, %struct.hwrm_nvm_get_dev_info_output* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @le16toh(i32 %60)
  %62 = load i32*, i32** %10, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %57, %54
  %64 = load i32*, i32** %11, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load %struct.hwrm_nvm_get_dev_info_output*, %struct.hwrm_nvm_get_dev_info_output** %16, align 8
  %68 = getelementptr inbounds %struct.hwrm_nvm_get_dev_info_output, %struct.hwrm_nvm_get_dev_info_output* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @le32toh(i32 %69)
  %71 = load i32*, i32** %11, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %66, %63
  %73 = load i32*, i32** %12, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load %struct.hwrm_nvm_get_dev_info_output*, %struct.hwrm_nvm_get_dev_info_output** %16, align 8
  %77 = getelementptr inbounds %struct.hwrm_nvm_get_dev_info_output, %struct.hwrm_nvm_get_dev_info_output* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @le32toh(i32 %78)
  %80 = load i32*, i32** %12, align 8
  store i32 %79, i32* %80, align 4
  br label %81

81:                                               ; preds = %75, %72
  %82 = load i32*, i32** %13, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load %struct.hwrm_nvm_get_dev_info_output*, %struct.hwrm_nvm_get_dev_info_output** %16, align 8
  %86 = getelementptr inbounds %struct.hwrm_nvm_get_dev_info_output, %struct.hwrm_nvm_get_dev_info_output* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @le32toh(i32 %87)
  %89 = load i32*, i32** %13, align 8
  store i32 %88, i32* %89, align 4
  br label %90

90:                                               ; preds = %84, %81
  %91 = load i32*, i32** %14, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load %struct.hwrm_nvm_get_dev_info_output*, %struct.hwrm_nvm_get_dev_info_output** %16, align 8
  %95 = getelementptr inbounds %struct.hwrm_nvm_get_dev_info_output, %struct.hwrm_nvm_get_dev_info_output* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @le32toh(i32 %96)
  %98 = load i32*, i32** %14, align 8
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %93, %90
  br label %100

100:                                              ; preds = %99, %44
  %101 = load %struct.bnxt_softc*, %struct.bnxt_softc** %8, align 8
  %102 = call i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc* %101)
  %103 = load i32, i32* %17, align 4
  ret i32 %103
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc*, %struct.hwrm_nvm_get_dev_info_input*, i32) #2

declare dso_local i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc*) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt_softc*, %struct.hwrm_nvm_get_dev_info_input*, i32) #2

declare dso_local i32 @le16toh(i32) #2

declare dso_local i32 @le32toh(i32) #2

declare dso_local i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
