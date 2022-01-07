; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_plex.c_gv_parity_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_plex.c_gv_parity_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gv_plex = type { i32, i32, %struct.gv_softc* }
%struct.gv_softc = type { i32 }
%struct.bio = type { i32, i32, i8*, %struct.gv_plex*, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"gv_parity_request: NULL p\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"gv_parity_request: NULL sc\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"rebuild of %s failed creating bio: out of memory\00", align 1
@BIO_WRITE = common dso_local global i32 0, align 4
@gv_done = common dso_local global i32 0, align 4
@GV_BIO_REBUILD = common dso_local global i32 0, align 4
@GV_DFLT_SYNCSIZE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@GV_BIO_CHECK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"invalid flags given in rebuild\00", align 1
@GV_BIO_MALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gv_parity_request(%struct.gv_plex* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gv_plex*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gv_softc*, align 8
  %8 = alloca %struct.bio*, align 8
  store %struct.gv_plex* %0, %struct.gv_plex** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.gv_plex*, %struct.gv_plex** %4, align 8
  %10 = icmp ne %struct.gv_plex* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @KASSERT(i32 %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.gv_plex*, %struct.gv_plex** %4, align 8
  %14 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %13, i32 0, i32 2
  %15 = load %struct.gv_softc*, %struct.gv_softc** %14, align 8
  store %struct.gv_softc* %15, %struct.gv_softc** %7, align 8
  %16 = load %struct.gv_softc*, %struct.gv_softc** %7, align 8
  %17 = icmp ne %struct.gv_softc* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %20 = call %struct.bio* (...) @g_new_bio()
  store %struct.bio* %20, %struct.bio** %8, align 8
  %21 = load %struct.bio*, %struct.bio** %8, align 8
  %22 = icmp eq %struct.bio* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load %struct.gv_plex*, %struct.gv_plex** %4, align 8
  %25 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, i8*, ...) @G_VINUM_DEBUG(i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  br label %88

28:                                               ; preds = %3
  %29 = load i32, i32* @BIO_WRITE, align 4
  %30 = load %struct.bio*, %struct.bio** %8, align 8
  %31 = getelementptr inbounds %struct.bio, %struct.bio* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @gv_done, align 4
  %33 = load %struct.bio*, %struct.bio** %8, align 8
  %34 = getelementptr inbounds %struct.bio, %struct.bio* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 8
  %35 = load %struct.bio*, %struct.bio** %8, align 8
  %36 = getelementptr inbounds %struct.bio, %struct.bio* %35, i32 0, i32 5
  store i64 0, i64* %36, align 8
  %37 = load %struct.gv_plex*, %struct.gv_plex** %4, align 8
  %38 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.bio*, %struct.bio** %8, align 8
  %41 = getelementptr inbounds %struct.bio, %struct.bio* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load %struct.gv_plex*, %struct.gv_plex** %4, align 8
  %43 = load %struct.bio*, %struct.bio** %8, align 8
  %44 = getelementptr inbounds %struct.bio, %struct.bio* %43, i32 0, i32 3
  store %struct.gv_plex* %42, %struct.gv_plex** %44, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @GV_BIO_REBUILD, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %28
  %50 = load i32, i32* @GV_DFLT_SYNCSIZE, align 4
  %51 = load i32, i32* @M_WAITOK, align 4
  %52 = call i8* @g_malloc(i32 %50, i32 %51)
  %53 = load %struct.bio*, %struct.bio** %8, align 8
  %54 = getelementptr inbounds %struct.bio, %struct.bio* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  br label %73

55:                                               ; preds = %28
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @GV_BIO_CHECK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = load %struct.gv_plex*, %struct.gv_plex** %4, align 8
  %62 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @M_WAITOK, align 4
  %65 = load i32, i32* @M_ZERO, align 4
  %66 = or i32 %64, %65
  %67 = call i8* @g_malloc(i32 %63, i32 %66)
  %68 = load %struct.bio*, %struct.bio** %8, align 8
  %69 = getelementptr inbounds %struct.bio, %struct.bio* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  br label %72

70:                                               ; preds = %55
  %71 = call i32 (i32, i8*, ...) @G_VINUM_DEBUG(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %88

72:                                               ; preds = %60
  br label %73

73:                                               ; preds = %72, %49
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.bio*, %struct.bio** %8, align 8
  %76 = getelementptr inbounds %struct.bio, %struct.bio* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* @GV_BIO_MALLOC, align 4
  %78 = load %struct.bio*, %struct.bio** %8, align 8
  %79 = getelementptr inbounds %struct.bio, %struct.bio* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.bio*, %struct.bio** %8, align 8
  %84 = getelementptr inbounds %struct.bio, %struct.bio* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.gv_softc*, %struct.gv_softc** %7, align 8
  %86 = load %struct.bio*, %struct.bio** %8, align 8
  %87 = call i32 @gv_post_bio(%struct.gv_softc* %85, %struct.bio* %86)
  br label %88

88:                                               ; preds = %73, %70, %23
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.bio* @g_new_bio(...) #1

declare dso_local i32 @G_VINUM_DEBUG(i32, i8*, ...) #1

declare dso_local i8* @g_malloc(i32, i32) #1

declare dso_local i32 @gv_post_bio(%struct.gv_softc*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
