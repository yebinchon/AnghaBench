; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_volume.c_gv_volume_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_volume.c_gv_volume_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gv_volume = type { i32, %struct.gv_softc* }
%struct.gv_softc = type { i32 }
%struct.bio = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"NULL v\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"NULL sc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gv_volume_flush(%struct.gv_volume* %0) #0 {
  %2 = alloca %struct.gv_volume*, align 8
  %3 = alloca %struct.gv_softc*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.gv_volume* %0, %struct.gv_volume** %2, align 8
  %5 = load %struct.gv_volume*, %struct.gv_volume** %2, align 8
  %6 = icmp ne %struct.gv_volume* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @KASSERT(i32 %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.gv_volume*, %struct.gv_volume** %2, align 8
  %10 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %9, i32 0, i32 1
  %11 = load %struct.gv_softc*, %struct.gv_softc** %10, align 8
  store %struct.gv_softc* %11, %struct.gv_softc** %3, align 8
  %12 = load %struct.gv_softc*, %struct.gv_softc** %3, align 8
  %13 = icmp ne %struct.gv_softc* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.gv_volume*, %struct.gv_volume** %2, align 8
  %17 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.bio* @bioq_takefirst(i32 %18)
  store %struct.bio* %19, %struct.bio** %4, align 8
  br label %20

20:                                               ; preds = %23, %1
  %21 = load %struct.bio*, %struct.bio** %4, align 8
  %22 = icmp ne %struct.bio* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load %struct.gv_softc*, %struct.gv_softc** %3, align 8
  %25 = load %struct.bio*, %struct.bio** %4, align 8
  %26 = call i32 @gv_volume_start(%struct.gv_softc* %24, %struct.bio* %25)
  %27 = load %struct.gv_volume*, %struct.gv_volume** %2, align 8
  %28 = getelementptr inbounds %struct.gv_volume, %struct.gv_volume* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.bio* @bioq_takefirst(i32 %29)
  store %struct.bio* %30, %struct.bio** %4, align 8
  br label %20

31:                                               ; preds = %20
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.bio* @bioq_takefirst(i32) #1

declare dso_local i32 @gv_volume_start(%struct.gv_softc*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
