; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_init_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_init_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid3_disk = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32* }
%struct.g_raid3_softc = type { %struct.g_raid3_disk* }
%struct.g_provider = type { i32 }
%struct.g_raid3_metadata = type { i64, i8*, i32, i32, i32, i32 }

@G_RAID3_DISK_STATE_NONE = common dso_local global i32 0, align 4
@G_RAID3_DISK_FLAG_HARDCODED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.g_raid3_disk* (%struct.g_raid3_softc*, %struct.g_provider*, %struct.g_raid3_metadata*, i32*)* @g_raid3_init_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.g_raid3_disk* @g_raid3_init_disk(%struct.g_raid3_softc* %0, %struct.g_provider* %1, %struct.g_raid3_metadata* %2, i32* %3) #0 {
  %5 = alloca %struct.g_raid3_disk*, align 8
  %6 = alloca %struct.g_raid3_softc*, align 8
  %7 = alloca %struct.g_provider*, align 8
  %8 = alloca %struct.g_raid3_metadata*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.g_raid3_disk*, align 8
  %11 = alloca i32, align 4
  store %struct.g_raid3_softc* %0, %struct.g_raid3_softc** %6, align 8
  store %struct.g_provider* %1, %struct.g_provider** %7, align 8
  store %struct.g_raid3_metadata* %2, %struct.g_raid3_metadata** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %6, align 8
  %13 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %12, i32 0, i32 0
  %14 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %13, align 8
  %15 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %8, align 8
  %16 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %14, i64 %17
  store %struct.g_raid3_disk* %18, %struct.g_raid3_disk** %10, align 8
  %19 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %10, align 8
  %20 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %21 = call i32 @g_raid3_connect_disk(%struct.g_raid3_disk* %19, %struct.g_provider* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %4
  %25 = load i32*, i32** %9, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* %11, align 4
  %29 = load i32*, i32** %9, align 8
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %24
  store %struct.g_raid3_disk* null, %struct.g_raid3_disk** %5, align 8
  br label %86

31:                                               ; preds = %4
  %32 = load i32, i32* @G_RAID3_DISK_STATE_NONE, align 4
  %33 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %10, align 8
  %34 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %8, align 8
  %36 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %10, align 8
  %39 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %8, align 8
  %41 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %31
  %48 = load i32, i32* @G_RAID3_DISK_FLAG_HARDCODED, align 4
  %49 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %10, align 8
  %50 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %47, %31
  %54 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %10, align 8
  %55 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  store i32* null, i32** %56, align 8
  %57 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %8, align 8
  %58 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %10, align 8
  %61 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  store i32 %59, i32* %62, align 8
  %63 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %8, align 8
  %64 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %10, align 8
  %67 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 4
  %69 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %8, align 8
  %70 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %10, align 8
  %73 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %8, align 8
  %75 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %10, align 8
  %78 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %53
  %83 = load i32*, i32** %9, align 8
  store i32 0, i32* %83, align 4
  br label %84

84:                                               ; preds = %82, %53
  %85 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %10, align 8
  store %struct.g_raid3_disk* %85, %struct.g_raid3_disk** %5, align 8
  br label %86

86:                                               ; preds = %84, %30
  %87 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %5, align 8
  ret %struct.g_raid3_disk* %87
}

declare dso_local i32 @g_raid3_connect_disk(%struct.g_raid3_disk*, %struct.g_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
