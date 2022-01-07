; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_nvm_find_dir_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_nvm_find_dir_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.hwrm_nvm_find_dir_entry_input = type { i32, i8*, i8*, i8*, i8*, i32, i32 }
%struct.hwrm_nvm_find_dir_entry_output = type { i32, i32, i32, i32, i32 }

@HWRM_NVM_FIND_DIR_ENTRY = common dso_local global i32 0, align 4
@HWRM_NVM_FIND_DIR_ENTRY_INPUT_ENABLES_DIR_IDX_VALID = common dso_local global i32 0, align 4
@BNXT_NVM_TIMEO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_hwrm_nvm_find_dir_entry(%struct.bnxt_softc* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32* %7, i32* %8, i32* %9) #0 {
  %11 = alloca %struct.bnxt_softc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.hwrm_nvm_find_dir_entry_input, align 8
  %22 = alloca %struct.hwrm_nvm_find_dir_entry_output*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32* %2, i32** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32* %4, i32** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32* %9, i32** %20, align 8
  %25 = bitcast %struct.hwrm_nvm_find_dir_entry_input* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 48, i1 false)
  %26 = load %struct.bnxt_softc*, %struct.bnxt_softc** %11, align 8
  %27 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = bitcast i8* %30 to %struct.hwrm_nvm_find_dir_entry_output*
  store %struct.hwrm_nvm_find_dir_entry_output* %31, %struct.hwrm_nvm_find_dir_entry_output** %22, align 8
  store i32 0, i32* %23, align 4
  %32 = load i32*, i32** %13, align 8
  %33 = call i32 @MPASS(i32* %32)
  %34 = load %struct.bnxt_softc*, %struct.bnxt_softc** %11, align 8
  %35 = load i32, i32* @HWRM_NVM_FIND_DIR_ENTRY, align 4
  %36 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc* %34, %struct.hwrm_nvm_find_dir_entry_input* %21, i32 %35)
  %37 = load i32, i32* %16, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %10
  %40 = load i32, i32* @HWRM_NVM_FIND_DIR_ENTRY_INPUT_ENABLES_DIR_IDX_VALID, align 4
  %41 = call i32 @htole32(i32 %40)
  %42 = getelementptr inbounds %struct.hwrm_nvm_find_dir_entry_input, %struct.hwrm_nvm_find_dir_entry_input* %21, i32 0, i32 5
  store i32 %41, i32* %42, align 8
  %43 = load i32*, i32** %15, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @htole16(i32 %44)
  %46 = getelementptr inbounds %struct.hwrm_nvm_find_dir_entry_input, %struct.hwrm_nvm_find_dir_entry_input* %21, i32 0, i32 4
  store i8* %45, i8** %46, align 8
  br label %47

47:                                               ; preds = %39, %10
  %48 = load i32, i32* %12, align 4
  %49 = call i8* @htole16(i32 %48)
  %50 = getelementptr inbounds %struct.hwrm_nvm_find_dir_entry_input, %struct.hwrm_nvm_find_dir_entry_input* %21, i32 0, i32 3
  store i8* %49, i8** %50, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @htole16(i32 %52)
  %54 = getelementptr inbounds %struct.hwrm_nvm_find_dir_entry_input, %struct.hwrm_nvm_find_dir_entry_input* %21, i32 0, i32 2
  store i8* %53, i8** %54, align 8
  %55 = load i32, i32* %14, align 4
  %56 = call i8* @htole16(i32 %55)
  %57 = getelementptr inbounds %struct.hwrm_nvm_find_dir_entry_input, %struct.hwrm_nvm_find_dir_entry_input* %21, i32 0, i32 1
  store i8* %56, i8** %57, align 8
  %58 = load i32, i32* %17, align 4
  %59 = getelementptr inbounds %struct.hwrm_nvm_find_dir_entry_input, %struct.hwrm_nvm_find_dir_entry_input* %21, i32 0, i32 0
  store i32 %58, i32* %59, align 8
  %60 = load %struct.bnxt_softc*, %struct.bnxt_softc** %11, align 8
  %61 = call i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc* %60)
  %62 = load %struct.bnxt_softc*, %struct.bnxt_softc** %11, align 8
  %63 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %24, align 4
  %65 = load i32, i32* @BNXT_NVM_TIMEO, align 4
  %66 = load %struct.bnxt_softc*, %struct.bnxt_softc** %11, align 8
  %67 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.bnxt_softc*, %struct.bnxt_softc** %11, align 8
  %69 = call i32 @_hwrm_send_message(%struct.bnxt_softc* %68, %struct.hwrm_nvm_find_dir_entry_input* %21, i32 48)
  store i32 %69, i32* %23, align 4
  %70 = load i32, i32* %24, align 4
  %71 = load %struct.bnxt_softc*, %struct.bnxt_softc** %11, align 8
  %72 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %23, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %47
  br label %118

76:                                               ; preds = %47
  %77 = load i32*, i32** %19, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load %struct.hwrm_nvm_find_dir_entry_output*, %struct.hwrm_nvm_find_dir_entry_output** %22, align 8
  %81 = getelementptr inbounds %struct.hwrm_nvm_find_dir_entry_output, %struct.hwrm_nvm_find_dir_entry_output* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @le32toh(i32 %82)
  %84 = load i32*, i32** %19, align 8
  store i32 %83, i32* %84, align 4
  br label %85

85:                                               ; preds = %79, %76
  %86 = load i32*, i32** %18, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load %struct.hwrm_nvm_find_dir_entry_output*, %struct.hwrm_nvm_find_dir_entry_output** %22, align 8
  %90 = getelementptr inbounds %struct.hwrm_nvm_find_dir_entry_output, %struct.hwrm_nvm_find_dir_entry_output* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @le32toh(i32 %91)
  %93 = load i32*, i32** %18, align 8
  store i32 %92, i32* %93, align 4
  br label %94

94:                                               ; preds = %88, %85
  %95 = load i32*, i32** %20, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load %struct.hwrm_nvm_find_dir_entry_output*, %struct.hwrm_nvm_find_dir_entry_output** %22, align 8
  %99 = getelementptr inbounds %struct.hwrm_nvm_find_dir_entry_output, %struct.hwrm_nvm_find_dir_entry_output* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @le32toh(i32 %100)
  %102 = load i32*, i32** %20, align 8
  store i32 %101, i32* %102, align 4
  br label %103

103:                                              ; preds = %97, %94
  %104 = load %struct.hwrm_nvm_find_dir_entry_output*, %struct.hwrm_nvm_find_dir_entry_output** %22, align 8
  %105 = getelementptr inbounds %struct.hwrm_nvm_find_dir_entry_output, %struct.hwrm_nvm_find_dir_entry_output* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @le16toh(i32 %106)
  %108 = load i32*, i32** %13, align 8
  store i32 %107, i32* %108, align 4
  %109 = load i32*, i32** %15, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %117

111:                                              ; preds = %103
  %112 = load %struct.hwrm_nvm_find_dir_entry_output*, %struct.hwrm_nvm_find_dir_entry_output** %22, align 8
  %113 = getelementptr inbounds %struct.hwrm_nvm_find_dir_entry_output, %struct.hwrm_nvm_find_dir_entry_output* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @le16toh(i32 %114)
  %116 = load i32*, i32** %15, align 8
  store i32 %115, i32* %116, align 4
  br label %117

117:                                              ; preds = %111, %103
  br label %118

118:                                              ; preds = %117, %75
  %119 = load %struct.bnxt_softc*, %struct.bnxt_softc** %11, align 8
  %120 = call i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc* %119)
  %121 = load i32, i32* %23, align 4
  ret i32 %121
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @MPASS(i32*) #2

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc*, %struct.hwrm_nvm_find_dir_entry_input*, i32) #2

declare dso_local i32 @htole32(i32) #2

declare dso_local i8* @htole16(i32) #2

declare dso_local i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc*) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt_softc*, %struct.hwrm_nvm_find_dir_entry_input*, i32) #2

declare dso_local i32 @le32toh(i32) #2

declare dso_local i32 @le16toh(i32) #2

declare dso_local i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
