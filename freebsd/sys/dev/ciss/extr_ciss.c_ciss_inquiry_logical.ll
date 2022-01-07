; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_inquiry_logical.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_inquiry_logical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciss_softc = type { i32 }
%struct.ciss_ldrive = type { i32, i32 }
%struct.ciss_request = type { i32, i32, i32*, %struct.ciss_command* }
%struct.ciss_command = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.scsi_inquiry = type { i32, i32, i32, i32 }

@CISS_REQ_DATAIN = common dso_local global i32 0, align 4
@CISS_CDB_TYPE_COMMAND = common dso_local global i32 0, align 4
@CISS_CDB_ATTRIBUTE_SIMPLE = common dso_local global i32 0, align 4
@CISS_CDB_DIRECTION_READ = common dso_local global i32 0, align 4
@INQUIRY = common dso_local global i32 0, align 4
@SI_EVPD = common dso_local global i32 0, align 4
@CISS_VPD_LOGICAL_DRIVE_GEOMETRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"error getting geometry (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"WARNING: Data overrun\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Error detecting logical drive geometry (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ciss_softc*, %struct.ciss_ldrive*)* @ciss_inquiry_logical to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ciss_inquiry_logical(%struct.ciss_softc* %0, %struct.ciss_ldrive* %1) #0 {
  %3 = alloca %struct.ciss_softc*, align 8
  %4 = alloca %struct.ciss_ldrive*, align 8
  %5 = alloca %struct.ciss_request*, align 8
  %6 = alloca %struct.ciss_command*, align 8
  %7 = alloca %struct.scsi_inquiry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ciss_softc* %0, %struct.ciss_softc** %3, align 8
  store %struct.ciss_ldrive* %1, %struct.ciss_ldrive** %4, align 8
  store %struct.ciss_request* null, %struct.ciss_request** %5, align 8
  %10 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %4, align 8
  %11 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %10, i32 0, i32 1
  %12 = call i32 @bzero(i32* %11, i32 4)
  %13 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %14 = call i32 @ciss_get_request(%struct.ciss_softc* %13, %struct.ciss_request** %5)
  store i32 %14, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %94

17:                                               ; preds = %2
  %18 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %19 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %18, i32 0, i32 3
  %20 = load %struct.ciss_command*, %struct.ciss_command** %19, align 8
  store %struct.ciss_command* %20, %struct.ciss_command** %6, align 8
  %21 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %4, align 8
  %22 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %21, i32 0, i32 1
  %23 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %24 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %23, i32 0, i32 2
  store i32* %22, i32** %24, align 8
  %25 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %26 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %25, i32 0, i32 0
  store i32 4, i32* %26, align 8
  %27 = load i32, i32* @CISS_REQ_DATAIN, align 4
  %28 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %29 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %4, align 8
  %31 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ciss_command*, %struct.ciss_command** %6, align 8
  %34 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load %struct.ciss_command*, %struct.ciss_command** %6, align 8
  %37 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 6, i32* %38, align 8
  %39 = load i32, i32* @CISS_CDB_TYPE_COMMAND, align 4
  %40 = load %struct.ciss_command*, %struct.ciss_command** %6, align 8
  %41 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 5
  store i32 %39, i32* %42, align 8
  %43 = load i32, i32* @CISS_CDB_ATTRIBUTE_SIMPLE, align 4
  %44 = load %struct.ciss_command*, %struct.ciss_command** %6, align 8
  %45 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 4
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @CISS_CDB_DIRECTION_READ, align 4
  %48 = load %struct.ciss_command*, %struct.ciss_command** %6, align 8
  %49 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 3
  store i32 %47, i32* %50, align 8
  %51 = load %struct.ciss_command*, %struct.ciss_command** %6, align 8
  %52 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i32 30, i32* %53, align 4
  %54 = load %struct.ciss_command*, %struct.ciss_command** %6, align 8
  %55 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = bitcast i32* %58 to %struct.scsi_inquiry*
  store %struct.scsi_inquiry* %59, %struct.scsi_inquiry** %7, align 8
  %60 = load i32, i32* @INQUIRY, align 4
  %61 = load %struct.scsi_inquiry*, %struct.scsi_inquiry** %7, align 8
  %62 = getelementptr inbounds %struct.scsi_inquiry, %struct.scsi_inquiry* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @SI_EVPD, align 4
  %64 = load %struct.scsi_inquiry*, %struct.scsi_inquiry** %7, align 8
  %65 = getelementptr inbounds %struct.scsi_inquiry, %struct.scsi_inquiry* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @CISS_VPD_LOGICAL_DRIVE_GEOMETRY, align 4
  %67 = load %struct.scsi_inquiry*, %struct.scsi_inquiry** %7, align 8
  %68 = getelementptr inbounds %struct.scsi_inquiry, %struct.scsi_inquiry* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.scsi_inquiry*, %struct.scsi_inquiry** %7, align 8
  %70 = getelementptr inbounds %struct.scsi_inquiry, %struct.scsi_inquiry* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @scsi_ulto2b(i32 4, i32 %71)
  %73 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %74 = call i32 @ciss_synch_request(%struct.ciss_request* %73, i32 60000)
  store i32 %74, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %17
  %77 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %78)
  br label %94

80:                                               ; preds = %17
  %81 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %82 = call i32 @ciss_report_request(%struct.ciss_request* %81, i32* %9, i32* null)
  %83 = load i32, i32* %9, align 4
  switch i32 %83, label %88 [
    i32 128, label %84
    i32 129, label %84
    i32 130, label %85
  ]

84:                                               ; preds = %80, %80
  br label %93

85:                                               ; preds = %80
  %86 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %87 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %86, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %93

88:                                               ; preds = %80
  %89 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @ciss_name_command_status(i32 %90)
  %92 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %89, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %88, %85, %84
  br label %94

94:                                               ; preds = %93, %76, %16
  %95 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %96 = icmp ne %struct.ciss_request* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %99 = call i32 @ciss_release_request(%struct.ciss_request* %98)
  br label %100

100:                                              ; preds = %97, %94
  %101 = load i32, i32* %8, align 4
  ret i32 %101
}

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @ciss_get_request(%struct.ciss_softc*, %struct.ciss_request**) #1

declare dso_local i32 @scsi_ulto2b(i32, i32) #1

declare dso_local i32 @ciss_synch_request(%struct.ciss_request*, i32) #1

declare dso_local i32 @ciss_printf(%struct.ciss_softc*, i8*, ...) #1

declare dso_local i32 @ciss_report_request(%struct.ciss_request*, i32*, i32*) #1

declare dso_local i32 @ciss_name_command_status(i32) #1

declare dso_local i32 @ciss_release_request(%struct.ciss_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
