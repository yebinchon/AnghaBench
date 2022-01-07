; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_rename.c_gv_rename.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_rename.c_gv_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_geom = type { %struct.gv_softc* }
%struct.gv_softc = type { i32 }
%struct.gctl_req = type { i32 }
%struct.gv_volume = type { i32 }
%struct.gv_plex = type opaque
%struct.gv_sd = type opaque
%struct.gv_drive = type opaque

@.str = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"no flags given\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"newname\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"no new name given\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"no object given\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"unknown volume '%s'\00", align 1
@GV_MAXVOLNAME = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@GV_EVENT_RENAME_VOL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"unknown plex '%s'\00", align 1
@GV_MAXPLEXNAME = common dso_local global i32 0, align 4
@GV_EVENT_RENAME_PLEX = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"unknown subdisk '%s'\00", align 1
@GV_MAXSDNAME = common dso_local global i32 0, align 4
@GV_EVENT_RENAME_SD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"unknown drive '%s'\00", align 1
@GV_MAXDRIVENAME = common dso_local global i32 0, align 4
@GV_EVENT_RENAME_DRIVE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"unknown object '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gv_rename(%struct.g_geom* %0, %struct.gctl_req* %1) #0 {
  %3 = alloca %struct.g_geom*, align 8
  %4 = alloca %struct.gctl_req*, align 8
  %5 = alloca %struct.gv_softc*, align 8
  %6 = alloca %struct.gv_volume*, align 8
  %7 = alloca %struct.gv_plex*, align 8
  %8 = alloca %struct.gv_sd*, align 8
  %9 = alloca %struct.gv_drive*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.g_geom* %0, %struct.g_geom** %3, align 8
  store %struct.gctl_req* %1, %struct.gctl_req** %4, align 8
  %15 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %16 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %15, i32 0, i32 0
  %17 = load %struct.gv_softc*, %struct.gv_softc** %16, align 8
  store %struct.gv_softc* %17, %struct.gv_softc** %5, align 8
  %18 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %19 = call i32* @gctl_get_paraml(%struct.gctl_req* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4)
  store i32* %19, i32** %13, align 8
  %20 = load i32*, i32** %13, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %24 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %164

25:                                               ; preds = %2
  %26 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %27 = call i8* @gctl_get_param(%struct.gctl_req* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i8* %27, i8** %10, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %32 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %164

33:                                               ; preds = %25
  %34 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %35 = call i8* @gctl_get_param(%struct.gctl_req* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32* null)
  store i8* %35, i8** %11, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %40 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %164

41:                                               ; preds = %33
  %42 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = call i32 @gv_object_type(%struct.gv_softc* %42, i8* %43)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  switch i32 %45, label %160 [
    i32 128, label %46
    i32 130, label %73
    i32 129, label %102
    i32 131, label %131
  ]

46:                                               ; preds = %41
  %47 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = call %struct.gv_volume* @gv_find_vol(%struct.gv_softc* %47, i8* %48)
  store %struct.gv_volume* %49, %struct.gv_volume** %6, align 8
  %50 = load %struct.gv_volume*, %struct.gv_volume** %6, align 8
  %51 = icmp eq %struct.gv_volume* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %53, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %54)
  br label %164

56:                                               ; preds = %46
  %57 = load i32, i32* @GV_MAXVOLNAME, align 4
  %58 = load i32, i32* @M_WAITOK, align 4
  %59 = load i32, i32* @M_ZERO, align 4
  %60 = or i32 %58, %59
  %61 = call i8* @g_malloc(i32 %57, i32 %60)
  store i8* %61, i8** %12, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = load i32, i32* @GV_MAXVOLNAME, align 4
  %65 = call i32 @strlcpy(i8* %62, i8* %63, i32 %64)
  %66 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %67 = load i32, i32* @GV_EVENT_RENAME_VOL, align 4
  %68 = load %struct.gv_volume*, %struct.gv_volume** %6, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = load i32*, i32** %13, align 8
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @gv_post_event(%struct.gv_softc* %66, i32 %67, %struct.gv_volume* %68, i8* %69, i32 %71, i32 0)
  br label %164

73:                                               ; preds = %41
  %74 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = call %struct.gv_volume* @gv_find_plex(%struct.gv_softc* %74, i8* %75)
  %77 = bitcast %struct.gv_volume* %76 to %struct.gv_plex*
  store %struct.gv_plex* %77, %struct.gv_plex** %7, align 8
  %78 = load %struct.gv_plex*, %struct.gv_plex** %7, align 8
  %79 = icmp eq %struct.gv_plex* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %73
  %81 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %81, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* %82)
  br label %164

84:                                               ; preds = %73
  %85 = load i32, i32* @GV_MAXPLEXNAME, align 4
  %86 = load i32, i32* @M_WAITOK, align 4
  %87 = load i32, i32* @M_ZERO, align 4
  %88 = or i32 %86, %87
  %89 = call i8* @g_malloc(i32 %85, i32 %88)
  store i8* %89, i8** %12, align 8
  %90 = load i8*, i8** %12, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = load i32, i32* @GV_MAXPLEXNAME, align 4
  %93 = call i32 @strlcpy(i8* %90, i8* %91, i32 %92)
  %94 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %95 = load i32, i32* @GV_EVENT_RENAME_PLEX, align 4
  %96 = load %struct.gv_plex*, %struct.gv_plex** %7, align 8
  %97 = bitcast %struct.gv_plex* %96 to %struct.gv_volume*
  %98 = load i8*, i8** %12, align 8
  %99 = load i32*, i32** %13, align 8
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @gv_post_event(%struct.gv_softc* %94, i32 %95, %struct.gv_volume* %97, i8* %98, i32 %100, i32 0)
  br label %164

102:                                              ; preds = %41
  %103 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %104 = load i8*, i8** %11, align 8
  %105 = call %struct.gv_volume* @gv_find_sd(%struct.gv_softc* %103, i8* %104)
  %106 = bitcast %struct.gv_volume* %105 to %struct.gv_sd*
  store %struct.gv_sd* %106, %struct.gv_sd** %8, align 8
  %107 = load %struct.gv_sd*, %struct.gv_sd** %8, align 8
  %108 = icmp eq %struct.gv_sd* %107, null
  br i1 %108, label %109, label %113

109:                                              ; preds = %102
  %110 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %111 = load i8*, i8** %11, align 8
  %112 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %110, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* %111)
  br label %164

113:                                              ; preds = %102
  %114 = load i32, i32* @GV_MAXSDNAME, align 4
  %115 = load i32, i32* @M_WAITOK, align 4
  %116 = load i32, i32* @M_ZERO, align 4
  %117 = or i32 %115, %116
  %118 = call i8* @g_malloc(i32 %114, i32 %117)
  store i8* %118, i8** %12, align 8
  %119 = load i8*, i8** %12, align 8
  %120 = load i8*, i8** %10, align 8
  %121 = load i32, i32* @GV_MAXSDNAME, align 4
  %122 = call i32 @strlcpy(i8* %119, i8* %120, i32 %121)
  %123 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %124 = load i32, i32* @GV_EVENT_RENAME_SD, align 4
  %125 = load %struct.gv_sd*, %struct.gv_sd** %8, align 8
  %126 = bitcast %struct.gv_sd* %125 to %struct.gv_volume*
  %127 = load i8*, i8** %12, align 8
  %128 = load i32*, i32** %13, align 8
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @gv_post_event(%struct.gv_softc* %123, i32 %124, %struct.gv_volume* %126, i8* %127, i32 %129, i32 0)
  br label %164

131:                                              ; preds = %41
  %132 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %133 = load i8*, i8** %11, align 8
  %134 = call %struct.gv_volume* @gv_find_drive(%struct.gv_softc* %132, i8* %133)
  %135 = bitcast %struct.gv_volume* %134 to %struct.gv_drive*
  store %struct.gv_drive* %135, %struct.gv_drive** %9, align 8
  %136 = load %struct.gv_drive*, %struct.gv_drive** %9, align 8
  %137 = icmp eq %struct.gv_drive* %136, null
  br i1 %137, label %138, label %142

138:                                              ; preds = %131
  %139 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %140 = load i8*, i8** %11, align 8
  %141 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %139, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* %140)
  br label %164

142:                                              ; preds = %131
  %143 = load i32, i32* @GV_MAXDRIVENAME, align 4
  %144 = load i32, i32* @M_WAITOK, align 4
  %145 = load i32, i32* @M_ZERO, align 4
  %146 = or i32 %144, %145
  %147 = call i8* @g_malloc(i32 %143, i32 %146)
  store i8* %147, i8** %12, align 8
  %148 = load i8*, i8** %12, align 8
  %149 = load i8*, i8** %10, align 8
  %150 = load i32, i32* @GV_MAXDRIVENAME, align 4
  %151 = call i32 @strlcpy(i8* %148, i8* %149, i32 %150)
  %152 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %153 = load i32, i32* @GV_EVENT_RENAME_DRIVE, align 4
  %154 = load %struct.gv_drive*, %struct.gv_drive** %9, align 8
  %155 = bitcast %struct.gv_drive* %154 to %struct.gv_volume*
  %156 = load i8*, i8** %12, align 8
  %157 = load i32*, i32** %13, align 8
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @gv_post_event(%struct.gv_softc* %152, i32 %153, %struct.gv_volume* %155, i8* %156, i32 %158, i32 0)
  br label %164

160:                                              ; preds = %41
  %161 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %162 = load i8*, i8** %11, align 8
  %163 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %161, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8* %162)
  br label %164

164:                                              ; preds = %22, %30, %38, %52, %80, %109, %138, %160, %142, %113, %84, %56
  ret void
}

declare dso_local i32* @gctl_get_paraml(%struct.gctl_req*, i8*, i32) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local i8* @gctl_get_param(%struct.gctl_req*, i8*, i32*) #1

declare dso_local i32 @gv_object_type(%struct.gv_softc*, i8*) #1

declare dso_local %struct.gv_volume* @gv_find_vol(%struct.gv_softc*, i8*) #1

declare dso_local i8* @g_malloc(i32, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @gv_post_event(%struct.gv_softc*, i32, %struct.gv_volume*, i8*, i32, i32) #1

declare dso_local %struct.gv_volume* @gv_find_plex(%struct.gv_softc*, i8*) #1

declare dso_local %struct.gv_volume* @gv_find_sd(%struct.gv_softc*, i8*) #1

declare dso_local %struct.gv_volume* @gv_find_drive(%struct.gv_softc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
