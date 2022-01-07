; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_work.c_g_bde_start1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_work.c_g_bde_start1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, i64, i64, i64, %struct.g_bde_softc*, %struct.TYPE_4__* }
%struct.g_bde_softc = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.g_bde_softc* }
%struct.g_bde_work = type { i64, i64, i64, %struct.bio* }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g_bde_start1(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.g_bde_softc*, align 8
  %4 = alloca %struct.g_bde_work*, align 8
  %5 = alloca i64, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %6 = load %struct.bio*, %struct.bio** %2, align 8
  %7 = getelementptr inbounds %struct.bio, %struct.bio* %6, i32 0, i32 5
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.g_bde_softc*, %struct.g_bde_softc** %11, align 8
  store %struct.g_bde_softc* %12, %struct.g_bde_softc** %3, align 8
  %13 = load %struct.g_bde_softc*, %struct.g_bde_softc** %3, align 8
  %14 = load %struct.bio*, %struct.bio** %2, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 4
  store %struct.g_bde_softc* %13, %struct.g_bde_softc** %15, align 8
  %16 = load %struct.g_bde_softc*, %struct.g_bde_softc** %3, align 8
  %17 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %16, i32 0, i32 0
  %18 = call i32 @mtx_lock(i32* %17)
  store i64 0, i64* %5, align 8
  br label %19

19:                                               ; preds = %81, %1
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.bio*, %struct.bio** %2, align 8
  %22 = getelementptr inbounds %struct.bio, %struct.bio* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %20, %23
  br i1 %24, label %25, label %82

25:                                               ; preds = %19
  %26 = load %struct.g_bde_softc*, %struct.g_bde_softc** %3, align 8
  %27 = call %struct.g_bde_work* @g_bde_new_work(%struct.g_bde_softc* %26)
  store %struct.g_bde_work* %27, %struct.g_bde_work** %4, align 8
  %28 = load %struct.g_bde_work*, %struct.g_bde_work** %4, align 8
  %29 = icmp ne %struct.g_bde_work* %28, null
  br i1 %29, label %30, label %64

30:                                               ; preds = %25
  %31 = load %struct.bio*, %struct.bio** %2, align 8
  %32 = load %struct.g_bde_work*, %struct.g_bde_work** %4, align 8
  %33 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %32, i32 0, i32 3
  store %struct.bio* %31, %struct.bio** %33, align 8
  %34 = load %struct.bio*, %struct.bio** %2, align 8
  %35 = getelementptr inbounds %struct.bio, %struct.bio* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = add nsw i64 %36, %37
  %39 = load %struct.g_bde_work*, %struct.g_bde_work** %4, align 8
  %40 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %39, i32 0, i32 2
  store i64 %38, i64* %40, align 8
  %41 = load %struct.bio*, %struct.bio** %2, align 8
  %42 = getelementptr inbounds %struct.bio, %struct.bio* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = add nsw i64 %43, %44
  %46 = load %struct.g_bde_work*, %struct.g_bde_work** %4, align 8
  %47 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.bio*, %struct.bio** %2, align 8
  %49 = getelementptr inbounds %struct.bio, %struct.bio* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %5, align 8
  %52 = sub nsw i64 %50, %51
  %53 = load %struct.g_bde_work*, %struct.g_bde_work** %4, align 8
  %54 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.g_bde_work*, %struct.g_bde_work** %4, align 8
  %56 = call i32 @g_bde_map_sector(%struct.g_bde_work* %55)
  %57 = load %struct.g_bde_work*, %struct.g_bde_work** %4, align 8
  %58 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %5, align 8
  %61 = add nsw i64 %60, %59
  store i64 %61, i64* %5, align 8
  %62 = load %struct.g_bde_work*, %struct.g_bde_work** %4, align 8
  %63 = call i32 @g_bde_start2(%struct.g_bde_work* %62)
  br label %64

64:                                               ; preds = %30, %25
  %65 = load %struct.g_bde_work*, %struct.g_bde_work** %4, align 8
  %66 = icmp eq %struct.g_bde_work* %65, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %64
  %68 = load %struct.bio*, %struct.bio** %2, align 8
  %69 = getelementptr inbounds %struct.bio, %struct.bio* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %67, %64
  %73 = load %struct.bio*, %struct.bio** %2, align 8
  %74 = load %struct.bio*, %struct.bio** %2, align 8
  %75 = getelementptr inbounds %struct.bio, %struct.bio* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %5, align 8
  %78 = sub nsw i64 %76, %77
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = call i32 @g_bde_contribute(%struct.bio* %73, i64 %78, i32 %79)
  br label %82

81:                                               ; preds = %67
  br label %19

82:                                               ; preds = %72, %19
  %83 = load %struct.g_bde_softc*, %struct.g_bde_softc** %3, align 8
  %84 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %83, i32 0, i32 0
  %85 = call i32 @mtx_unlock(i32* %84)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.g_bde_work* @g_bde_new_work(%struct.g_bde_softc*) #1

declare dso_local i32 @g_bde_map_sector(%struct.g_bde_work*) #1

declare dso_local i32 @g_bde_start2(%struct.g_bde_work*) #1

declare dso_local i32 @g_bde_contribute(%struct.bio*, i64, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
