; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_get_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_get_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_mirror_disk = type { i64 }
%struct.g_mirror_softc = type { %struct.g_mirror_disk*, i32 }

@G_MIRROR_DISK_STATE_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.g_mirror_disk* (%struct.g_mirror_softc*)* @g_mirror_get_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.g_mirror_disk* @g_mirror_get_disk(%struct.g_mirror_softc* %0) #0 {
  %2 = alloca %struct.g_mirror_disk*, align 8
  %3 = alloca %struct.g_mirror_softc*, align 8
  %4 = alloca %struct.g_mirror_disk*, align 8
  store %struct.g_mirror_softc* %0, %struct.g_mirror_softc** %3, align 8
  %5 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %6 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %5, i32 0, i32 0
  %7 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %6, align 8
  %8 = icmp eq %struct.g_mirror_disk* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %11 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %10, i32 0, i32 1
  %12 = call %struct.g_mirror_disk* @LIST_FIRST(i32* %11)
  %13 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %14 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %13, i32 0, i32 0
  store %struct.g_mirror_disk* %12, %struct.g_mirror_disk** %14, align 8
  %15 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %16 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %15, i32 0, i32 0
  %17 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %16, align 8
  %18 = icmp eq %struct.g_mirror_disk* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %9
  store %struct.g_mirror_disk* null, %struct.g_mirror_disk** %2, align 8
  br label %47

20:                                               ; preds = %9
  br label %21

21:                                               ; preds = %20, %1
  %22 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %23 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %22, i32 0, i32 0
  %24 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %23, align 8
  store %struct.g_mirror_disk* %24, %struct.g_mirror_disk** %4, align 8
  %25 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %4, align 8
  %26 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @G_MIRROR_DISK_STATE_ACTIVE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %21
  %31 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %32 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %4, align 8
  %33 = call i8* @g_mirror_find_next(%struct.g_mirror_softc* %31, %struct.g_mirror_disk* %32)
  %34 = bitcast i8* %33 to %struct.g_mirror_disk*
  store %struct.g_mirror_disk* %34, %struct.g_mirror_disk** %4, align 8
  %35 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %4, align 8
  %36 = icmp eq %struct.g_mirror_disk* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store %struct.g_mirror_disk* null, %struct.g_mirror_disk** %2, align 8
  br label %47

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %21
  %40 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %41 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %4, align 8
  %42 = call i8* @g_mirror_find_next(%struct.g_mirror_softc* %40, %struct.g_mirror_disk* %41)
  %43 = bitcast i8* %42 to %struct.g_mirror_disk*
  %44 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %45 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %44, i32 0, i32 0
  store %struct.g_mirror_disk* %43, %struct.g_mirror_disk** %45, align 8
  %46 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %4, align 8
  store %struct.g_mirror_disk* %46, %struct.g_mirror_disk** %2, align 8
  br label %47

47:                                               ; preds = %39, %37, %19
  %48 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %2, align 8
  ret %struct.g_mirror_disk* %48
}

declare dso_local %struct.g_mirror_disk* @LIST_FIRST(i32*) #1

declare dso_local i8* @g_mirror_find_next(%struct.g_mirror_softc*, %struct.g_mirror_disk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
