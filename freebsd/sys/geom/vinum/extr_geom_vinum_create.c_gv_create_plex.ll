; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_create.c_gv_create_plex.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_create.c_gv_create_plex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gv_softc = type { i32 }
%struct.gv_plex = type { i8*, i8*, i8*, i32, i32, i32, i64, %struct.gv_softc*, %struct.gv_volume*, i32, i32 }
%struct.gv_volume = type { i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"gv_create_plex: NULL p\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"create plex '%s': volume '%s' not found\00", align 1
@GV_ERR_CREATE = common dso_local global i32 0, align 4
@GV_VOL_NEWBORN = common dso_local global i32 0, align 4
@GV_PLEX_ADDED = common dso_local global i32 0, align 4
@GV_PLEX_NEWBORN = common dso_local global i32 0, align 4
@in_volume = common dso_local global i32 0, align 4
@plex = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gv_create_plex(%struct.gv_softc* %0, %struct.gv_plex* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gv_softc*, align 8
  %5 = alloca %struct.gv_plex*, align 8
  %6 = alloca %struct.gv_volume*, align 8
  store %struct.gv_softc* %0, %struct.gv_softc** %4, align 8
  store %struct.gv_plex* %1, %struct.gv_plex** %5, align 8
  %7 = load %struct.gv_plex*, %struct.gv_plex** %5, align 8
  %8 = icmp ne %struct.gv_plex* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @KASSERT(i32 %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.gv_softc*, %struct.gv_softc** %4, align 8
  %12 = load %struct.gv_plex*, %struct.gv_plex** %5, align 8
  %13 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %12, i32 0, i32 9
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.gv_volume* @gv_find_vol(%struct.gv_softc* %11, i32 %14)
  store %struct.gv_volume* %15, %struct.gv_volume** %6, align 8
  %16 = load %struct.gv_volume*, %struct.gv_volume** %6, align 8
  %17 = icmp eq %struct.gv_volume* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = load %struct.gv_plex*, %struct.gv_plex** %5, align 8
  %20 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %19, i32 0, i32 10
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.gv_plex*, %struct.gv_plex** %5, align 8
  %23 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %22, i32 0, i32 9
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @G_VINUM_DEBUG(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 %24)
  %26 = load %struct.gv_plex*, %struct.gv_plex** %5, align 8
  %27 = call i32 @g_free(%struct.gv_plex* %26)
  %28 = load i32, i32* @GV_ERR_CREATE, align 4
  store i32 %28, i32* %3, align 4
  br label %106

29:                                               ; preds = %2
  %30 = load %struct.gv_volume*, %struct.gv_volume** %6, align 8
  %31 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @GV_VOL_NEWBORN, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @GV_PLEX_ADDED, align 4
  %38 = load %struct.gv_plex*, %struct.gv_plex** %5, align 8
  %39 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %36, %29
  %43 = load %struct.gv_volume*, %struct.gv_volume** %6, align 8
  %44 = load %struct.gv_plex*, %struct.gv_plex** %5, align 8
  %45 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %44, i32 0, i32 8
  store %struct.gv_volume* %43, %struct.gv_volume** %45, align 8
  %46 = load %struct.gv_volume*, %struct.gv_volume** %6, align 8
  %47 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.gv_softc*, %struct.gv_softc** %4, align 8
  %51 = load %struct.gv_plex*, %struct.gv_plex** %5, align 8
  %52 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %51, i32 0, i32 7
  store %struct.gv_softc* %50, %struct.gv_softc** %52, align 8
  %53 = load %struct.gv_plex*, %struct.gv_plex** %5, align 8
  %54 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %53, i32 0, i32 6
  store i64 0, i64* %54, align 8
  %55 = load i32, i32* @GV_PLEX_NEWBORN, align 4
  %56 = load %struct.gv_plex*, %struct.gv_plex** %5, align 8
  %57 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load %struct.gv_volume*, %struct.gv_volume** %6, align 8
  %61 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %60, i32 0, i32 1
  %62 = load %struct.gv_plex*, %struct.gv_plex** %5, align 8
  %63 = load i32, i32* @in_volume, align 4
  %64 = call i32 @LIST_INSERT_HEAD(i32* %61, %struct.gv_plex* %62, i32 %63)
  %65 = load %struct.gv_plex*, %struct.gv_plex** %5, align 8
  %66 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %65, i32 0, i32 4
  %67 = call i32 @LIST_INIT(i32* %66)
  %68 = load %struct.gv_plex*, %struct.gv_plex** %5, align 8
  %69 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %68, i32 0, i32 3
  %70 = call i32 @TAILQ_INIT(i32* %69)
  %71 = load %struct.gv_softc*, %struct.gv_softc** %4, align 8
  %72 = getelementptr inbounds %struct.gv_softc, %struct.gv_softc* %71, i32 0, i32 0
  %73 = load %struct.gv_plex*, %struct.gv_plex** %5, align 8
  %74 = load i32, i32* @plex, align 4
  %75 = call i32 @LIST_INSERT_HEAD(i32* %72, %struct.gv_plex* %73, i32 %74)
  %76 = load i32, i32* @M_WAITOK, align 4
  %77 = load i32, i32* @M_ZERO, align 4
  %78 = or i32 %76, %77
  %79 = call i8* @g_malloc(i32 4, i32 %78)
  %80 = load %struct.gv_plex*, %struct.gv_plex** %5, align 8
  %81 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  %82 = load %struct.gv_plex*, %struct.gv_plex** %5, align 8
  %83 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @bioq_init(i8* %84)
  %86 = load i32, i32* @M_WAITOK, align 4
  %87 = load i32, i32* @M_ZERO, align 4
  %88 = or i32 %86, %87
  %89 = call i8* @g_malloc(i32 4, i32 %88)
  %90 = load %struct.gv_plex*, %struct.gv_plex** %5, align 8
  %91 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %90, i32 0, i32 1
  store i8* %89, i8** %91, align 8
  %92 = load %struct.gv_plex*, %struct.gv_plex** %5, align 8
  %93 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @bioq_init(i8* %94)
  %96 = load i32, i32* @M_WAITOK, align 4
  %97 = load i32, i32* @M_ZERO, align 4
  %98 = or i32 %96, %97
  %99 = call i8* @g_malloc(i32 4, i32 %98)
  %100 = load %struct.gv_plex*, %struct.gv_plex** %5, align 8
  %101 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %100, i32 0, i32 0
  store i8* %99, i8** %101, align 8
  %102 = load %struct.gv_plex*, %struct.gv_plex** %5, align 8
  %103 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @bioq_init(i8* %104)
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %42, %18
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.gv_volume* @gv_find_vol(%struct.gv_softc*, i32) #1

declare dso_local i32 @G_VINUM_DEBUG(i32, i8*, i32, i32) #1

declare dso_local i32 @g_free(%struct.gv_plex*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.gv_plex*, i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i8* @g_malloc(i32, i32) #1

declare dso_local i32 @bioq_init(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
