; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_plex.c_gv_sync_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_plex.c_gv_sync_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gv_plex = type { i32, %struct.gv_softc* }
%struct.gv_softc = type { i32 }
%struct.bio = type { i32, i32*, i32, %struct.gv_plex*, %struct.gv_plex*, i8*, i32, i8* }

@.str = private unnamed_addr constant [10 x i8] c"NULL from\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"NULL to\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"NULL sc\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"sync from '%s' failed at offset  %jd; out of memory\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@gv_done = common dso_local global i32 0, align 4
@GV_BIO_SYNCREQ = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@GV_BIO_MALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gv_sync_request(%struct.gv_plex* %0, %struct.gv_plex* %1, i8* %2, i8* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.gv_plex*, align 8
  %9 = alloca %struct.gv_plex*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.gv_softc*, align 8
  %15 = alloca %struct.bio*, align 8
  store %struct.gv_plex* %0, %struct.gv_plex** %8, align 8
  store %struct.gv_plex* %1, %struct.gv_plex** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %16 = load %struct.gv_plex*, %struct.gv_plex** %8, align 8
  %17 = icmp ne %struct.gv_plex* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.gv_plex*, %struct.gv_plex** %9, align 8
  %21 = icmp ne %struct.gv_plex* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @KASSERT(i32 %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.gv_plex*, %struct.gv_plex** %8, align 8
  %25 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %24, i32 0, i32 1
  %26 = load %struct.gv_softc*, %struct.gv_softc** %25, align 8
  store %struct.gv_softc* %26, %struct.gv_softc** %14, align 8
  %27 = load %struct.gv_softc*, %struct.gv_softc** %14, align 8
  %28 = icmp ne %struct.gv_softc* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @KASSERT(i32 %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %31 = call %struct.bio* (...) @g_new_bio()
  store %struct.bio* %31, %struct.bio** %15, align 8
  %32 = load %struct.bio*, %struct.bio** %15, align 8
  %33 = icmp eq %struct.bio* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %6
  %35 = load %struct.gv_plex*, %struct.gv_plex** %8, align 8
  %36 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = call i32 @G_VINUM_DEBUG(i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %37, i8* %38)
  %40 = load i32, i32* @ENOMEM, align 4
  store i32 %40, i32* %7, align 4
  br label %83

41:                                               ; preds = %6
  %42 = load i8*, i8** %11, align 8
  %43 = load %struct.bio*, %struct.bio** %15, align 8
  %44 = getelementptr inbounds %struct.bio, %struct.bio* %43, i32 0, i32 7
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* @gv_done, align 4
  %46 = load %struct.bio*, %struct.bio** %15, align 8
  %47 = getelementptr inbounds %struct.bio, %struct.bio* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @GV_BIO_SYNCREQ, align 4
  %49 = load %struct.bio*, %struct.bio** %15, align 8
  %50 = getelementptr inbounds %struct.bio, %struct.bio* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = load %struct.bio*, %struct.bio** %15, align 8
  %55 = getelementptr inbounds %struct.bio, %struct.bio* %54, i32 0, i32 5
  store i8* %53, i8** %55, align 8
  %56 = load %struct.gv_plex*, %struct.gv_plex** %8, align 8
  %57 = load %struct.bio*, %struct.bio** %15, align 8
  %58 = getelementptr inbounds %struct.bio, %struct.bio* %57, i32 0, i32 4
  store %struct.gv_plex* %56, %struct.gv_plex** %58, align 8
  %59 = load %struct.gv_plex*, %struct.gv_plex** %9, align 8
  %60 = load %struct.bio*, %struct.bio** %15, align 8
  %61 = getelementptr inbounds %struct.bio, %struct.bio* %60, i32 0, i32 3
  store %struct.gv_plex* %59, %struct.gv_plex** %61, align 8
  %62 = load i32, i32* %12, align 4
  %63 = load %struct.bio*, %struct.bio** %15, align 8
  %64 = getelementptr inbounds %struct.bio, %struct.bio* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i32*, i32** %13, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %41
  %68 = load i8*, i8** %11, align 8
  %69 = load i32, i32* @M_WAITOK, align 4
  %70 = call i32* @g_malloc(i8* %68, i32 %69)
  store i32* %70, i32** %13, align 8
  br label %71

71:                                               ; preds = %67, %41
  %72 = load i32, i32* @GV_BIO_MALLOC, align 4
  %73 = load %struct.bio*, %struct.bio** %15, align 8
  %74 = getelementptr inbounds %struct.bio, %struct.bio* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = load i32*, i32** %13, align 8
  %78 = load %struct.bio*, %struct.bio** %15, align 8
  %79 = getelementptr inbounds %struct.bio, %struct.bio* %78, i32 0, i32 1
  store i32* %77, i32** %79, align 8
  %80 = load %struct.gv_softc*, %struct.gv_softc** %14, align 8
  %81 = load %struct.bio*, %struct.bio** %15, align 8
  %82 = call i32 @gv_post_bio(%struct.gv_softc* %80, %struct.bio* %81)
  store i32 0, i32* %7, align 4
  br label %83

83:                                               ; preds = %71, %34
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.bio* @g_new_bio(...) #1

declare dso_local i32 @G_VINUM_DEBUG(i32, i8*, i32, i8*) #1

declare dso_local i32* @g_malloc(i8*, i32) #1

declare dso_local i32 @gv_post_bio(%struct.gv_softc*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
