; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_launch_provider.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_launch_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid3_softc = type { i32, i64, %struct.g_provider*, %struct.g_raid3_disk*, i32, i32, i32, i32, i32 }
%struct.g_provider = type { i32, i32, i32, i32, i32 }
%struct.g_raid3_disk = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@SX_LOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"raid3/%s\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Device %s launched (%u/%u).\00", align 1
@G_RAID3_DISK_STATE_ACTIVE = common dso_local global i32 0, align 4
@G_RAID3_DEVICE_STATE_DEGRADED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_raid3_softc*)* @g_raid3_launch_provider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid3_launch_provider(%struct.g_raid3_softc* %0) #0 {
  %2 = alloca %struct.g_raid3_softc*, align 8
  %3 = alloca %struct.g_provider*, align 8
  %4 = alloca %struct.g_raid3_disk*, align 8
  %5 = alloca i32, align 4
  store %struct.g_raid3_softc* %0, %struct.g_raid3_softc** %2, align 8
  %6 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %7 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %6, i32 0, i32 8
  %8 = load i32, i32* @SX_LOCKED, align 4
  %9 = call i32 @sx_assert(i32* %7, i32 %8)
  %10 = call i32 (...) @g_topology_lock()
  %11 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %12 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %15 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.g_provider* @g_new_providerf(i32 %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %16)
  store %struct.g_provider* %17, %struct.g_provider** %3, align 8
  %18 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %19 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %22 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 4
  %23 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %24 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %27 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %29 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %31 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %30, i32 0, i32 1
  store i32 0, i32* %31, align 4
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %88, %1
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %35 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %91

38:                                               ; preds = %32
  %39 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %40 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %39, i32 0, i32 3
  %41 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %41, i64 %43
  store %struct.g_raid3_disk* %44, %struct.g_raid3_disk** %4, align 8
  %45 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %4, align 8
  %46 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = icmp ne %struct.TYPE_4__* %47, null
  br i1 %48, label %49, label %87

49:                                               ; preds = %38
  %50 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %4, align 8
  %51 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = icmp ne %struct.TYPE_3__* %54, null
  br i1 %55, label %56, label %87

56:                                               ; preds = %49
  %57 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %4, align 8
  %58 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %65 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp sgt i32 %63, %66
  br i1 %67, label %68, label %87

68:                                               ; preds = %56
  %69 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %4, align 8
  %70 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %77 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %4, align 8
  %79 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %86 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %68, %56, %49, %38
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %32

91:                                               ; preds = %32
  %92 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %93 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sub nsw i32 %94, 1
  %96 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %97 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = mul nsw i32 %98, %95
  store i32 %99, i32* %97, align 4
  %100 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %101 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sub nsw i32 %102, 1
  %104 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %105 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = mul nsw i32 %106, %103
  store i32 %107, i32* %105, align 4
  %108 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %109 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %110 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %109, i32 0, i32 2
  store %struct.g_provider* %108, %struct.g_provider** %110, align 8
  %111 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %112 = call i32 @g_error_provider(%struct.g_provider* %111, i32 0)
  %113 = call i32 (...) @g_topology_unlock()
  %114 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %115 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %118 = load i32, i32* @G_RAID3_DISK_STATE_ACTIVE, align 4
  %119 = call i32 @g_raid3_ndisks(%struct.g_raid3_softc* %117, i32 %118)
  %120 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %121 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @G_RAID3_DEBUG(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %116, i32 %119, i32 %122)
  %124 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %125 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @G_RAID3_DEVICE_STATE_DEGRADED, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %91
  %130 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %2, align 8
  %131 = call i32 @g_raid3_sync_start(%struct.g_raid3_softc* %130)
  br label %132

132:                                              ; preds = %129, %91
  ret void
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local %struct.g_provider* @g_new_providerf(i32, i8*, i32) #1

declare dso_local i32 @g_error_provider(%struct.g_provider*, i32) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32 @G_RAID3_DEBUG(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @g_raid3_ndisks(%struct.g_raid3_softc*, i32) #1

declare dso_local i32 @g_raid3_sync_start(%struct.g_raid3_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
