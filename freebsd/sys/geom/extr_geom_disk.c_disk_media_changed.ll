; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_disk.c_disk_media_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_disk.c_disk_media_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk = type { %struct.g_geom* }
%struct.g_geom = type { i32 }
%struct.g_provider = type { i32 }

@provider = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"geom %p has more than one provider\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @disk_media_changed(%struct.disk* %0, i32 %1) #0 {
  %3 = alloca %struct.disk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_geom*, align 8
  %6 = alloca %struct.g_provider*, align 8
  store %struct.disk* %0, %struct.disk** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.disk*, %struct.disk** %3, align 8
  %8 = getelementptr inbounds %struct.disk, %struct.disk* %7, i32 0, i32 0
  %9 = load %struct.g_geom*, %struct.g_geom** %8, align 8
  store %struct.g_geom* %9, %struct.g_geom** %5, align 8
  %10 = load %struct.g_geom*, %struct.g_geom** %5, align 8
  %11 = icmp ne %struct.g_geom* %10, null
  br i1 %11, label %12, label %31

12:                                               ; preds = %2
  %13 = load %struct.g_geom*, %struct.g_geom** %5, align 8
  %14 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %13, i32 0, i32 0
  %15 = call %struct.g_provider* @LIST_FIRST(i32* %14)
  store %struct.g_provider* %15, %struct.g_provider** %6, align 8
  %16 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %17 = icmp ne %struct.g_provider* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %12
  %19 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %20 = load i32, i32* @provider, align 4
  %21 = call i32* @LIST_NEXT(%struct.g_provider* %19, i32 %20)
  %22 = icmp eq i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = load %struct.g_geom*, %struct.g_geom** %5, align 8
  %25 = bitcast %struct.g_geom* %24 to i8*
  %26 = call i32 @KASSERT(i32 %23, i8* %25)
  %27 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @g_media_changed(%struct.g_provider* %27, i32 %28)
  br label %30

30:                                               ; preds = %18, %12
  br label %31

31:                                               ; preds = %30, %2
  ret void
}

declare dso_local %struct.g_provider* @LIST_FIRST(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @LIST_NEXT(%struct.g_provider*, i32) #1

declare dso_local i32 @g_media_changed(%struct.g_provider*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
