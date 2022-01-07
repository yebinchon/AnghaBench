; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_build_mpt_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_build_mpt_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.mrsas_softc = type { i32 }
%struct.mrsas_mfi_cmd = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@.str = private unnamed_addr constant [36 x i8] c"Cannot build MPT-MFI passthru cmd.\0A\00", align 1
@MPI2_REQ_DESCRIPT_FLAGS_SCSI_IO = common dso_local global i32 0, align 4
@MRSAS_REQ_DESCRIPT_FLAGS_TYPE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @mrsas_build_mpt_cmd(%struct.mrsas_softc* %0, %struct.mrsas_mfi_cmd* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.mrsas_softc*, align 8
  %5 = alloca %struct.mrsas_mfi_cmd*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i64, align 8
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %4, align 8
  store %struct.mrsas_mfi_cmd* %1, %struct.mrsas_mfi_cmd** %5, align 8
  %8 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %9 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %10 = call i64 @mrsas_build_mptmfi_passthru(%struct.mrsas_softc* %8, %struct.mrsas_mfi_cmd* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %14 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @device_printf(i32 %15, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %45

17:                                               ; preds = %2
  %18 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %19 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %7, align 8
  %23 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %24 = load i64, i64* %7, align 8
  %25 = sub nsw i64 %24, 1
  %26 = call %struct.TYPE_12__* @mrsas_get_request_desc(%struct.mrsas_softc* %23, i64 %25)
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %6, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %28 = icmp ne %struct.TYPE_12__* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %17
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %45

30:                                               ; preds = %17
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @MPI2_REQ_DESCRIPT_FLAGS_SCSI_IO, align 4
  %35 = load i32, i32* @MRSAS_REQ_DESCRIPT_FLAGS_TYPE_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  store i64 %40, i64* %43, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %44, %struct.TYPE_12__** %3, align 8
  br label %45

45:                                               ; preds = %30, %29, %12
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  ret %struct.TYPE_12__* %46
}

declare dso_local i64 @mrsas_build_mptmfi_passthru(%struct.mrsas_softc*, %struct.mrsas_mfi_cmd*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.TYPE_12__* @mrsas_get_request_desc(%struct.mrsas_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
