; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_accept_media.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_accept_media.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciss_softc = type { i32 }
%struct.ciss_ldrive = type { i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ciss_request = type { %struct.ciss_softc*, %struct.ciss_command* }
%struct.ciss_command = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32 }
%struct.ciss_bmic_cdb = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"bringing logical drive %d back online\00", align 1
@CISS_BMIC_ACCEPT_MEDIA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"error sending BMIC ACCEPT MEDIA command (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"error accepting media into failed logical drive (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ciss_softc*, %struct.ciss_ldrive*)* @ciss_accept_media to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ciss_accept_media(%struct.ciss_softc* %0, %struct.ciss_ldrive* %1) #0 {
  %3 = alloca %struct.ciss_softc*, align 8
  %4 = alloca %struct.ciss_ldrive*, align 8
  %5 = alloca %struct.ciss_request*, align 8
  %6 = alloca %struct.ciss_command*, align 8
  %7 = alloca %struct.ciss_bmic_cdb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ciss_softc* %0, %struct.ciss_softc** %3, align 8
  store %struct.ciss_ldrive* %1, %struct.ciss_ldrive** %4, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %4, align 8
  %12 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @CISS_LUN_TO_TARGET(i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @debug(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %20 = load i32, i32* @CISS_BMIC_ACCEPT_MEDIA, align 4
  %21 = call i32 @ciss_get_bmic_request(%struct.ciss_softc* %19, %struct.ciss_request** %5, i32 %20, i32* null, i32 0)
  store i32 %21, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %64

24:                                               ; preds = %2
  %25 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %26 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %25, i32 0, i32 1
  %27 = load %struct.ciss_command*, %struct.ciss_command** %26, align 8
  store %struct.ciss_command* %27, %struct.ciss_command** %6, align 8
  %28 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %4, align 8
  %29 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ciss_command*, %struct.ciss_command** %6, align 8
  %33 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  %35 = load %struct.ciss_command*, %struct.ciss_command** %6, align 8
  %36 = getelementptr inbounds %struct.ciss_command, %struct.ciss_command* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = bitcast i32* %39 to %struct.ciss_bmic_cdb*
  store %struct.ciss_bmic_cdb* %40, %struct.ciss_bmic_cdb** %7, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.ciss_bmic_cdb*, %struct.ciss_bmic_cdb** %7, align 8
  %43 = getelementptr inbounds %struct.ciss_bmic_cdb, %struct.ciss_bmic_cdb* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %45 = call i32 @ciss_synch_request(%struct.ciss_request* %44, i32 60000)
  store i32 %45, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %24
  %48 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @ciss_printf(%struct.ciss_softc* %48, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %64

51:                                               ; preds = %24
  %52 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %53 = call i32 @ciss_report_request(%struct.ciss_request* %52, i32* %8, i32* null)
  %54 = load i32, i32* %8, align 4
  switch i32 %54, label %56 [
    i32 128, label %55
  ]

55:                                               ; preds = %51
  br label %63

56:                                               ; preds = %51
  %57 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %58 = getelementptr inbounds %struct.ciss_request, %struct.ciss_request* %57, i32 0, i32 0
  %59 = load %struct.ciss_softc*, %struct.ciss_softc** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @ciss_name_command_status(i32 %60)
  %62 = call i32 @ciss_printf(%struct.ciss_softc* %59, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %56, %55
  br label %64

64:                                               ; preds = %63, %47, %23
  %65 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %66 = icmp ne %struct.ciss_request* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load %struct.ciss_request*, %struct.ciss_request** %5, align 8
  %69 = call i32 @ciss_release_request(%struct.ciss_request* %68)
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i32, i32* %9, align 4
  ret i32 %71
}

declare dso_local i32 @CISS_LUN_TO_TARGET(i32) #1

declare dso_local i32 @debug(i32, i8*, i32) #1

declare dso_local i32 @ciss_get_bmic_request(%struct.ciss_softc*, %struct.ciss_request**, i32, i32*, i32) #1

declare dso_local i32 @ciss_synch_request(%struct.ciss_request*, i32) #1

declare dso_local i32 @ciss_printf(%struct.ciss_softc*, i8*, i32) #1

declare dso_local i32 @ciss_report_request(%struct.ciss_request*, i32*, i32*) #1

declare dso_local i32 @ciss_name_command_status(i32) #1

declare dso_local i32 @ciss_release_request(%struct.ciss_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
