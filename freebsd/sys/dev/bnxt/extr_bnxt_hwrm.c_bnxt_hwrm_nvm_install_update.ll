; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_nvm_install_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_nvm_install_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.hwrm_nvm_install_update_input = type { i32, i32 }
%struct.hwrm_nvm_install_update_output = type { i32, i32, i32, i32 }

@HWRM_NVM_INSTALL_UPDATE = common dso_local global i32 0, align 4
@BNXT_NVM_TIMEO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_hwrm_nvm_install_update(%struct.bnxt_softc* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.bnxt_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.hwrm_nvm_install_update_input, align 4
  %14 = alloca %struct.hwrm_nvm_install_update_output*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %17 = bitcast %struct.hwrm_nvm_install_update_input* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 8, i1 false)
  %18 = load %struct.bnxt_softc*, %struct.bnxt_softc** %7, align 8
  %19 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = bitcast i8* %22 to %struct.hwrm_nvm_install_update_output*
  store %struct.hwrm_nvm_install_update_output* %23, %struct.hwrm_nvm_install_update_output** %14, align 8
  %24 = load %struct.bnxt_softc*, %struct.bnxt_softc** %7, align 8
  %25 = load i32, i32* @HWRM_NVM_INSTALL_UPDATE, align 4
  %26 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc* %24, %struct.hwrm_nvm_install_update_input* %13, i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @htole32(i32 %27)
  %29 = getelementptr inbounds %struct.hwrm_nvm_install_update_input, %struct.hwrm_nvm_install_update_input* %13, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load %struct.bnxt_softc*, %struct.bnxt_softc** %7, align 8
  %31 = call i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc* %30)
  %32 = load %struct.bnxt_softc*, %struct.bnxt_softc** %7, align 8
  %33 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* @BNXT_NVM_TIMEO, align 4
  %36 = load %struct.bnxt_softc*, %struct.bnxt_softc** %7, align 8
  %37 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.bnxt_softc*, %struct.bnxt_softc** %7, align 8
  %39 = call i32 @_hwrm_send_message(%struct.bnxt_softc* %38, %struct.hwrm_nvm_install_update_input* %13, i32 8)
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %16, align 4
  %41 = load %struct.bnxt_softc*, %struct.bnxt_softc** %7, align 8
  %42 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %15, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %6
  br label %80

46:                                               ; preds = %6
  %47 = load i32*, i32** %9, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load %struct.hwrm_nvm_install_update_output*, %struct.hwrm_nvm_install_update_output** %14, align 8
  %51 = getelementptr inbounds %struct.hwrm_nvm_install_update_output, %struct.hwrm_nvm_install_update_output* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le32toh(i32 %52)
  %54 = load i32*, i32** %9, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %49, %46
  %56 = load i32*, i32** %10, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load %struct.hwrm_nvm_install_update_output*, %struct.hwrm_nvm_install_update_output** %14, align 8
  %60 = getelementptr inbounds %struct.hwrm_nvm_install_update_output, %struct.hwrm_nvm_install_update_output* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %10, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %58, %55
  %64 = load i32*, i32** %11, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load %struct.hwrm_nvm_install_update_output*, %struct.hwrm_nvm_install_update_output** %14, align 8
  %68 = getelementptr inbounds %struct.hwrm_nvm_install_update_output, %struct.hwrm_nvm_install_update_output* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %11, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %66, %63
  %72 = load i32*, i32** %12, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load %struct.hwrm_nvm_install_update_output*, %struct.hwrm_nvm_install_update_output** %14, align 8
  %76 = getelementptr inbounds %struct.hwrm_nvm_install_update_output, %struct.hwrm_nvm_install_update_output* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %12, align 8
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %74, %71
  br label %80

80:                                               ; preds = %79, %45
  %81 = load %struct.bnxt_softc*, %struct.bnxt_softc** %7, align 8
  %82 = call i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc* %81)
  %83 = load i32, i32* %15, align 4
  ret i32 %83
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc*, %struct.hwrm_nvm_install_update_input*, i32) #2

declare dso_local i32 @htole32(i32) #2

declare dso_local i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc*) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt_softc*, %struct.hwrm_nvm_install_update_input*, i32) #2

declare dso_local i32 @le32toh(i32) #2

declare dso_local i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
