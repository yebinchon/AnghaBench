; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_add_ld.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_add_ld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_softc = type { i32, i32, i32 }
%struct.mfi_command = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.mfi_dcmd_frame }
%struct.mfi_dcmd_frame = type { i32* }
%struct.mfi_ld_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mfi_disk_pending = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@M_MFIBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ld_link = common dso_local global i32 0, align 4
@MFI_DCMD_LD_GET_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Failed to allocate for MFI_DCMD_LD_GET_INFO %d\0A\00", align 1
@MFI_CMD_DATAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to get logical drive: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mfi_softc*, i32)* @mfi_add_ld to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mfi_add_ld(%struct.mfi_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mfi_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mfi_command*, align 8
  %7 = alloca %struct.mfi_dcmd_frame*, align 8
  %8 = alloca %struct.mfi_ld_info*, align 8
  %9 = alloca %struct.mfi_disk_pending*, align 8
  %10 = alloca i32, align 4
  store %struct.mfi_softc* %0, %struct.mfi_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mfi_dcmd_frame* null, %struct.mfi_dcmd_frame** %7, align 8
  store %struct.mfi_ld_info* null, %struct.mfi_ld_info** %8, align 8
  %11 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %12 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %11, i32 0, i32 2
  %13 = load i32, i32* @MA_OWNED, align 4
  %14 = call i32 @mtx_assert(i32* %12, i32 %13)
  %15 = load i32, i32* @M_MFIBUF, align 4
  %16 = load i32, i32* @M_NOWAIT, align 4
  %17 = load i32, i32* @M_ZERO, align 4
  %18 = or i32 %16, %17
  %19 = call %struct.mfi_disk_pending* @malloc(i32 4, i32 %15, i32 %18)
  store %struct.mfi_disk_pending* %19, %struct.mfi_disk_pending** %9, align 8
  %20 = load %struct.mfi_disk_pending*, %struct.mfi_disk_pending** %9, align 8
  %21 = icmp ne %struct.mfi_disk_pending* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.mfi_disk_pending*, %struct.mfi_disk_pending** %9, align 8
  %25 = getelementptr inbounds %struct.mfi_disk_pending, %struct.mfi_disk_pending* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %27 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %26, i32 0, i32 1
  %28 = load %struct.mfi_disk_pending*, %struct.mfi_disk_pending** %9, align 8
  %29 = load i32, i32* @ld_link, align 4
  %30 = call i32 @TAILQ_INSERT_TAIL(i32* %27, %struct.mfi_disk_pending* %28, i32 %29)
  br label %31

31:                                               ; preds = %22, %2
  %32 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %33 = load i32, i32* @MFI_DCMD_LD_GET_INFO, align 4
  %34 = bitcast %struct.mfi_ld_info** %8 to i8**
  %35 = call i32 @mfi_dcmd_command(%struct.mfi_softc* %32, %struct.mfi_command** %6, i32 %33, i8** %34, i32 4)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %31
  %39 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %40 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @device_printf(i32 %41, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load %struct.mfi_ld_info*, %struct.mfi_ld_info** %8, align 8
  %45 = icmp ne %struct.mfi_ld_info* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load %struct.mfi_ld_info*, %struct.mfi_ld_info** %8, align 8
  %48 = load i32, i32* @M_MFIBUF, align 4
  %49 = call i32 @free(%struct.mfi_ld_info* %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %38
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %3, align 4
  br label %99

52:                                               ; preds = %31
  %53 = load i32, i32* @MFI_CMD_DATAIN, align 4
  %54 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %55 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %57 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store %struct.mfi_dcmd_frame* %59, %struct.mfi_dcmd_frame** %7, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.mfi_dcmd_frame*, %struct.mfi_dcmd_frame** %7, align 8
  %62 = getelementptr inbounds %struct.mfi_dcmd_frame, %struct.mfi_dcmd_frame* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 %60, i32* %64, align 4
  %65 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %66 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %67 = call i64 @mfi_wait_command(%struct.mfi_softc* %65, %struct.mfi_command* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %52
  %70 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %71 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @device_printf(i32 %72, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load %struct.mfi_ld_info*, %struct.mfi_ld_info** %8, align 8
  %76 = load i32, i32* @M_MFIBUF, align 4
  %77 = call i32 @free(%struct.mfi_ld_info* %75, i32 %76)
  store i32 0, i32* %3, align 4
  br label %99

78:                                               ; preds = %52
  %79 = load %struct.mfi_ld_info*, %struct.mfi_ld_info** %8, align 8
  %80 = getelementptr inbounds %struct.mfi_ld_info, %struct.mfi_ld_info* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 1
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %87 = call i32 @mfi_add_ld_complete(%struct.mfi_command* %86)
  br label %98

88:                                               ; preds = %78
  %89 = load %struct.mfi_command*, %struct.mfi_command** %6, align 8
  %90 = call i32 @mfi_release_command(%struct.mfi_command* %89)
  %91 = load %struct.mfi_ld_info*, %struct.mfi_ld_info** %8, align 8
  %92 = icmp ne %struct.mfi_ld_info* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load %struct.mfi_ld_info*, %struct.mfi_ld_info** %8, align 8
  %95 = load i32, i32* @M_MFIBUF, align 4
  %96 = call i32 @free(%struct.mfi_ld_info* %94, i32 %95)
  br label %97

97:                                               ; preds = %93, %88
  br label %98

98:                                               ; preds = %97, %85
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %69, %50
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local %struct.mfi_disk_pending* @malloc(i32, i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.mfi_disk_pending*, i32) #1

declare dso_local i32 @mfi_dcmd_command(%struct.mfi_softc*, %struct.mfi_command**, i32, i8**, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @free(%struct.mfi_ld_info*, i32) #1

declare dso_local i64 @mfi_wait_command(%struct.mfi_softc*, %struct.mfi_command*) #1

declare dso_local i32 @mfi_add_ld_complete(%struct.mfi_command*) #1

declare dso_local i32 @mfi_release_command(%struct.mfi_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
