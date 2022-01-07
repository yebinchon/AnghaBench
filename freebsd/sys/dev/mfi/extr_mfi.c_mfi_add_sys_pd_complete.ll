; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_add_sys_pd_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_add_sys_pd_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_command = type { %struct.mfi_pd_info*, %struct.TYPE_4__*, %struct.mfi_softc* }
%struct.mfi_pd_info = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.mfi_frame_header }
%struct.mfi_frame_header = type { i64 }
%struct.mfi_softc = type { i32, i32 }

@MFI_STAT_OK = common dso_local global i64 0, align 8
@M_MFIBUF = common dso_local global i32 0, align 4
@MFI_PD_STATE_SYSTEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"PD=%x is not SYSTEM PD\0A\00", align 1
@Giant = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"mfisyspd\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to add system pd\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"MFI System PD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mfi_command*)* @mfi_add_sys_pd_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mfi_add_sys_pd_complete(%struct.mfi_command* %0) #0 {
  %2 = alloca %struct.mfi_command*, align 8
  %3 = alloca %struct.mfi_frame_header*, align 8
  %4 = alloca %struct.mfi_pd_info*, align 8
  %5 = alloca %struct.mfi_softc*, align 8
  %6 = alloca i32*, align 8
  store %struct.mfi_command* %0, %struct.mfi_command** %2, align 8
  %7 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %8 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %7, i32 0, i32 2
  %9 = load %struct.mfi_softc*, %struct.mfi_softc** %8, align 8
  store %struct.mfi_softc* %9, %struct.mfi_softc** %5, align 8
  %10 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %11 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store %struct.mfi_frame_header* %13, %struct.mfi_frame_header** %3, align 8
  %14 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %15 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %14, i32 0, i32 0
  %16 = load %struct.mfi_pd_info*, %struct.mfi_pd_info** %15, align 8
  store %struct.mfi_pd_info* %16, %struct.mfi_pd_info** %4, align 8
  %17 = load %struct.mfi_frame_header*, %struct.mfi_frame_header** %3, align 8
  %18 = getelementptr inbounds %struct.mfi_frame_header, %struct.mfi_frame_header* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MFI_STAT_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.mfi_pd_info*, %struct.mfi_pd_info** %4, align 8
  %24 = load i32, i32* @M_MFIBUF, align 4
  %25 = call i32 @free(%struct.mfi_pd_info* %23, i32 %24)
  %26 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %27 = call i32 @mfi_release_command(%struct.mfi_command* %26)
  br label %87

28:                                               ; preds = %1
  %29 = load %struct.mfi_pd_info*, %struct.mfi_pd_info** %4, align 8
  %30 = getelementptr inbounds %struct.mfi_pd_info, %struct.mfi_pd_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MFI_PD_STATE_SYSTEM, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %28
  %35 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %36 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mfi_pd_info*, %struct.mfi_pd_info** %4, align 8
  %39 = getelementptr inbounds %struct.mfi_pd_info, %struct.mfi_pd_info* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i32, i8*, ...) @device_printf(i32 %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load %struct.mfi_pd_info*, %struct.mfi_pd_info** %4, align 8
  %45 = load i32, i32* @M_MFIBUF, align 4
  %46 = call i32 @free(%struct.mfi_pd_info* %44, i32 %45)
  %47 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %48 = call i32 @mfi_release_command(%struct.mfi_command* %47)
  br label %87

49:                                               ; preds = %28
  %50 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %51 = call i32 @mfi_release_command(%struct.mfi_command* %50)
  %52 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %53 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %52, i32 0, i32 0
  %54 = call i32 @mtx_unlock(i32* %53)
  %55 = call i32 @mtx_lock(i32* @Giant)
  %56 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %57 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32* @device_add_child(i32 %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  store i32* %59, i32** %6, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %73

61:                                               ; preds = %49
  %62 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %63 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i32, i8*, ...) @device_printf(i32 %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %66 = load %struct.mfi_pd_info*, %struct.mfi_pd_info** %4, align 8
  %67 = load i32, i32* @M_MFIBUF, align 4
  %68 = call i32 @free(%struct.mfi_pd_info* %66, i32 %67)
  %69 = call i32 @mtx_unlock(i32* @Giant)
  %70 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %71 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %70, i32 0, i32 0
  %72 = call i32 @mtx_lock(i32* %71)
  br label %87

73:                                               ; preds = %49
  %74 = load i32*, i32** %6, align 8
  %75 = load %struct.mfi_pd_info*, %struct.mfi_pd_info** %4, align 8
  %76 = call i32 @device_set_ivars(i32* %74, %struct.mfi_pd_info* %75)
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @device_set_desc(i32* %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %79 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %80 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @bus_generic_attach(i32 %81)
  %83 = call i32 @mtx_unlock(i32* @Giant)
  %84 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %85 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %84, i32 0, i32 0
  %86 = call i32 @mtx_lock(i32* %85)
  br label %87

87:                                               ; preds = %73, %61, %34, %22
  ret void
}

declare dso_local i32 @free(%struct.mfi_pd_info*, i32) #1

declare dso_local i32 @mfi_release_command(%struct.mfi_command*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32* @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.mfi_pd_info*) #1

declare dso_local i32 @device_set_desc(i32*, i8*) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
