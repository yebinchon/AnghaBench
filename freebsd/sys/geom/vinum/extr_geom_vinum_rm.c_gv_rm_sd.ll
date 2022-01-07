; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_rm.c_gv_rm_sd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_rm.c_gv_rm_sd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gv_softc = type { i32 }
%struct.gv_sd = type { %struct.TYPE_2__*, %struct.gv_plex* }
%struct.TYPE_2__ = type { i32 }
%struct.gv_plex = type { %struct.gv_volume*, i32, i32 }
%struct.gv_volume = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"gv_rm_sd: NULL s\00", align 1
@in_plex = common dso_local global i32 0, align 4
@GV_DRIVE_REFERENCED = common dso_local global i32 0, align 4
@from_drive = common dso_local global i32 0, align 4
@sd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gv_rm_sd(%struct.gv_softc* %0, %struct.gv_sd* %1) #0 {
  %3 = alloca %struct.gv_softc*, align 8
  %4 = alloca %struct.gv_sd*, align 8
  %5 = alloca %struct.gv_plex*, align 8
  %6 = alloca %struct.gv_volume*, align 8
  store %struct.gv_softc* %0, %struct.gv_softc** %3, align 8
  store %struct.gv_sd* %1, %struct.gv_sd** %4, align 8
  %7 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %8 = icmp ne %struct.gv_sd* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @KASSERT(i32 %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %12 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %11, i32 0, i32 1
  %13 = load %struct.gv_plex*, %struct.gv_plex** %12, align 8
  store %struct.gv_plex* %13, %struct.gv_plex** %5, align 8
  store %struct.gv_volume* null, %struct.gv_volume** %6, align 8
  %14 = load %struct.gv_plex*, %struct.gv_plex** %5, align 8
  %15 = icmp ne %struct.gv_plex* %14, null
  br i1 %15, label %16, label %41

16:                                               ; preds = %2
  %17 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %18 = load i32, i32* @in_plex, align 4
  %19 = call i32 @LIST_REMOVE(%struct.gv_sd* %17, i32 %18)
  %20 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %21 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %20, i32 0, i32 1
  store %struct.gv_plex* null, %struct.gv_plex** %21, align 8
  %22 = load %struct.gv_plex*, %struct.gv_plex** %5, align 8
  %23 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %23, align 4
  %26 = load %struct.gv_plex*, %struct.gv_plex** %5, align 8
  %27 = call i32 @gv_plex_size(%struct.gv_plex* %26)
  %28 = load %struct.gv_plex*, %struct.gv_plex** %5, align 8
  %29 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.gv_plex*, %struct.gv_plex** %5, align 8
  %31 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %30, i32 0, i32 0
  %32 = load %struct.gv_volume*, %struct.gv_volume** %31, align 8
  store %struct.gv_volume* %32, %struct.gv_volume** %6, align 8
  %33 = load %struct.gv_volume*, %struct.gv_volume** %6, align 8
  %34 = icmp ne %struct.gv_volume* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %16
  %36 = load %struct.gv_volume*, %struct.gv_volume** %6, align 8
  %37 = load %struct.gv_volume*, %struct.gv_volume** %6, align 8
  %38 = call i32 @gv_vol_size(%struct.gv_volume* %37)
  %39 = call i32 @gv_update_vol_size(%struct.gv_volume* %36, i32 %38)
  br label %40

40:                                               ; preds = %35, %16
  br label %41

41:                                               ; preds = %40, %2
  %42 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %43 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = icmp ne %struct.TYPE_2__* %44, null
  br i1 %45, label %46, label %59

46:                                               ; preds = %41
  %47 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %48 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @GV_DRIVE_REFERENCED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %46
  %56 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %57 = load i32, i32* @from_drive, align 4
  %58 = call i32 @LIST_REMOVE(%struct.gv_sd* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %46, %41
  %60 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %61 = load i32, i32* @sd, align 4
  %62 = call i32 @LIST_REMOVE(%struct.gv_sd* %60, i32 %61)
  %63 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %64 = call i32 @gv_free_sd(%struct.gv_sd* %63)
  %65 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %66 = call i32 @g_free(%struct.gv_sd* %65)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @LIST_REMOVE(%struct.gv_sd*, i32) #1

declare dso_local i32 @gv_plex_size(%struct.gv_plex*) #1

declare dso_local i32 @gv_update_vol_size(%struct.gv_volume*, i32) #1

declare dso_local i32 @gv_vol_size(%struct.gv_volume*) #1

declare dso_local i32 @gv_free_sd(%struct.gv_sd*) #1

declare dso_local i32 @g_free(%struct.gv_sd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
