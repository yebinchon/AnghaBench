; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_get_ldrive_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_get_ldrive_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciss_softc = type { i32 }
%struct.ciss_ldrive = type { %struct.TYPE_10__*, i32, %struct.TYPE_9__, i32* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ciss_request = type { %struct.ciss_command* }
%struct.ciss_command = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32 }
%struct.ciss_bmic_cdb = type { i32 }

@CISS_BMIC_ID_LSTATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"error sending BMIC LSTATUS command (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"data over/underrun reading logical drive status\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"error reading logical drive status (%s)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ciss_softc*, %struct.ciss_ldrive*)* @ciss_get_ldrive_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ciss_get_ldrive_status(%struct.ciss_softc* %0, %struct.ciss_ldrive* %1) #0 {
  %3 = alloca %struct.ciss_softc*, align 8
  %4 = alloca %struct.ciss_ldrive*, align 8
  %5 = alloca %struct.ciss_request*, align 8
  %6 = alloca %struct.ciss_command*, align 8
  %7 = alloca %struct.ciss_bmic_cdb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ciss_softc* %0, %struct.ciss_softc** %3, align 8
  store %struct.ciss_ldrive* %1, %struct.ciss_ldrive** %4, align 8
  %10 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %11 = load i32, i32* @CISS_BMIC_ID_LSTATUS, align 4
  %12 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %4, align 8
  %13 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %12, i32 0, i32 0
  %14 = bitcast %struct.TYPE_10__** %13 to i8**
  %15 = call i32 @ciss_get_bmic_request(%struct.ciss_softc* %10, %struct.ciss_request** %5, i32 %11, i8** %14, i32 4)
  store i32 %15, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %73

18:                                               ; preds = %2
  %19 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %20 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %19, i32 0, i32 0
  %21 = load %struct.ciss_command*, %struct.ciss_command** %20, align 8
  store %struct.ciss_command* %21, %struct.ciss_command** %6, align 8
  %22 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %4, align 8
  %23 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ciss_command*, %struct.ciss_command** %6, align 8
  %27 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load %struct.ciss_command*, %struct.ciss_command** %6, align 8
  %30 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = bitcast i32* %33 to %struct.ciss_bmic_cdb*
  store %struct.ciss_bmic_cdb* %34, %struct.ciss_bmic_cdb** %7, align 8
  %35 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %4, align 8
  %36 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @CISS_LUN_TO_TARGET(i32 %39)
  %41 = load %struct.ciss_bmic_cdb*, %struct.ciss_bmic_cdb** %7, align 8
  %42 = getelementptr inbounds %struct.ciss_bmic_cdb, %struct.ciss_bmic_cdb* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %44 = call i32 @ciss_synch_request(%struct.ciss_request* %43, i32 60000)
  store i32 %44, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %18
  %47 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %47, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %73

50:                                               ; preds = %18
  %51 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %52 = call i32 @ciss_report_request(%struct.ciss_request* %51, i32* %9, i32* null)
  %53 = load i32, i32* %9, align 4
  switch i32 %53, label %58 [
    i32 128, label %54
    i32 129, label %55
    i32 130, label %55
  ]

54:                                               ; preds = %50
  br label %64

55:                                               ; preds = %50, %50
  %56 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %57 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %56, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %50, %55
  %59 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @ciss_name_command_status(i32 %60)
  %62 = call i32 (%struct.ciss_softc*, i8*, ...) @ciss_printf(%struct.ciss_softc* %59, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @EIO, align 4
  store i32 %63, i32* %8, align 4
  br label %73

64:                                               ; preds = %54
  %65 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %4, align 8
  %66 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %65, i32 0, i32 0
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ciss_decode_ldrive_status(i32 %69)
  %71 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %4, align 8
  %72 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %64, %58, %46, %17
  %74 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %75 = icmp ne %struct.ciss_request* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %78 = call i32 @ciss_release_request(%struct.ciss_request* %77)
  br label %79

79:                                               ; preds = %76, %73
  %80 = load i32, i32* %8, align 4
  ret i32 %80
}

declare dso_local i32 @ciss_get_bmic_request(%struct.ciss_softc*, %struct.ciss_request**, i32, i8**, i32) #1

declare dso_local i32 @CISS_LUN_TO_TARGET(i32) #1

declare dso_local i32 @ciss_synch_request(%struct.ciss_request*, i32) #1

declare dso_local i32 @ciss_printf(%struct.ciss_softc*, i8*, ...) #1

declare dso_local i32 @ciss_report_request(%struct.ciss_request*, i32*, i32*) #1

declare dso_local i32 @ciss_name_command_status(i32) #1

declare dso_local i32 @ciss_decode_ldrive_status(i32) #1

declare dso_local i32 @ciss_release_request(%struct.ciss_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
