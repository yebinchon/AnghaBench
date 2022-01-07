; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_shutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_softc = type { i32, i32, i32, i32, i32*, i32* }
%struct.mfi_dcmd_frame = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mfi_command = type { i32*, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mfi_dcmd_frame }

@MFI_DCMD_CTRL_SHUTDOWN = common dso_local global i32 0, align 4
@MFI_FRAME_DIR_NONE = common dso_local global i32 0, align 4
@MFI_CMD_POLLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to shutdown controller\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mfi_shutdown(%struct.mfi_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mfi_softc*, align 8
  %4 = alloca %struct.mfi_dcmd_frame*, align 8
  %5 = alloca %struct.mfi_command*, align 8
  %6 = alloca i32, align 4
  store %struct.mfi_softc* %0, %struct.mfi_softc** %3, align 8
  %7 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %8 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %7, i32 0, i32 5
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %13 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %15 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %16 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %15, i32 0, i32 5
  %17 = call i32 @mfi_abort(%struct.mfi_softc* %14, i32** %16)
  br label %18

18:                                               ; preds = %11, %1
  %19 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %20 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %25 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  %26 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %27 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %28 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %27, i32 0, i32 4
  %29 = call i32 @mfi_abort(%struct.mfi_softc* %26, i32** %28)
  br label %30

30:                                               ; preds = %23, %18
  %31 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %32 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %31, i32 0, i32 2
  %33 = call i32 @mtx_lock(i32* %32)
  %34 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %35 = load i32, i32* @MFI_DCMD_CTRL_SHUTDOWN, align 4
  %36 = call i32 @mfi_dcmd_command(%struct.mfi_softc* %34, %struct.mfi_command** %5, i32 %35, i32* null, i32 0)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %30
  %40 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %41 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %40, i32 0, i32 2
  %42 = call i32 @mtx_unlock(i32* %41)
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %74

44:                                               ; preds = %30
  %45 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %46 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %45, i32 0, i32 2
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store %struct.mfi_dcmd_frame* %48, %struct.mfi_dcmd_frame** %4, align 8
  %49 = load i32, i32* @MFI_FRAME_DIR_NONE, align 4
  %50 = load %struct.mfi_dcmd_frame*, %struct.mfi_dcmd_frame** %4, align 8
  %51 = getelementptr inbounds %struct.mfi_dcmd_frame, %struct.mfi_dcmd_frame* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @MFI_CMD_POLLED, align 4
  %54 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %55 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %57 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %56, i32 0, i32 0
  store i32* null, i32** %57, align 8
  %58 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %59 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %60 = call i32 @mfi_mapcmd(%struct.mfi_softc* %58, %struct.mfi_command* %59)
  store i32 %60, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %44
  %63 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %64 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @device_printf(i32 %65, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %67

67:                                               ; preds = %62, %44
  %68 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %69 = call i32 @mfi_release_command(%struct.mfi_command* %68)
  %70 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %71 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %70, i32 0, i32 2
  %72 = call i32 @mtx_unlock(i32* %71)
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %67, %39
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @mfi_abort(%struct.mfi_softc*, i32**) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mfi_dcmd_command(%struct.mfi_softc*, %struct.mfi_command**, i32, i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @mfi_mapcmd(%struct.mfi_softc*, %struct.mfi_command*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mfi_release_command(%struct.mfi_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
