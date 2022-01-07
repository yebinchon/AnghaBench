; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mptsas_sas_device_pg0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mptsas_sas_device_pg0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32 }
%struct.mptsas_devinfo = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MPI_SASDEVICE0_PAGEVERSION = common dso_local global i32 0, align 4
@MPI_CONFIG_EXTPAGETYPE_SAS_DEVICE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MPI_CONFIG_ACTION_PAGE_READ_CURRENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*, %struct.mptsas_devinfo*, i64, i64)* @mptsas_sas_device_pg0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mptsas_sas_device_pg0(%struct.mpt_softc* %0, %struct.mptsas_devinfo* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.mpt_softc*, align 8
  %6 = alloca %struct.mptsas_devinfo*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_9__, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %5, align 8
  store %struct.mptsas_devinfo* %1, %struct.mptsas_devinfo** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %6, align 8
  %14 = call i32 @bzero(%struct.mptsas_devinfo* %13, i32 56)
  %15 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %16 = load i32, i32* @MPI_SASDEVICE0_PAGEVERSION, align 4
  %17 = load i32, i32* @MPI_CONFIG_EXTPAGETYPE_SAS_DEVICE, align 4
  %18 = call i32 @mpt_read_extcfg_header(%struct.mpt_softc* %15, i32 %16, i32 0, i32 0, i32 %17, %struct.TYPE_9__* %9, i32 0, i32 10000)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %113

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %12, align 4
  br label %113

28:                                               ; preds = %22
  %29 = load i32, i32* @M_DEVBUF, align 4
  %30 = load i32, i32* @M_NOWAIT, align 4
  %31 = load i32, i32* @M_ZERO, align 4
  %32 = or i32 %30, %31
  %33 = call %struct.TYPE_8__* @malloc(i32 40, i32 %29, i32 %32)
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %10, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %35 = icmp eq %struct.TYPE_8__* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @ENOMEM, align 4
  store i32 %37, i32* %12, align 4
  br label %113

38:                                               ; preds = %28
  %39 = load %struct.mpt_softc*, %struct.mpt_softc** %5, align 8
  %40 = load i32, i32* @MPI_CONFIG_ACTION_PAGE_READ_CURRENT, align 4
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = add nsw i64 %41, %42
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %45 = call i32 @mpt_read_extcfg_page(%struct.mpt_softc* %39, i32 %40, i64 %43, %struct.TYPE_9__* %9, %struct.TYPE_8__* %44, i32 40, i32 0, i32 10000)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %38
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %50 = load i32, i32* @M_DEVBUF, align 4
  %51 = call i32 @free(%struct.TYPE_8__* %49, i32 %50)
  br label %113

52:                                               ; preds = %38
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 9
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @le16toh(i32 %55)
  %57 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %6, align 8
  %58 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %57, i32 0, i32 9
  store i8* %56, i8** %58, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 8
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @le16toh(i32 %61)
  %63 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %6, align 8
  %64 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %63, i32 0, i32 8
  store i8* %62, i8** %64, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @le16toh(i32 %67)
  %69 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %6, align 8
  %70 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %69, i32 0, i32 7
  store i8* %68, i8** %70, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @le16toh(i32 %73)
  %75 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %6, align 8
  %76 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %75, i32 0, i32 6
  store i8* %74, i8** %76, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %6, align 8
  %81 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %6, align 8
  %86 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %6, align 8
  %91 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %6, align 8
  %96 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = call i32 @bcopy(i32* %98, i32* %11, i32 4)
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @le64toh(i32 %100)
  %102 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %6, align 8
  %103 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @le32toh(i32 %106)
  %108 = load %struct.mptsas_devinfo*, %struct.mptsas_devinfo** %6, align 8
  %109 = getelementptr inbounds %struct.mptsas_devinfo, %struct.mptsas_devinfo* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %111 = load i32, i32* @M_DEVBUF, align 4
  %112 = call i32 @free(%struct.TYPE_8__* %110, i32 %111)
  br label %113

113:                                              ; preds = %52, %48, %36, %26, %21
  %114 = load i32, i32* %12, align 4
  ret i32 %114
}

declare dso_local i32 @bzero(%struct.mptsas_devinfo*, i32) #1

declare dso_local i32 @mpt_read_extcfg_header(%struct.mpt_softc*, i32, i32, i32, i32, %struct.TYPE_9__*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @malloc(i32, i32, i32) #1

declare dso_local i32 @mpt_read_extcfg_page(%struct.mpt_softc*, i32, i64, %struct.TYPE_9__*, %struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_8__*, i32) #1

declare dso_local i8* @le16toh(i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @le64toh(i32) #1

declare dso_local i32 @le32toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
