; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_create.c_gv_create_sd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_create.c_gv_create_sd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gv_softc = type { i32 }
%struct.gv_sd = type { i32, %struct.gv_softc*, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.gv_plex = type { i32, i32 }
%struct.gv_drive = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"gv_create_sd: NULL s\00", align 1
@GV_SD_TASTED = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@GV_DRIVE_REFERENCED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"create sd '%s': drive '%s' not found\00", align 1
@GV_ERR_CREATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"create sd '%s': plex '%s' not found\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"unable to give sd '%s' to plex '%s'\00", align 1
@from_drive = common dso_local global i32 0, align 4
@GV_PLEX_NEWBORN = common dso_local global i32 0, align 4
@GV_SD_NEWBORN = common dso_local global i32 0, align 4
@sd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gv_create_sd(%struct.gv_softc* %0, %struct.gv_sd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gv_softc*, align 8
  %5 = alloca %struct.gv_sd*, align 8
  %6 = alloca %struct.gv_plex*, align 8
  %7 = alloca %struct.gv_drive*, align 8
  store %struct.gv_softc* %0, %struct.gv_softc** %4, align 8
  store %struct.gv_sd* %1, %struct.gv_sd** %5, align 8
  %8 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %9 = icmp ne %struct.gv_sd* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @KASSERT(i32 %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.gv_softc*, %struct.gv_softc** %4, align 8
  %13 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %14 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.gv_drive* @gv_find_drive(%struct.gv_softc* %12, i32 %15)
  store %struct.gv_drive* %16, %struct.gv_drive** %7, align 8
  %17 = load %struct.gv_drive*, %struct.gv_drive** %7, align 8
  %18 = icmp eq %struct.gv_drive* %17, null
  br i1 %18, label %19, label %58

19:                                               ; preds = %2
  %20 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %21 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @GV_SD_TASTED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %19
  %27 = load i32, i32* @M_WAITOK, align 4
  %28 = load i32, i32* @M_ZERO, align 4
  %29 = or i32 %27, %28
  %30 = call %struct.gv_drive* @g_malloc(i32 8, i32 %29)
  store %struct.gv_drive* %30, %struct.gv_drive** %7, align 8
  %31 = load i32, i32* @GV_DRIVE_REFERENCED, align 4
  %32 = load %struct.gv_drive*, %struct.gv_drive** %7, align 8
  %33 = getelementptr inbounds %struct.gv_drive, %struct.gv_drive* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.gv_drive*, %struct.gv_drive** %7, align 8
  %37 = getelementptr inbounds %struct.gv_drive, %struct.gv_drive* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %40 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @strlcpy(i32 %38, i32 %41, i32 4)
  %43 = load %struct.gv_softc*, %struct.gv_softc** %4, align 8
  %44 = load %struct.gv_drive*, %struct.gv_drive** %7, align 8
  %45 = call i32 @gv_create_drive(%struct.gv_softc* %43, %struct.gv_drive* %44)
  br label %57

46:                                               ; preds = %19
  %47 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %48 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %51 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @G_VINUM_DEBUG(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %52)
  %54 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %55 = call i32 @g_free(%struct.gv_sd* %54)
  %56 = load i32, i32* @GV_ERR_CREATE, align 4
  store i32 %56, i32* %3, align 4
  br label %148

57:                                               ; preds = %26
  br label %58

58:                                               ; preds = %57, %2
  %59 = load %struct.gv_softc*, %struct.gv_softc** %4, align 8
  %60 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %61 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = call %struct.gv_plex* @gv_find_plex(%struct.gv_softc* %59, i32 %62)
  store %struct.gv_plex* %63, %struct.gv_plex** %6, align 8
  %64 = load %struct.gv_plex*, %struct.gv_plex** %6, align 8
  %65 = icmp eq %struct.gv_plex* %64, null
  br i1 %65, label %66, label %77

66:                                               ; preds = %58
  %67 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %68 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %71 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @G_VINUM_DEBUG(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %69, i32 %72)
  %74 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %75 = call i32 @g_free(%struct.gv_sd* %74)
  %76 = load i32, i32* @GV_ERR_CREATE, align 4
  store i32 %76, i32* %3, align 4
  br label %148

77:                                               ; preds = %58
  %78 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %79 = load %struct.gv_drive*, %struct.gv_drive** %7, align 8
  %80 = call i64 @gv_sd_to_drive(%struct.gv_sd* %78, %struct.gv_drive* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %84 = call i32 @g_free(%struct.gv_sd* %83)
  %85 = load i32, i32* @GV_ERR_CREATE, align 4
  store i32 %85, i32* %3, align 4
  br label %148

86:                                               ; preds = %77
  %87 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %88 = load %struct.gv_plex*, %struct.gv_plex** %6, align 8
  %89 = call i64 @gv_sd_to_plex(%struct.gv_sd* %87, %struct.gv_plex* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %134

91:                                               ; preds = %86
  %92 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %93 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.gv_plex*, %struct.gv_plex** %6, align 8
  %96 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @G_VINUM_DEBUG(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %94, i32 %97)
  %99 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %100 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %99, i32 0, i32 2
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = icmp ne %struct.TYPE_2__* %101, null
  br i1 %102, label %103, label %116

103:                                              ; preds = %91
  %104 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %105 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %104, i32 0, i32 2
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @GV_DRIVE_REFERENCED, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %103
  %113 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %114 = load i32, i32* @from_drive, align 4
  %115 = call i32 @LIST_REMOVE(%struct.gv_sd* %113, i32 %114)
  br label %116

116:                                              ; preds = %112, %103, %91
  %117 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %118 = call i32 @gv_free_sd(%struct.gv_sd* %117)
  %119 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %120 = call i32 @g_free(%struct.gv_sd* %119)
  %121 = load %struct.gv_plex*, %struct.gv_plex** %6, align 8
  %122 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @GV_PLEX_NEWBORN, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %116
  %128 = load i32, i32* @GV_ERR_CREATE, align 4
  store i32 %128, i32* %3, align 4
  br label %148

129:                                              ; preds = %116
  %130 = load %struct.gv_softc*, %struct.gv_softc** %4, align 8
  %131 = load %struct.gv_plex*, %struct.gv_plex** %6, align 8
  %132 = call i32 @gv_rm_plex(%struct.gv_softc* %130, %struct.gv_plex* %131)
  %133 = load i32, i32* @GV_ERR_CREATE, align 4
  store i32 %133, i32* %3, align 4
  br label %148

134:                                              ; preds = %86
  %135 = load i32, i32* @GV_SD_NEWBORN, align 4
  %136 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %137 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 8
  %140 = load %struct.gv_softc*, %struct.gv_softc** %4, align 8
  %141 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %142 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %141, i32 0, i32 1
  store %struct.gv_softc* %140, %struct.gv_softc** %142, align 8
  %143 = load %struct.gv_softc*, %struct.gv_softc** %4, align 8
  %144 = getelementptr inbounds %struct.gv_softc, %struct.gv_softc* %143, i32 0, i32 0
  %145 = load %struct.gv_sd*, %struct.gv_sd** %5, align 8
  %146 = load i32, i32* @sd, align 4
  %147 = call i32 @LIST_INSERT_HEAD(i32* %144, %struct.gv_sd* %145, i32 %146)
  store i32 0, i32* %3, align 4
  br label %148

148:                                              ; preds = %134, %129, %127, %82, %66, %46
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.gv_drive* @gv_find_drive(%struct.gv_softc*, i32) #1

declare dso_local %struct.gv_drive* @g_malloc(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @gv_create_drive(%struct.gv_softc*, %struct.gv_drive*) #1

declare dso_local i32 @G_VINUM_DEBUG(i32, i8*, i32, i32) #1

declare dso_local i32 @g_free(%struct.gv_sd*) #1

declare dso_local %struct.gv_plex* @gv_find_plex(%struct.gv_softc*, i32) #1

declare dso_local i64 @gv_sd_to_drive(%struct.gv_sd*, %struct.gv_drive*) #1

declare dso_local i64 @gv_sd_to_plex(%struct.gv_sd*, %struct.gv_plex*) #1

declare dso_local i32 @LIST_REMOVE(%struct.gv_sd*, i32) #1

declare dso_local i32 @gv_free_sd(%struct.gv_sd*) #1

declare dso_local i32 @gv_rm_plex(%struct.gv_softc*, %struct.gv_plex*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.gv_sd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
