; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_disk.c_g_disk_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_disk.c_g_disk_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, i32, i64, i64, i64, i64, i64, i32, i64, %struct.TYPE_3__*, %struct.bio* }
%struct.TYPE_3__ = type { %struct.g_disk_softc* }
%struct.g_disk_softc = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.bintime = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @g_disk_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_disk_done(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.bintime, align 4
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.g_disk_softc*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %6 = load %struct.bio*, %struct.bio** %2, align 8
  %7 = getelementptr inbounds %struct.bio, %struct.bio* %6, i32 0, i32 10
  %8 = load %struct.bio*, %struct.bio** %7, align 8
  store %struct.bio* %8, %struct.bio** %4, align 8
  %9 = load %struct.bio*, %struct.bio** %4, align 8
  %10 = getelementptr inbounds %struct.bio, %struct.bio* %9, i32 0, i32 9
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.g_disk_softc*, %struct.g_disk_softc** %12, align 8
  store %struct.g_disk_softc* %13, %struct.g_disk_softc** %5, align 8
  %14 = load %struct.bio*, %struct.bio** %2, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 8
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.bio*, %struct.bio** %2, align 8
  %18 = getelementptr inbounds %struct.bio, %struct.bio* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %16, %19
  %21 = load %struct.bio*, %struct.bio** %2, align 8
  %22 = getelementptr inbounds %struct.bio, %struct.bio* %21, i32 0, i32 4
  store i64 %20, i64* %22, align 8
  %23 = call i32 @binuptime(%struct.bintime* %3)
  %24 = load %struct.g_disk_softc*, %struct.g_disk_softc** %5, align 8
  %25 = getelementptr inbounds %struct.g_disk_softc, %struct.g_disk_softc* %24, i32 0, i32 0
  %26 = call i32 @mtx_lock(i32* %25)
  %27 = load %struct.bio*, %struct.bio** %4, align 8
  %28 = getelementptr inbounds %struct.bio, %struct.bio* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %1
  %32 = load %struct.bio*, %struct.bio** %2, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.bio*, %struct.bio** %4, align 8
  %36 = getelementptr inbounds %struct.bio, %struct.bio* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %31, %1
  %38 = load %struct.bio*, %struct.bio** %2, align 8
  %39 = getelementptr inbounds %struct.bio, %struct.bio* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.bio*, %struct.bio** %4, align 8
  %42 = getelementptr inbounds %struct.bio, %struct.bio* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, %40
  store i64 %44, i64* %42, align 8
  %45 = load %struct.bio*, %struct.bio** %2, align 8
  %46 = getelementptr inbounds %struct.bio, %struct.bio* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %62 [
    i32 128, label %48
    i32 130, label %54
    i32 129, label %54
    i32 132, label %54
    i32 131, label %54
  ]

48:                                               ; preds = %37
  %49 = load %struct.bio*, %struct.bio** %2, align 8
  %50 = getelementptr inbounds %struct.bio, %struct.bio* %49, i32 0, i32 7
  %51 = load %struct.bio*, %struct.bio** %4, align 8
  %52 = getelementptr inbounds %struct.bio, %struct.bio* %51, i32 0, i32 7
  %53 = call i32 @bcopy(i32* %50, i32* %52, i32 4)
  br label %54

54:                                               ; preds = %37, %37, %37, %37, %48
  %55 = load %struct.g_disk_softc*, %struct.g_disk_softc** %5, align 8
  %56 = getelementptr inbounds %struct.g_disk_softc, %struct.g_disk_softc* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.bio*, %struct.bio** %2, align 8
  %61 = call i32 @devstat_end_transaction_bio_bt(i32 %59, %struct.bio* %60, %struct.bintime* %3)
  br label %63

62:                                               ; preds = %37
  br label %63

63:                                               ; preds = %62, %54
  %64 = load %struct.bio*, %struct.bio** %4, align 8
  %65 = getelementptr inbounds %struct.bio, %struct.bio* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %65, align 8
  %68 = load %struct.bio*, %struct.bio** %4, align 8
  %69 = getelementptr inbounds %struct.bio, %struct.bio* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.bio*, %struct.bio** %4, align 8
  %72 = getelementptr inbounds %struct.bio, %struct.bio* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %70, %73
  br i1 %74, label %75, label %93

75:                                               ; preds = %63
  %76 = load %struct.g_disk_softc*, %struct.g_disk_softc** %5, align 8
  %77 = getelementptr inbounds %struct.g_disk_softc, %struct.g_disk_softc* %76, i32 0, i32 0
  %78 = call i32 @mtx_unlock(i32* %77)
  %79 = load %struct.bio*, %struct.bio** %4, align 8
  %80 = getelementptr inbounds %struct.bio, %struct.bio* %79, i32 0, i32 5
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.bio*, %struct.bio** %4, align 8
  %83 = getelementptr inbounds %struct.bio, %struct.bio* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %81, %84
  %86 = load %struct.bio*, %struct.bio** %4, align 8
  %87 = getelementptr inbounds %struct.bio, %struct.bio* %86, i32 0, i32 6
  store i64 %85, i64* %87, align 8
  %88 = load %struct.bio*, %struct.bio** %4, align 8
  %89 = load %struct.bio*, %struct.bio** %4, align 8
  %90 = getelementptr inbounds %struct.bio, %struct.bio* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @g_io_deliver(%struct.bio* %88, i64 %91)
  br label %97

93:                                               ; preds = %63
  %94 = load %struct.g_disk_softc*, %struct.g_disk_softc** %5, align 8
  %95 = getelementptr inbounds %struct.g_disk_softc, %struct.g_disk_softc* %94, i32 0, i32 0
  %96 = call i32 @mtx_unlock(i32* %95)
  br label %97

97:                                               ; preds = %93, %75
  %98 = load %struct.bio*, %struct.bio** %2, align 8
  %99 = call i32 @g_destroy_bio(%struct.bio* %98)
  ret void
}

declare dso_local i32 @binuptime(%struct.bintime*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @devstat_end_transaction_bio_bt(i32, %struct.bio*, %struct.bintime*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i64) #1

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
