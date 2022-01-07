; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mptsas_set_sata_wc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mptsas_set_sata_wc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32 }
%struct.mptsas_devinfo = type { i32, i32 }
%struct.TYPE_9__ = type { i32*, i32, i64, i32, i64, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_9__* }

@MPI_FUNCTION_SATA_PASSTHROUGH = common dso_local global i32 0, align 4
@MPI_SATA_PT_REQ_CONNECT_RATE_NEGOTIATED = common dso_local global i32 0, align 4
@sata_pass_handler_id = common dso_local global i32 0, align 4
@REQ_STATE_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"error %d sending passthrough\0A\00", align 1
@MPI_IOCSTATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"IOCSTATUS %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpt_softc*, %struct.mptsas_devinfo*, i32)* @mptsas_set_sata_wc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mptsas_set_sata_wc(%struct.mpt_softc* %0, %struct.mptsas_devinfo* %1, i32 %2) #0 {
  %4 = alloca %struct.mpt_softc*, align 8
  %5 = alloca %struct.mptsas_devinfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %4, align 8
  store %struct.mptsas_devinfo* %1, %struct.mptsas_devinfo** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %12 = call %struct.TYPE_8__* @mpt_get_request(%struct.mpt_softc* %11, i32 0)
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %8, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %14 = icmp eq %struct.TYPE_8__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %114

16:                                               ; preds = %3
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %7, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %21 = call i32 @bzero(%struct.TYPE_9__* %20, i32 56)
  %22 = load i32, i32* @MPI_FUNCTION_SATA_PASSTHROUGH, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 7
  store i32 %22, i32* %24, align 8
  %25 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %5, align 8
  %26 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 4
  %30 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %5, align 8
  %31 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 4
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* @MPI_SATA_PT_REQ_CONNECT_RATE_NEGOTIATED, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @sata_pass_handler_id, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @htole32(i32 %46)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 39, i32* %53, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  store i32 128, i32* %57, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  store i32 239, i32* %61, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 2, i32 130
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 3
  store i32 %65, i32* %69, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 7
  store i32 64, i32* %73, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 15
  store i32 8, i32* %77, align 4
  %78 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %79 = call i32 @mpt_check_doorbell(%struct.mpt_softc* %78)
  %80 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %82 = call i32 @mpt_send_cmd(%struct.mpt_softc* %80, %struct.TYPE_8__* %81)
  %83 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %85 = load i32, i32* @REQ_STATE_DONE, align 4
  %86 = load i32, i32* @REQ_STATE_DONE, align 4
  %87 = call i32 @mpt_wait_req(%struct.mpt_softc* %83, %struct.TYPE_8__* %84, i32 %85, i32 %86, i32 0, i32 10000)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %16
  %91 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %93 = call i32 @mpt_free_request(%struct.mpt_softc* %91, %struct.TYPE_8__* %92)
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %94)
  br label %114

96:                                               ; preds = %16
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @le16toh(i32 %99)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @MPI_IOCSTATUS_SUCCESS, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %96
  %105 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %107 = call i32 @mpt_free_request(%struct.mpt_softc* %105, %struct.TYPE_8__* %106)
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  br label %114

110:                                              ; preds = %96
  %111 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %113 = call i32 @mpt_free_request(%struct.mpt_softc* %111, %struct.TYPE_8__* %112)
  br label %114

114:                                              ; preds = %110, %104, %90, %15
  ret void
}

declare dso_local %struct.TYPE_8__* @mpt_get_request(%struct.mpt_softc*, i32) #1

declare dso_local i32 @bzero(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @mpt_check_doorbell(%struct.mpt_softc*) #1

declare dso_local i32 @mpt_send_cmd(%struct.mpt_softc*, %struct.TYPE_8__*) #1

declare dso_local i32 @mpt_wait_req(%struct.mpt_softc*, %struct.TYPE_8__*, i32, i32, i32, i32) #1

declare dso_local i32 @mpt_free_request(%struct.mpt_softc*, %struct.TYPE_8__*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @le16toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
