; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_sbp.c_sbp_print_scsi_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_sbp.c_sbp_print_scsi_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp_ocb = type { %struct.TYPE_14__*, %struct.TYPE_11__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.ccb_scsiio }
%struct.TYPE_13__ = type { i32, i32, i64 }
%struct.ccb_scsiio = type { i32, i32, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [122 x i8] c"%s:%d:%jx XPT_SCSI_IO: cmd: %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x, flags: 0x%02x, %db cmd/%db data/%db sense\0A\00", align 1
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbp_ocb*)* @sbp_print_scsi_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbp_print_scsi_cmd(%struct.sbp_ocb* %0) #0 {
  %2 = alloca %struct.sbp_ocb*, align 8
  %3 = alloca %struct.ccb_scsiio*, align 8
  store %struct.sbp_ocb* %0, %struct.sbp_ocb** %2, align 8
  %4 = load %struct.sbp_ocb*, %struct.sbp_ocb** %2, align 8
  %5 = getelementptr inbounds %struct.sbp_ocb, %struct.sbp_ocb* %4, i32 0, i32 0
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  store %struct.ccb_scsiio* %7, %struct.ccb_scsiio** %3, align 8
  %8 = load %struct.sbp_ocb*, %struct.sbp_ocb** %2, align 8
  %9 = getelementptr inbounds %struct.sbp_ocb, %struct.sbp_ocb* %8, i32 0, i32 1
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @device_get_nameunit(i32 %17)
  %19 = load %struct.sbp_ocb*, %struct.sbp_ocb** %2, align 8
  %20 = getelementptr inbounds %struct.sbp_ocb, %struct.sbp_ocb* %19, i32 0, i32 0
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.sbp_ocb*, %struct.sbp_ocb** %2, align 8
  %26 = getelementptr inbounds %struct.sbp_ocb, %struct.sbp_ocb* %25, i32 0, i32 0
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %3, align 8
  %33 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %3, align 8
  %39 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %3, align 8
  %45 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %3, align 8
  %51 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %3, align 8
  %57 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %3, align 8
  %63 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 5
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %3, align 8
  %69 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 6
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %3, align 8
  %75 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 7
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %3, align 8
  %81 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 8
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %3, align 8
  %87 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 9
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.sbp_ocb*, %struct.sbp_ocb** %2, align 8
  %93 = getelementptr inbounds %struct.sbp_ocb, %struct.sbp_ocb* %92, i32 0, i32 0
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @CAM_DIR_MASK, align 4
  %99 = and i32 %97, %98
  %100 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %3, align 8
  %101 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %3, align 8
  %104 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %3, align 8
  %107 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @printf(i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str, i64 0, i64 0), i8* %18, i32 %24, i32 %31, i32 %37, i32 %43, i32 %49, i32 %55, i32 %61, i32 %67, i32 %73, i32 %79, i32 %85, i32 %91, i32 %99, i32 %102, i32 %105, i32 %108)
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i8* @device_get_nameunit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
