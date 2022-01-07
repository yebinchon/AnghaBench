; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_add_ld_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_add_ld_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_command = type { %struct.mfi_ld_info*, %struct.TYPE_2__*, %struct.mfi_softc* }
%struct.mfi_ld_info = type { i32 }
%struct.TYPE_2__ = type { %struct.mfi_frame_header }
%struct.mfi_frame_header = type { i64 }
%struct.mfi_softc = type { i32, i32, i32, i64 }

@MFI_STAT_OK = common dso_local global i64 0, align 8
@M_MFIBUF = common dso_local global i32 0, align 4
@Giant = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"mfid\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to add logical disk\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"MFI Logical Disk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mfi_command*)* @mfi_add_ld_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mfi_add_ld_complete(%struct.mfi_command* %0) #0 {
  %2 = alloca %struct.mfi_command*, align 8
  %3 = alloca %struct.mfi_frame_header*, align 8
  %4 = alloca %struct.mfi_ld_info*, align 8
  %5 = alloca %struct.mfi_softc*, align 8
  %6 = alloca i32*, align 8
  store %struct.mfi_command* %0, %struct.mfi_command** %2, align 8
  %7 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %8 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %7, i32 0, i32 2
  %9 = load %struct.mfi_softc*, %struct.mfi_softc** %8, align 8
  store %struct.mfi_softc* %9, %struct.mfi_softc** %5, align 8
  %10 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %11 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.mfi_frame_header* %13, %struct.mfi_frame_header** %3, align 8
  %14 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %15 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %14, i32 0, i32 0
  %16 = load %struct.mfi_ld_info*, %struct.mfi_ld_info** %15, align 8
  store %struct.mfi_ld_info* %16, %struct.mfi_ld_info** %4, align 8
  %17 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %18 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %1
  %22 = load %struct.mfi_frame_header*, %struct.mfi_frame_header** %3, align 8
  %23 = getelementptr inbounds %struct.mfi_frame_header, %struct.mfi_frame_header* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MFI_STAT_OK, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %21, %1
  %28 = load %struct.mfi_ld_info*, %struct.mfi_ld_info** %4, align 8
  %29 = load i32, i32* @M_MFIBUF, align 4
  %30 = call i32 @free(%struct.mfi_ld_info* %28, i32 %29)
  %31 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %32 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %31, i32 0, i32 2
  %33 = call i32 @wakeup(i32* %32)
  %34 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %35 = call i32 @mfi_release_command(%struct.mfi_command* %34)
  br label %77

36:                                               ; preds = %21
  %37 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %38 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %37, i32 0, i32 2
  %39 = call i32 @wakeup(i32* %38)
  %40 = load %struct.mfi_command*, %struct.mfi_command** %2, align 8
  %41 = call i32 @mfi_release_command(%struct.mfi_command* %40)
  %42 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %43 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %42, i32 0, i32 0
  %44 = call i32 @mtx_unlock(i32* %43)
  %45 = call i32 @mtx_lock(i32* @Giant)
  %46 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %47 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32* @device_add_child(i32 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 -1)
  store i32* %49, i32** %6, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %63

51:                                               ; preds = %36
  %52 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %53 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @device_printf(i32 %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.mfi_ld_info*, %struct.mfi_ld_info** %4, align 8
  %57 = load i32, i32* @M_MFIBUF, align 4
  %58 = call i32 @free(%struct.mfi_ld_info* %56, i32 %57)
  %59 = call i32 @mtx_unlock(i32* @Giant)
  %60 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %61 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %60, i32 0, i32 0
  %62 = call i32 @mtx_lock(i32* %61)
  br label %77

63:                                               ; preds = %36
  %64 = load i32*, i32** %6, align 8
  %65 = load %struct.mfi_ld_info*, %struct.mfi_ld_info** %4, align 8
  %66 = call i32 @device_set_ivars(i32* %64, %struct.mfi_ld_info* %65)
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @device_set_desc(i32* %67, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %69 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %70 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @bus_generic_attach(i32 %71)
  %73 = call i32 @mtx_unlock(i32* @Giant)
  %74 = load %struct.mfi_softc*, %struct.mfi_softc** %5, align 8
  %75 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %74, i32 0, i32 0
  %76 = call i32 @mtx_lock(i32* %75)
  br label %77

77:                                               ; preds = %63, %51, %27
  ret void
}

declare dso_local i32 @free(%struct.mfi_ld_info*, i32) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @mfi_release_command(%struct.mfi_command*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32* @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.mfi_ld_info*) #1

declare dso_local i32 @device_set_desc(i32*, i8*) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
