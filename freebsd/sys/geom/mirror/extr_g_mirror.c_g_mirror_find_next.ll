; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_find_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_find_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_mirror_softc = type { i32 }
%struct.g_mirror_disk = type { i64 }

@d_next = common dso_local global i32 0, align 4
@G_MIRROR_DISK_STATE_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.g_mirror_disk* (%struct.g_mirror_softc*, %struct.g_mirror_disk*)* @g_mirror_find_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.g_mirror_disk* @g_mirror_find_next(%struct.g_mirror_softc* %0, %struct.g_mirror_disk* %1) #0 {
  %3 = alloca %struct.g_mirror_disk*, align 8
  %4 = alloca %struct.g_mirror_softc*, align 8
  %5 = alloca %struct.g_mirror_disk*, align 8
  %6 = alloca %struct.g_mirror_disk*, align 8
  store %struct.g_mirror_softc* %0, %struct.g_mirror_softc** %4, align 8
  store %struct.g_mirror_disk* %1, %struct.g_mirror_disk** %5, align 8
  %7 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %5, align 8
  %8 = load i32, i32* @d_next, align 4
  %9 = call %struct.g_mirror_disk* @LIST_NEXT(%struct.g_mirror_disk* %7, i32 %8)
  store %struct.g_mirror_disk* %9, %struct.g_mirror_disk** %6, align 8
  br label %10

10:                                               ; preds = %29, %2
  %11 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %6, align 8
  %12 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %5, align 8
  %13 = icmp ne %struct.g_mirror_disk* %11, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %10
  %15 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %6, align 8
  %16 = icmp eq %struct.g_mirror_disk* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %4, align 8
  %19 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %18, i32 0, i32 0
  %20 = call %struct.g_mirror_disk* @LIST_FIRST(i32* %19)
  store %struct.g_mirror_disk* %20, %struct.g_mirror_disk** %6, align 8
  br label %21

21:                                               ; preds = %17, %14
  %22 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %6, align 8
  %23 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @G_MIRROR_DISK_STATE_ACTIVE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %33

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %6, align 8
  %31 = load i32, i32* @d_next, align 4
  %32 = call %struct.g_mirror_disk* @LIST_NEXT(%struct.g_mirror_disk* %30, i32 %31)
  store %struct.g_mirror_disk* %32, %struct.g_mirror_disk** %6, align 8
  br label %10

33:                                               ; preds = %27, %10
  %34 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %6, align 8
  %35 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @G_MIRROR_DISK_STATE_ACTIVE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store %struct.g_mirror_disk* null, %struct.g_mirror_disk** %3, align 8
  br label %42

40:                                               ; preds = %33
  %41 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %6, align 8
  store %struct.g_mirror_disk* %41, %struct.g_mirror_disk** %3, align 8
  br label %42

42:                                               ; preds = %40, %39
  %43 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %3, align 8
  ret %struct.g_mirror_disk* %43
}

declare dso_local %struct.g_mirror_disk* @LIST_NEXT(%struct.g_mirror_disk*, i32) #1

declare dso_local %struct.g_mirror_disk* @LIST_FIRST(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
