; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_init.c_gv_start_vol.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_init.c_gv_start_vol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gv_volume = type { i32, i32, i32 }
%struct.gv_plex = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"gv_start_vol: NULL v\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"gv_start_vol: NULL p on %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gv_start_vol(%struct.gv_volume* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gv_volume*, align 8
  %4 = alloca %struct.gv_plex*, align 8
  %5 = alloca i32, align 4
  store %struct.gv_volume* %0, %struct.gv_volume** %3, align 8
  %6 = load %struct.gv_volume*, %struct.gv_volume** %3, align 8
  %7 = icmp ne %struct.gv_volume* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @KASSERT(i32 %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  %10 = load %struct.gv_volume*, %struct.gv_volume** %3, align 8
  %11 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @ENXIO, align 4
  store i32 %15, i32* %2, align 4
  br label %42

16:                                               ; preds = %1
  %17 = load %struct.gv_volume*, %struct.gv_volume** %3, align 8
  %18 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %36

21:                                               ; preds = %16
  %22 = load %struct.gv_volume*, %struct.gv_volume** %3, align 8
  %23 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %22, i32 0, i32 2
  %24 = call %struct.gv_plex* @LIST_FIRST(i32* %23)
  store %struct.gv_plex* %24, %struct.gv_plex** %4, align 8
  %25 = load %struct.gv_plex*, %struct.gv_plex** %4, align 8
  %26 = icmp ne %struct.gv_plex* %25, null
  %27 = zext i1 %26 to i32
  %28 = load %struct.gv_volume*, %struct.gv_volume** %3, align 8
  %29 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @KASSERT(i32 %27, i8* %32)
  %34 = load %struct.gv_plex*, %struct.gv_plex** %4, align 8
  %35 = call i32 @gv_start_plex(%struct.gv_plex* %34)
  store i32 %35, i32* %5, align 4
  br label %39

36:                                               ; preds = %16
  %37 = load %struct.gv_volume*, %struct.gv_volume** %3, align 8
  %38 = call i32 @gv_sync(%struct.gv_volume* %37)
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %36, %21
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %14
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.gv_plex* @LIST_FIRST(i32*) #1

declare dso_local i32 @gv_start_plex(%struct.gv_plex*) #1

declare dso_local i32 @gv_sync(%struct.gv_volume*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
