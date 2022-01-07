; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ida/extr_ida_disk.c_idad_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ida/extr_ida_disk.c_idad_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ida_drive_info = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.idad_softc = type { i64, i32, i32, %struct.TYPE_5__*, i32, i32, i32, i32, %struct.ida_softc*, i32 }
%struct.TYPE_5__ = type { i8*, i32, i32, i32, i32, %struct.idad_softc*, i32, i32, i32, i32 }
%struct.ida_softc = type { i32 }

@CMD_GET_LOG_DRV_INFO = common dso_local global i32 0, align 4
@DMA_DATA_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"CMD_GET_LOG_DRV_INFO failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"%uMB (%u sectors), blocksize=%d\0A\00", align 1
@idad_strategy = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"idad\00", align 1
@idad_dump = common dso_local global i32 0, align 4
@DFLTPHYS = common dso_local global i32 0, align 4
@DISK_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @idad_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idad_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ida_drive_info, align 4
  %5 = alloca %struct.idad_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @device_get_softc(i32 %8)
  %10 = inttoptr i64 %9 to %struct.idad_softc*
  store %struct.idad_softc* %10, %struct.idad_softc** %5, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @device_get_parent(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.idad_softc*, %struct.idad_softc** %5, align 8
  %15 = getelementptr inbounds %struct.idad_softc, %struct.idad_softc* %14, i32 0, i32 9
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @device_get_softc(i32 %16)
  %18 = inttoptr i64 %17 to %struct.ida_softc*
  %19 = load %struct.idad_softc*, %struct.idad_softc** %5, align 8
  %20 = getelementptr inbounds %struct.idad_softc, %struct.idad_softc* %19, i32 0, i32 8
  store %struct.ida_softc* %18, %struct.ida_softc** %20, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @device_get_unit(i32 %21)
  %23 = load %struct.idad_softc*, %struct.idad_softc** %5, align 8
  %24 = getelementptr inbounds %struct.idad_softc, %struct.idad_softc* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i64 @device_get_ivars(i32 %25)
  %27 = load %struct.idad_softc*, %struct.idad_softc** %5, align 8
  %28 = getelementptr inbounds %struct.idad_softc, %struct.idad_softc* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.idad_softc*, %struct.idad_softc** %5, align 8
  %30 = getelementptr inbounds %struct.idad_softc, %struct.idad_softc* %29, i32 0, i32 8
  %31 = load %struct.ida_softc*, %struct.ida_softc** %30, align 8
  %32 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %31, i32 0, i32 0
  %33 = call i32 @mtx_lock(i32* %32)
  %34 = load %struct.idad_softc*, %struct.idad_softc** %5, align 8
  %35 = getelementptr inbounds %struct.idad_softc, %struct.idad_softc* %34, i32 0, i32 8
  %36 = load %struct.ida_softc*, %struct.ida_softc** %35, align 8
  %37 = load i32, i32* @CMD_GET_LOG_DRV_INFO, align 4
  %38 = load %struct.idad_softc*, %struct.idad_softc** %5, align 8
  %39 = getelementptr inbounds %struct.idad_softc, %struct.idad_softc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @DMA_DATA_IN, align 4
  %42 = call i32 @ida_command(%struct.ida_softc* %36, i32 %37, %struct.ida_drive_info* %4, i32 20, i64 %40, i32 0, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load %struct.idad_softc*, %struct.idad_softc** %5, align 8
  %44 = getelementptr inbounds %struct.idad_softc, %struct.idad_softc* %43, i32 0, i32 8
  %45 = load %struct.ida_softc*, %struct.ida_softc** %44, align 8
  %46 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %45, i32 0, i32 0
  %47 = call i32 @mtx_unlock(i32* %46)
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %1
  %51 = load i32, i32* %3, align 4
  %52 = call i32 (i32, i8*, ...) @device_printf(i32 %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @ENXIO, align 4
  store i32 %53, i32* %2, align 4
  br label %172

54:                                               ; preds = %1
  %55 = getelementptr inbounds %struct.ida_drive_info, %struct.ida_drive_info* %4, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.idad_softc*, %struct.idad_softc** %5, align 8
  %59 = getelementptr inbounds %struct.idad_softc, %struct.idad_softc* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 4
  %60 = getelementptr inbounds %struct.ida_drive_info, %struct.ida_drive_info* %4, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.idad_softc*, %struct.idad_softc** %5, align 8
  %64 = getelementptr inbounds %struct.idad_softc, %struct.idad_softc* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 4
  %65 = getelementptr inbounds %struct.ida_drive_info, %struct.ida_drive_info* %4, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.idad_softc*, %struct.idad_softc** %5, align 8
  %69 = getelementptr inbounds %struct.idad_softc, %struct.idad_softc* %68, i32 0, i32 6
  store i32 %67, i32* %69, align 8
  %70 = getelementptr inbounds %struct.ida_drive_info, %struct.ida_drive_info* %4, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %54
  br label %77

74:                                               ; preds = %54
  %75 = getelementptr inbounds %struct.ida_drive_info, %struct.ida_drive_info* %4, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  br label %77

77:                                               ; preds = %74, %73
  %78 = phi i32 [ 512, %73 ], [ %76, %74 ]
  %79 = load %struct.idad_softc*, %struct.idad_softc** %5, align 8
  %80 = getelementptr inbounds %struct.idad_softc, %struct.idad_softc* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  %81 = getelementptr inbounds %struct.ida_drive_info, %struct.ida_drive_info* %4, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.idad_softc*, %struct.idad_softc** %5, align 8
  %84 = getelementptr inbounds %struct.idad_softc, %struct.idad_softc* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %3, align 4
  %86 = load %struct.idad_softc*, %struct.idad_softc** %5, align 8
  %87 = getelementptr inbounds %struct.idad_softc, %struct.idad_softc* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.idad_softc*, %struct.idad_softc** %5, align 8
  %90 = getelementptr inbounds %struct.idad_softc, %struct.idad_softc* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = sdiv i32 1048576, %91
  %93 = sdiv i32 %88, %92
  %94 = load %struct.idad_softc*, %struct.idad_softc** %5, align 8
  %95 = getelementptr inbounds %struct.idad_softc, %struct.idad_softc* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.idad_softc*, %struct.idad_softc** %5, align 8
  %98 = getelementptr inbounds %struct.idad_softc, %struct.idad_softc* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (i32, i8*, ...) @device_printf(i32 %85, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %96, i32 %99)
  %101 = call %struct.TYPE_5__* (...) @disk_alloc()
  %102 = load %struct.idad_softc*, %struct.idad_softc** %5, align 8
  %103 = getelementptr inbounds %struct.idad_softc, %struct.idad_softc* %102, i32 0, i32 3
  store %struct.TYPE_5__* %101, %struct.TYPE_5__** %103, align 8
  %104 = load i32, i32* @idad_strategy, align 4
  %105 = load %struct.idad_softc*, %struct.idad_softc** %5, align 8
  %106 = getelementptr inbounds %struct.idad_softc, %struct.idad_softc* %105, i32 0, i32 3
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 9
  store i32 %104, i32* %108, align 4
  %109 = load %struct.idad_softc*, %struct.idad_softc** %5, align 8
  %110 = getelementptr inbounds %struct.idad_softc, %struct.idad_softc* %109, i32 0, i32 3
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %112, align 8
  %113 = load i32, i32* @idad_dump, align 4
  %114 = load %struct.idad_softc*, %struct.idad_softc** %5, align 8
  %115 = getelementptr inbounds %struct.idad_softc, %struct.idad_softc* %114, i32 0, i32 3
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 8
  store i32 %113, i32* %117, align 8
  %118 = load %struct.idad_softc*, %struct.idad_softc** %5, align 8
  %119 = getelementptr inbounds %struct.idad_softc, %struct.idad_softc* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.idad_softc*, %struct.idad_softc** %5, align 8
  %122 = getelementptr inbounds %struct.idad_softc, %struct.idad_softc* %121, i32 0, i32 3
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  store i32 %120, i32* %124, align 8
  %125 = load %struct.idad_softc*, %struct.idad_softc** %5, align 8
  %126 = getelementptr inbounds %struct.idad_softc, %struct.idad_softc* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.idad_softc*, %struct.idad_softc** %5, align 8
  %129 = getelementptr inbounds %struct.idad_softc, %struct.idad_softc* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = mul nsw i32 %127, %130
  %132 = load %struct.idad_softc*, %struct.idad_softc** %5, align 8
  %133 = getelementptr inbounds %struct.idad_softc, %struct.idad_softc* %132, i32 0, i32 3
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 2
  store i32 %131, i32* %135, align 4
  %136 = load %struct.idad_softc*, %struct.idad_softc** %5, align 8
  %137 = getelementptr inbounds %struct.idad_softc, %struct.idad_softc* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.idad_softc*, %struct.idad_softc** %5, align 8
  %140 = getelementptr inbounds %struct.idad_softc, %struct.idad_softc* %139, i32 0, i32 3
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 7
  store i32 %138, i32* %142, align 4
  %143 = load %struct.idad_softc*, %struct.idad_softc** %5, align 8
  %144 = getelementptr inbounds %struct.idad_softc, %struct.idad_softc* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.idad_softc*, %struct.idad_softc** %5, align 8
  %147 = getelementptr inbounds %struct.idad_softc, %struct.idad_softc* %146, i32 0, i32 3
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 6
  store i32 %145, i32* %149, align 8
  %150 = load %struct.idad_softc*, %struct.idad_softc** %5, align 8
  %151 = load %struct.idad_softc*, %struct.idad_softc** %5, align 8
  %152 = getelementptr inbounds %struct.idad_softc, %struct.idad_softc* %151, i32 0, i32 3
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 5
  store %struct.idad_softc* %150, %struct.idad_softc** %154, align 8
  %155 = load i32, i32* @DFLTPHYS, align 4
  %156 = load %struct.idad_softc*, %struct.idad_softc** %5, align 8
  %157 = getelementptr inbounds %struct.idad_softc, %struct.idad_softc* %156, i32 0, i32 3
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 4
  store i32 %155, i32* %159, align 4
  %160 = load %struct.idad_softc*, %struct.idad_softc** %5, align 8
  %161 = getelementptr inbounds %struct.idad_softc, %struct.idad_softc* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.idad_softc*, %struct.idad_softc** %5, align 8
  %164 = getelementptr inbounds %struct.idad_softc, %struct.idad_softc* %163, i32 0, i32 3
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 3
  store i32 %162, i32* %166, align 8
  %167 = load %struct.idad_softc*, %struct.idad_softc** %5, align 8
  %168 = getelementptr inbounds %struct.idad_softc, %struct.idad_softc* %167, i32 0, i32 3
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %168, align 8
  %170 = load i32, i32* @DISK_VERSION, align 4
  %171 = call i32 @disk_create(%struct.TYPE_5__* %169, i32 %170)
  store i32 0, i32* %2, align 4
  br label %172

172:                                              ; preds = %77, %50
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i64 @device_get_ivars(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @ida_command(%struct.ida_softc*, i32, %struct.ida_drive_info*, i32, i64, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_5__* @disk_alloc(...) #1

declare dso_local i32 @disk_create(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
