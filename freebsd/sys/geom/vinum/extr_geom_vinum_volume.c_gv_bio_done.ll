; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_volume.c_gv_bio_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_volume.c_gv_bio_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gv_softc = type { i32 }
%struct.bio = type { %struct.gv_sd* }
%struct.gv_sd = type { %struct.gv_plex* }
%struct.gv_plex = type { i32, %struct.gv_volume* }
%struct.gv_volume = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"gv_bio_done: NULL s\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"gv_bio_done: NULL p\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"gv_bio_done: NULL v\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gv_bio_done(%struct.gv_softc* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.gv_softc*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.gv_volume*, align 8
  %6 = alloca %struct.gv_plex*, align 8
  %7 = alloca %struct.gv_sd*, align 8
  store %struct.gv_softc* %0, %struct.gv_softc** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %8 = load %struct.bio*, %struct.bio** %4, align 8
  %9 = getelementptr inbounds %struct.bio, %struct.bio* %8, i32 0, i32 0
  %10 = load %struct.gv_sd*, %struct.gv_sd** %9, align 8
  store %struct.gv_sd* %10, %struct.gv_sd** %7, align 8
  %11 = load %struct.gv_sd*, %struct.gv_sd** %7, align 8
  %12 = icmp ne %struct.gv_sd* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @KASSERT(i32 %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.gv_sd*, %struct.gv_sd** %7, align 8
  %16 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %15, i32 0, i32 0
  %17 = load %struct.gv_plex*, %struct.gv_plex** %16, align 8
  store %struct.gv_plex* %17, %struct.gv_plex** %6, align 8
  %18 = load %struct.gv_plex*, %struct.gv_plex** %6, align 8
  %19 = icmp ne %struct.gv_plex* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @KASSERT(i32 %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.gv_plex*, %struct.gv_plex** %6, align 8
  %23 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %22, i32 0, i32 1
  %24 = load %struct.gv_volume*, %struct.gv_volume** %23, align 8
  store %struct.gv_volume* %24, %struct.gv_volume** %5, align 8
  %25 = load %struct.gv_volume*, %struct.gv_volume** %5, align 8
  %26 = icmp ne %struct.gv_volume* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @KASSERT(i32 %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %29 = load %struct.gv_plex*, %struct.gv_plex** %6, align 8
  %30 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %40 [
    i32 130, label %32
    i32 128, label %32
    i32 129, label %36
  ]

32:                                               ; preds = %2, %2
  %33 = load %struct.gv_plex*, %struct.gv_plex** %6, align 8
  %34 = load %struct.bio*, %struct.bio** %4, align 8
  %35 = call i32 @gv_plex_normal_done(%struct.gv_plex* %33, %struct.bio* %34)
  br label %40

36:                                               ; preds = %2
  %37 = load %struct.gv_plex*, %struct.gv_plex** %6, align 8
  %38 = load %struct.bio*, %struct.bio** %4, align 8
  %39 = call i32 @gv_plex_raid5_done(%struct.gv_plex* %37, %struct.bio* %38)
  br label %40

40:                                               ; preds = %2, %36, %32
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @gv_plex_normal_done(%struct.gv_plex*, %struct.bio*) #1

declare dso_local i32 @gv_plex_raid5_done(%struct.gv_plex*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
