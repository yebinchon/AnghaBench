; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_subr.c_gv_detach_sd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_subr.c_gv_detach_sd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gv_sd = type { i64, i32, i32, %struct.gv_plex*, i32 }
%struct.gv_plex = type { i64, i32 }

@.str = private unnamed_addr constant [38 x i8] c"unable to detach %s: already detached\00", align 1
@GV_FLAG_F = common dso_local global i32 0, align 4
@GV_PLEX_DEGRADED = common dso_local global i64 0, align 8
@GV_SD_UP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"unable to detach %s: plex %s is busy\00", align 1
@GV_ERR_ISBUSY = common dso_local global i32 0, align 4
@in_plex = common dso_local global i32 0, align 4
@GV_MAXPLEXNAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gv_detach_sd(%struct.gv_sd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gv_sd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gv_plex*, align 8
  store %struct.gv_sd* %0, %struct.gv_sd** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call i32 (...) @g_topology_assert()
  %8 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %9 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %8, i32 0, i32 3
  %10 = load %struct.gv_plex*, %struct.gv_plex** %9, align 8
  store %struct.gv_plex* %10, %struct.gv_plex** %6, align 8
  %11 = load %struct.gv_plex*, %struct.gv_plex** %6, align 8
  %12 = icmp eq %struct.gv_plex* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %15 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i32 (i32, i8*, i32, ...) @G_VINUM_DEBUG(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 0, i32* %3, align 4
  br label %69

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @GV_FLAG_F, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %50, label %23

23:                                               ; preds = %18
  %24 = load %struct.gv_plex*, %struct.gv_plex** %6, align 8
  %25 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @GV_PLEX_DEGRADED, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %41, label %29

29:                                               ; preds = %23
  %30 = load %struct.gv_plex*, %struct.gv_plex** %6, align 8
  %31 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @GV_PLEX_DEGRADED, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %29
  %36 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %37 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @GV_SD_UP, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %35, %23
  %42 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %43 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %46 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32, i8*, i32, ...) @G_VINUM_DEBUG(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %47)
  %49 = load i32, i32* @GV_ERR_ISBUSY, align 4
  store i32 %49, i32* %3, align 4
  br label %69

50:                                               ; preds = %35, %29, %18
  %51 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %52 = load i32, i32* @in_plex, align 4
  %53 = call i32 @LIST_REMOVE(%struct.gv_sd* %51, i32 %52)
  %54 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %55 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %54, i32 0, i32 3
  store %struct.gv_plex* null, %struct.gv_plex** %55, align 8
  %56 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %57 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @GV_MAXPLEXNAME, align 4
  %60 = call i32 @memset(i32 %58, i32 0, i32 %59)
  %61 = load %struct.gv_plex*, %struct.gv_plex** %6, align 8
  %62 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  %65 = load %struct.gv_sd*, %struct.gv_sd** %4, align 8
  %66 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @gv_save_config(i32 %67)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %50, %41, %13
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @G_VINUM_DEBUG(i32, i8*, i32, ...) #1

declare dso_local i32 @LIST_REMOVE(%struct.gv_sd*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @gv_save_config(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
