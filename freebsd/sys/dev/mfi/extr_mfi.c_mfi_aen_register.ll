; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_aen_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_aen_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_softc = type { i32, %struct.mfi_command*, i32 }
%struct.mfi_command = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.mfi_dcmd_frame }
%struct.mfi_dcmd_frame = type { i32 }
%union.mfi_evt = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.mfi_evt_detail = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@MFI_DCMD_CTRL_EVENT_WAIT = common dso_local global i32 0, align 4
@MFI_CMD_DATAIN = common dso_local global i32 0, align 4
@mfi_aen_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mfi_softc*, i32, i32)* @mfi_aen_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mfi_aen_register(%struct.mfi_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mfi_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mfi_command*, align 8
  %9 = alloca %struct.mfi_dcmd_frame*, align 8
  %10 = alloca %union.mfi_evt, align 8
  %11 = alloca %union.mfi_evt, align 8
  %12 = alloca %struct.mfi_evt_detail*, align 8
  %13 = alloca i32, align 4
  store %struct.mfi_softc* %0, %struct.mfi_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.mfi_evt_detail* null, %struct.mfi_evt_detail** %12, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %15 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %14, i32 0, i32 2
  %16 = load i32, i32* @MA_OWNED, align 4
  %17 = call i32 @mtx_assert(i32* %15, i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = bitcast %union.mfi_evt* %10 to i32*
  store i32 %18, i32* %19, align 8
  %20 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %21 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %20, i32 0, i32 1
  %22 = load %struct.mfi_command*, %struct.mfi_command** %21, align 8
  %23 = icmp ne %struct.mfi_command* %22, null
  br i1 %23, label %24, label %83

24:                                               ; preds = %3
  %25 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %26 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %25, i32 0, i32 1
  %27 = load %struct.mfi_command*, %struct.mfi_command** %26, align 8
  %28 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.mfi_dcmd_frame, %struct.mfi_dcmd_frame* %30, i32 0, i32 0
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = bitcast %union.mfi_evt* %11 to i32*
  store i32 %33, i32* %34, align 8
  %35 = bitcast %union.mfi_evt* %11 to %struct.TYPE_3__*
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = bitcast %union.mfi_evt* %10 to %struct.TYPE_3__*
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sle i64 %37, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %24
  %43 = bitcast %union.mfi_evt* %11 to %struct.TYPE_3__*
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = bitcast %union.mfi_evt* %10 to %struct.TYPE_3__*
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %45, %48
  %50 = bitcast %union.mfi_evt* %10 to %struct.TYPE_3__*
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = xor i32 %49, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %122

56:                                               ; preds = %42, %24
  %57 = bitcast %union.mfi_evt* %10 to %struct.TYPE_3__*
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = bitcast %union.mfi_evt* %11 to %struct.TYPE_3__*
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = bitcast %union.mfi_evt* %11 to %struct.TYPE_3__*
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = bitcast %union.mfi_evt* %10 to %struct.TYPE_3__*
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %66, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %56
  %72 = bitcast %union.mfi_evt* %11 to %struct.TYPE_3__*
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = bitcast %union.mfi_evt* %10 to %struct.TYPE_3__*
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %71, %56
  %78 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %79 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %80 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %79, i32 0, i32 1
  %81 = call i32 @mfi_abort(%struct.mfi_softc* %78, %struct.mfi_command** %80)
  br label %82

82:                                               ; preds = %77
  br label %83

83:                                               ; preds = %82, %3
  %84 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %85 = load i32, i32* @MFI_DCMD_CTRL_EVENT_WAIT, align 4
  %86 = bitcast %struct.mfi_evt_detail** %12 to i8**
  %87 = call i32 @mfi_dcmd_command(%struct.mfi_softc* %84, %struct.mfi_command** %8, i32 %85, i8** %86, i32 4)
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %120

91:                                               ; preds = %83
  %92 = load %struct.mfi_command*, %struct.mfi_command** %8, align 8
  %93 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %92, i32 0, i32 2
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store %struct.mfi_dcmd_frame* %95, %struct.mfi_dcmd_frame** %9, align 8
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.mfi_dcmd_frame*, %struct.mfi_dcmd_frame** %9, align 8
  %98 = getelementptr inbounds %struct.mfi_dcmd_frame, %struct.mfi_dcmd_frame* %97, i32 0, i32 0
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  store i32 %96, i32* %99, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.mfi_dcmd_frame*, %struct.mfi_dcmd_frame** %9, align 8
  %102 = getelementptr inbounds %struct.mfi_dcmd_frame, %struct.mfi_dcmd_frame* %101, i32 0, i32 0
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  store i32 %100, i32* %103, align 4
  %104 = load i32, i32* @MFI_CMD_DATAIN, align 4
  %105 = load %struct.mfi_command*, %struct.mfi_command** %8, align 8
  %106 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @mfi_aen_complete, align 4
  %108 = load %struct.mfi_command*, %struct.mfi_command** %8, align 8
  %109 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load i32, i32* %6, align 4
  %111 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %112 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.mfi_command*, %struct.mfi_command** %8, align 8
  %114 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %115 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %114, i32 0, i32 1
  store %struct.mfi_command* %113, %struct.mfi_command** %115, align 8
  %116 = load %struct.mfi_command*, %struct.mfi_command** %8, align 8
  %117 = call i32 @mfi_enqueue_ready(%struct.mfi_command* %116)
  %118 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %119 = call i32 @mfi_startio(%struct.mfi_softc* %118)
  br label %120

120:                                              ; preds = %91, %90
  %121 = load i32, i32* %13, align 4
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %120, %55
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @mfi_abort(%struct.mfi_softc*, %struct.mfi_command**) #1

declare dso_local i32 @mfi_dcmd_command(%struct.mfi_softc*, %struct.mfi_command**, i32, i8**, i32) #1

declare dso_local i32 @mfi_enqueue_ready(%struct.mfi_command*) #1

declare dso_local i32 @mfi_startio(%struct.mfi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
