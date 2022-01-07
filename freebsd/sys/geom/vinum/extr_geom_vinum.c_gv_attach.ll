; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum.c_gv_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum.c_gv_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gv_softc = type { i32 }
%struct.gctl_req = type { i32 }
%struct.gv_volume = type { i32 }
%struct.gv_plex = type opaque
%struct.gv_sd = type opaque

@.str = private unnamed_addr constant [6 x i8] c"child\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"no child given\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"no parent given\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"no offset given\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"rename\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"no rename flag given\00", align 1
@GV_TYPE_VOL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"no such volume to attach to\00", align 1
@GV_EVENT_ATTACH_PLEX = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [26 x i8] c"no such plex to attach to\00", align 1
@GV_EVENT_ATTACH_SD = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [19 x i8] c"invalid child type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gv_softc*, %struct.gctl_req*)* @gv_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gv_attach(%struct.gv_softc* %0, %struct.gctl_req* %1) #0 {
  %3 = alloca %struct.gv_softc*, align 8
  %4 = alloca %struct.gctl_req*, align 8
  %5 = alloca %struct.gv_volume*, align 8
  %6 = alloca %struct.gv_plex*, align 8
  %7 = alloca %struct.gv_sd*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.gv_softc* %0, %struct.gv_softc** %3, align 8
  store %struct.gctl_req* %1, %struct.gctl_req** %4, align 8
  %14 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %15 = call i8* @gctl_get_param(%struct.gctl_req* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %15, i8** %12, align 8
  %16 = load i8*, i8** %12, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %20 = call i32 @gctl_error(%struct.gctl_req* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %109

21:                                               ; preds = %2
  %22 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %23 = call i8* @gctl_get_param(%struct.gctl_req* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i8* %23, i8** %13, align 8
  %24 = load i8*, i8** %13, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %28 = call i32 @gctl_error(%struct.gctl_req* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %109

29:                                               ; preds = %21
  %30 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %31 = call i8* @gctl_get_paraml(%struct.gctl_req* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %32 = bitcast i8* %31 to i32*
  store i32* %32, i32** %8, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %37 = call i32 @gctl_error(%struct.gctl_req* %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %109

38:                                               ; preds = %29
  %39 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %40 = call i8* @gctl_get_paraml(%struct.gctl_req* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %41 = bitcast i8* %40 to i32*
  store i32* %41, i32** %9, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %46 = call i32 @gctl_error(%struct.gctl_req* %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %109

47:                                               ; preds = %38
  %48 = load %struct.gv_softc*, %struct.gv_softc** %3, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = call i32 @gv_object_type(%struct.gv_softc* %48, i8* %49)
  store i32 %50, i32* %10, align 4
  %51 = load %struct.gv_softc*, %struct.gv_softc** %3, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = call i32 @gv_object_type(%struct.gv_softc* %51, i8* %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %10, align 4
  switch i32 %54, label %106 [
    i32 129, label %55
    i32 128, label %80
  ]

55:                                               ; preds = %47
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @GV_TYPE_VOL, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %61 = call i32 @gctl_error(%struct.gctl_req* %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %109

62:                                               ; preds = %55
  %63 = load %struct.gv_softc*, %struct.gv_softc** %3, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = call %struct.gv_volume* @gv_find_vol(%struct.gv_softc* %63, i8* %64)
  store %struct.gv_volume* %65, %struct.gv_volume** %5, align 8
  %66 = load %struct.gv_softc*, %struct.gv_softc** %3, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = call %struct.gv_volume* @gv_find_plex(%struct.gv_softc* %66, i8* %67)
  %69 = bitcast %struct.gv_volume* %68 to %struct.gv_plex*
  store %struct.gv_plex* %69, %struct.gv_plex** %6, align 8
  %70 = load %struct.gv_softc*, %struct.gv_softc** %3, align 8
  %71 = load i32, i32* @GV_EVENT_ATTACH_PLEX, align 4
  %72 = load %struct.gv_plex*, %struct.gv_plex** %6, align 8
  %73 = bitcast %struct.gv_plex* %72 to %struct.gv_volume*
  %74 = load %struct.gv_volume*, %struct.gv_volume** %5, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %9, align 8
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @gv_post_event(%struct.gv_softc* %70, i32 %71, %struct.gv_volume* %73, %struct.gv_volume* %74, i32 %76, i32 %78)
  br label %109

80:                                               ; preds = %47
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 129
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %85 = call i32 @gctl_error(%struct.gctl_req* %84, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  br label %109

86:                                               ; preds = %80
  %87 = load %struct.gv_softc*, %struct.gv_softc** %3, align 8
  %88 = load i8*, i8** %13, align 8
  %89 = call %struct.gv_volume* @gv_find_plex(%struct.gv_softc* %87, i8* %88)
  %90 = bitcast %struct.gv_volume* %89 to %struct.gv_plex*
  store %struct.gv_plex* %90, %struct.gv_plex** %6, align 8
  %91 = load %struct.gv_softc*, %struct.gv_softc** %3, align 8
  %92 = load i8*, i8** %12, align 8
  %93 = call %struct.gv_volume* @gv_find_sd(%struct.gv_softc* %91, i8* %92)
  %94 = bitcast %struct.gv_volume* %93 to %struct.gv_sd*
  store %struct.gv_sd* %94, %struct.gv_sd** %7, align 8
  %95 = load %struct.gv_softc*, %struct.gv_softc** %3, align 8
  %96 = load i32, i32* @GV_EVENT_ATTACH_SD, align 4
  %97 = load %struct.gv_sd*, %struct.gv_sd** %7, align 8
  %98 = bitcast %struct.gv_sd* %97 to %struct.gv_volume*
  %99 = load %struct.gv_plex*, %struct.gv_plex** %6, align 8
  %100 = bitcast %struct.gv_plex* %99 to %struct.gv_volume*
  %101 = load i32*, i32** %8, align 8
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %9, align 8
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @gv_post_event(%struct.gv_softc* %95, i32 %96, %struct.gv_volume* %98, %struct.gv_volume* %100, i32 %102, i32 %104)
  br label %109

106:                                              ; preds = %47
  %107 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %108 = call i32 @gctl_error(%struct.gctl_req* %107, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  br label %109

109:                                              ; preds = %18, %26, %35, %44, %59, %83, %106, %86, %62
  ret void
}

declare dso_local i8* @gctl_get_param(%struct.gctl_req*, i8*, i32*) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*) #1

declare dso_local i8* @gctl_get_paraml(%struct.gctl_req*, i8*, i32) #1

declare dso_local i32 @gv_object_type(%struct.gv_softc*, i8*) #1

declare dso_local %struct.gv_volume* @gv_find_vol(%struct.gv_softc*, i8*) #1

declare dso_local %struct.gv_volume* @gv_find_plex(%struct.gv_softc*, i8*) #1

declare dso_local i32 @gv_post_event(%struct.gv_softc*, i32, %struct.gv_volume*, %struct.gv_volume*, i32, i32) #1

declare dso_local %struct.gv_volume* @gv_find_sd(%struct.gv_softc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
