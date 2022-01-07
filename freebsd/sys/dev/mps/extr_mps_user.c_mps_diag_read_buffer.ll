; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_user.c_mps_diag_read_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_user.c_mps_diag_read_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mps_softc = type { i64, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32, i64 }
%struct.TYPE_6__ = type { i64, i64, i32, i64, i32 }

@MPS_FW_DIAGNOSTIC_UID_NOT_FOUND = common dso_local global i64 0, align 8
@MPS_FW_DIAG_ERROR_INVALID_UID = common dso_local global i32 0, align 4
@MPS_DIAG_FAILURE = common dso_local global i32 0, align 4
@MPS_FW_DIAG_ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@MPS_FW_DIAG_FLAG_FORCE_RELEASE = common dso_local global i32 0, align 4
@MPS_DIAG_SUCCESS = common dso_local global i32 0, align 4
@MPS_FW_DIAG_FLAG_REREGISTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mps_softc*, %struct.TYPE_6__*, i64*, i32*)* @mps_diag_read_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mps_diag_read_buffer(%struct.mps_softc* %0, %struct.TYPE_6__* %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mps_softc*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mps_softc* %0, %struct.mps_softc** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %13, align 4
  %18 = load %struct.mps_softc*, %struct.mps_softc** %6, align 8
  %19 = load i32, i32* %13, align 4
  %20 = call i64 @mps_get_fw_diag_buffer_number(%struct.mps_softc* %18, i32 %19)
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* @MPS_FW_DIAGNOSTIC_UID_NOT_FOUND, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load i32, i32* @MPS_FW_DIAG_ERROR_INVALID_UID, align 4
  %26 = load i32*, i32** %9, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @MPS_DIAG_FAILURE, align 4
  store i32 %27, i32* %5, align 4
  br label %116

28:                                               ; preds = %4
  %29 = load %struct.mps_softc*, %struct.mps_softc** %6, align 8
  %30 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %29, i32 0, i32 3
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = load i64, i64* %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %32
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %10, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %40, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %28
  %46 = load i32, i32* @MPS_FW_DIAG_ERROR_INVALID_PARAMETER, align 4
  %47 = load i32*, i32** %9, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @MPS_DIAG_FAILURE, align 4
  store i32 %48, i32* %5, align 4
  br label %116

49:                                               ; preds = %28
  %50 = load %struct.mps_softc*, %struct.mps_softc** %6, align 8
  %51 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.mps_softc*, %struct.mps_softc** %6, align 8
  %54 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %57 = call i32 @bus_dmamap_sync(i32 %52, i32 %55, i32 %56)
  %58 = load %struct.mps_softc*, %struct.mps_softc** %6, align 8
  %59 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %60, %63
  %65 = inttoptr i64 %64 to i64*
  store i64* %65, i64** %12, align 8
  %66 = load i64*, i64** %12, align 8
  %67 = load i64*, i64** %8, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @copyout(i64* %66, i64* %67, i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %49
  %74 = load i32, i32* @MPS_DIAG_FAILURE, align 4
  store i32 %74, i32* %5, align 4
  br label %116

75:                                               ; preds = %49
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 3
  store i64 0, i64* %77, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %75
  %83 = load i32, i32* @MPS_FW_DIAG_FLAG_FORCE_RELEASE, align 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  br label %95

88:                                               ; preds = %75
  %89 = load i32, i32* @MPS_FW_DIAG_FLAG_FORCE_RELEASE, align 4
  %90 = xor i32 %89, -1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %93, %90
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %88, %82
  %96 = load i32, i32* @MPS_DIAG_SUCCESS, align 4
  store i32 %96, i32* %14, align 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %114, label %101

101:                                              ; preds = %95
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @MPS_FW_DIAG_FLAG_REREGISTER, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %101
  %109 = load %struct.mps_softc*, %struct.mps_softc** %6, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = call i32 @mps_post_fw_diag_buffer(%struct.mps_softc* %109, %struct.TYPE_5__* %110, i32* %111)
  store i32 %112, i32* %14, align 4
  br label %113

113:                                              ; preds = %108, %101
  br label %114

114:                                              ; preds = %113, %95
  %115 = load i32, i32* %14, align 4
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %114, %73, %45, %24
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i64 @mps_get_fw_diag_buffer_number(%struct.mps_softc*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i64 @copyout(i64*, i64*, i64) #1

declare dso_local i32 @mps_post_fw_diag_buffer(%struct.mps_softc*, %struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
