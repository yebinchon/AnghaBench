; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_plex.c_gv_parity_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_plex.c_gv_parity_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gv_plex = type { i64, i32, %struct.TYPE_2__*, i64, i64, %struct.gv_softc* }
%struct.TYPE_2__ = type { i32 }
%struct.gv_softc = type { i32 }
%struct.bio = type { i32, i32, i32 }

@GV_BIO_MALLOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"gv_parity_complete: NULL sc\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"parity incorrect at offset 0x%jx\00", align 1
@GV_BIO_PARITY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"parity check on %s failed at 0x%jx errno %d\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"parity operation on %s finished\00", align 1
@GV_EVENT_SAVE_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gv_parity_complete(%struct.gv_plex* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.gv_plex*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.gv_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gv_plex* %0, %struct.gv_plex** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %8 = load %struct.bio*, %struct.bio** %4, align 8
  %9 = getelementptr inbounds %struct.bio, %struct.bio* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.bio*, %struct.bio** %4, align 8
  %12 = getelementptr inbounds %struct.bio, %struct.bio* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @GV_BIO_MALLOC, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %7, align 4
  %18 = load %struct.gv_plex*, %struct.gv_plex** %3, align 8
  %19 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %18, i32 0, i32 5
  %20 = load %struct.gv_softc*, %struct.gv_softc** %19, align 8
  store %struct.gv_softc* %20, %struct.gv_softc** %5, align 8
  %21 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %22 = icmp ne %struct.gv_softc* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @KASSERT(i32 %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.bio*, %struct.bio** %4, align 8
  %26 = getelementptr inbounds %struct.bio, %struct.bio* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @GV_BIO_MALLOC, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  %32 = load %struct.bio*, %struct.bio** %4, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @g_free(i32 %34)
  br label %36

36:                                               ; preds = %31, %2
  %37 = load %struct.bio*, %struct.bio** %4, align 8
  %38 = call i32 @g_destroy_bio(%struct.bio* %37)
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @EAGAIN, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.gv_plex*, %struct.gv_plex** %3, align 8
  %44 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 (i32, i8*, i32, ...) @G_VINUM_DEBUG(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %42, %36
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %79

51:                                               ; preds = %48
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @EAGAIN, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @GV_BIO_PARITY, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %79, label %60

60:                                               ; preds = %55, %51
  %61 = call i32 (...) @g_topology_assert_not()
  %62 = call i32 (...) @g_topology_lock()
  %63 = load %struct.gv_plex*, %struct.gv_plex** %3, align 8
  %64 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @gv_access(i32 %67, i32 -1, i32 -1, i32 0)
  %69 = call i32 (...) @g_topology_unlock()
  %70 = load %struct.gv_plex*, %struct.gv_plex** %3, align 8
  %71 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.gv_plex*, %struct.gv_plex** %3, align 8
  %74 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = load i32, i32* %6, align 4
  %78 = call i32 (i32, i8*, i32, ...) @G_VINUM_DEBUG(i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %72, i32 %76, i32 %77)
  br label %122

79:                                               ; preds = %55, %48
  %80 = load %struct.gv_plex*, %struct.gv_plex** %3, align 8
  %81 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.gv_plex*, %struct.gv_plex** %3, align 8
  %84 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, %82
  store i64 %86, i64* %84, align 8
  br label %87

87:                                               ; preds = %79
  %88 = load %struct.gv_plex*, %struct.gv_plex** %3, align 8
  %89 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.gv_plex*, %struct.gv_plex** %3, align 8
  %92 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = icmp sge i64 %90, %93
  br i1 %94, label %95, label %115

95:                                               ; preds = %87
  %96 = call i32 (...) @g_topology_assert_not()
  %97 = call i32 (...) @g_topology_lock()
  %98 = load %struct.gv_plex*, %struct.gv_plex** %3, align 8
  %99 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %98, i32 0, i32 2
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @gv_access(i32 %102, i32 -1, i32 -1, i32 0)
  %104 = call i32 (...) @g_topology_unlock()
  %105 = load %struct.gv_plex*, %struct.gv_plex** %3, align 8
  %106 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 (i32, i8*, i32, ...) @G_VINUM_DEBUG(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  %109 = load %struct.gv_plex*, %struct.gv_plex** %3, align 8
  %110 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %109, i32 0, i32 0
  store i64 0, i64* %110, align 8
  %111 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %112 = load i32, i32* @GV_EVENT_SAVE_CONFIG, align 4
  %113 = load %struct.gv_softc*, %struct.gv_softc** %5, align 8
  %114 = call i32 @gv_post_event(%struct.gv_softc* %111, i32 %112, %struct.gv_softc* %113, i32* null, i32 0, i32 0)
  br label %122

115:                                              ; preds = %87
  %116 = load %struct.gv_plex*, %struct.gv_plex** %3, align 8
  %117 = load i32, i32* %7, align 4
  %118 = load %struct.gv_plex*, %struct.gv_plex** %3, align 8
  %119 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @gv_parity_request(%struct.gv_plex* %116, i32 %117, i64 %120)
  br label %122

122:                                              ; preds = %115, %95, %60
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @g_free(i32) #1

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

declare dso_local i32 @G_VINUM_DEBUG(i32, i8*, i32, ...) #1

declare dso_local i32 @g_topology_assert_not(...) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local i32 @gv_access(i32, i32, i32, i32) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32 @gv_post_event(%struct.gv_softc*, i32, %struct.gv_softc*, i32*, i32, i32) #1

declare dso_local i32 @gv_parity_request(%struct.gv_plex*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
