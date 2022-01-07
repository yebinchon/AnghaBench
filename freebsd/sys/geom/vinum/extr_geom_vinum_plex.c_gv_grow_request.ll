; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_plex.c_gv_grow_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_plex.c_gv_grow_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gv_plex = type { i32, %struct.gv_softc* }
%struct.gv_softc = type { i32 }
%struct.bio = type { i32, i32*, i32, i8*, i8*, %struct.gv_plex*, i64, i32 }

@.str = private unnamed_addr constant [24 x i8] c"gv_grow_request: NULL p\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"gv_grow_request: NULL sc\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"grow of %s failed creating bio: out of memory\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@gv_done = common dso_local global i32 0, align 4
@GV_BIO_GROW = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@GV_BIO_MALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gv_grow_request(%struct.gv_plex* %0, i8* %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gv_plex*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.gv_softc*, align 8
  %13 = alloca %struct.bio*, align 8
  store %struct.gv_plex* %0, %struct.gv_plex** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load %struct.gv_plex*, %struct.gv_plex** %7, align 8
  %15 = icmp ne %struct.gv_plex* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @KASSERT(i32 %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.gv_plex*, %struct.gv_plex** %7, align 8
  %19 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %18, i32 0, i32 1
  %20 = load %struct.gv_softc*, %struct.gv_softc** %19, align 8
  store %struct.gv_softc* %20, %struct.gv_softc** %12, align 8
  %21 = load %struct.gv_softc*, %struct.gv_softc** %12, align 8
  %22 = icmp ne %struct.gv_softc* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @KASSERT(i32 %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %25 = call %struct.bio* (...) @g_new_bio()
  store %struct.bio* %25, %struct.bio** %13, align 8
  %26 = load %struct.bio*, %struct.bio** %13, align 8
  %27 = icmp eq %struct.bio* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %5
  %29 = load %struct.gv_plex*, %struct.gv_plex** %7, align 8
  %30 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @G_VINUM_DEBUG(i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @ENOMEM, align 4
  store i32 %33, i32* %6, align 4
  br label %75

34:                                               ; preds = %5
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.bio*, %struct.bio** %13, align 8
  %37 = getelementptr inbounds %struct.bio, %struct.bio* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @gv_done, align 4
  %39 = load %struct.bio*, %struct.bio** %13, align 8
  %40 = getelementptr inbounds %struct.bio, %struct.bio* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 8
  %41 = load %struct.bio*, %struct.bio** %13, align 8
  %42 = getelementptr inbounds %struct.bio, %struct.bio* %41, i32 0, i32 6
  store i64 0, i64* %42, align 8
  %43 = load %struct.gv_plex*, %struct.gv_plex** %7, align 8
  %44 = load %struct.bio*, %struct.bio** %13, align 8
  %45 = getelementptr inbounds %struct.bio, %struct.bio* %44, i32 0, i32 5
  store %struct.gv_plex* %43, %struct.gv_plex** %45, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load %struct.bio*, %struct.bio** %13, align 8
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %47, i32 0, i32 4
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load %struct.bio*, %struct.bio** %13, align 8
  %51 = getelementptr inbounds %struct.bio, %struct.bio* %50, i32 0, i32 3
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* @GV_BIO_GROW, align 4
  %53 = load %struct.bio*, %struct.bio** %13, align 8
  %54 = getelementptr inbounds %struct.bio, %struct.bio* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %34
  %60 = load i8*, i8** %9, align 8
  %61 = load i32, i32* @M_WAITOK, align 4
  %62 = call i32* @g_malloc(i8* %60, i32 %61)
  store i32* %62, i32** %11, align 8
  br label %63

63:                                               ; preds = %59, %34
  %64 = load i32, i32* @GV_BIO_MALLOC, align 4
  %65 = load %struct.bio*, %struct.bio** %13, align 8
  %66 = getelementptr inbounds %struct.bio, %struct.bio* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = load %struct.bio*, %struct.bio** %13, align 8
  %71 = getelementptr inbounds %struct.bio, %struct.bio* %70, i32 0, i32 1
  store i32* %69, i32** %71, align 8
  %72 = load %struct.gv_softc*, %struct.gv_softc** %12, align 8
  %73 = load %struct.bio*, %struct.bio** %13, align 8
  %74 = call i32 @gv_post_bio(%struct.gv_softc* %72, %struct.bio* %73)
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %63, %28
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.bio* @g_new_bio(...) #1

declare dso_local i32 @G_VINUM_DEBUG(i32, i8*, i32) #1

declare dso_local i32* @g_malloc(i8*, i32) #1

declare dso_local i32 @gv_post_bio(%struct.gv_softc*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
