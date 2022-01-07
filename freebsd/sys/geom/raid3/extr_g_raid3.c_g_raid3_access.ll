; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_provider = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.g_raid3_softc* }
%struct.g_raid3_softc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Access request for %s: r%dw%de%d.\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"NULL softc (provider=%s).\00", align 1
@G_RAID3_DEVICE_FLAG_DESTROY = common dso_local global i32 0, align 4
@G_RAID3_DISK_STATE_ACTIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@G_RAID3_DEVICE_FLAG_DESTROYING = common dso_local global i32 0, align 4
@g_raid3_destroy_delayed = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_provider*, i32, i32, i32)* @g_raid3_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid3_access(%struct.g_provider* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.g_raid3_softc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.g_provider* %0, %struct.g_provider** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %14, align 4
  %15 = call i32 (...) @g_topology_assert()
  %16 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %17 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @G_RAID3_DEBUG(i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i32 %20, i32 %21)
  %23 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %24 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %23, i32 0, i32 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %26, align 8
  store %struct.g_raid3_softc* %27, %struct.g_raid3_softc** %10, align 8
  %28 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %10, align 8
  %29 = icmp eq %struct.g_raid3_softc* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %4
  %31 = load i32, i32* %7, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = icmp sle i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = icmp sle i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %144

40:                                               ; preds = %36, %33, %30, %4
  %41 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %10, align 8
  %42 = icmp ne %struct.g_raid3_softc* %41, null
  %43 = zext i1 %42 to i32
  %44 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %45 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8*
  %49 = call i32 @KASSERT(i32 %43, i8* %48)
  %50 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %51 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %52, %53
  store i32 %54, i32* %11, align 4
  %55 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %56 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %57, %58
  store i32 %59, i32* %12, align 4
  %60 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %61 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %62, %63
  store i32 %64, i32* %13, align 4
  %65 = call i32 (...) @g_topology_unlock()
  %66 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %10, align 8
  %67 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %66, i32 0, i32 2
  %68 = call i32 @sx_xlock(i32* %67)
  %69 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %10, align 8
  %70 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @G_RAID3_DEVICE_FLAG_DESTROY, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %40
  %76 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %10, align 8
  %77 = load i32, i32* @G_RAID3_DISK_STATE_ACTIVE, align 4
  %78 = call i32 @g_raid3_ndisks(%struct.g_raid3_softc* %76, i32 %77)
  %79 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %10, align 8
  %80 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %81, 1
  %83 = icmp slt i32 %78, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %75, %40
  %85 = load i32, i32* %7, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %8, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %9, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90, %87, %84
  %94 = load i32, i32* @ENXIO, align 4
  store i32 %94, i32* %14, align 4
  br label %95

95:                                               ; preds = %93, %90
  br label %138

96:                                               ; preds = %75
  %97 = load i32, i32* %12, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %10, align 8
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @g_raid3_idle(%struct.g_raid3_softc* %100, i32 %101)
  br label %103

103:                                              ; preds = %99, %96
  %104 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %10, align 8
  %105 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @G_RAID3_DEVICE_FLAG_DESTROYING, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %137

110:                                              ; preds = %103
  %111 = load i32, i32* %7, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %8, align 4
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %9, align 4
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %116, %113, %110
  %120 = load i32, i32* @ENXIO, align 4
  store i32 %120, i32* %14, align 4
  br label %138

121:                                              ; preds = %116
  %122 = load i32, i32* %11, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %136

124:                                              ; preds = %121
  %125 = load i32, i32* %12, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %124
  %128 = load i32, i32* %13, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %127
  %131 = load i32, i32* @g_raid3_destroy_delayed, align 4
  %132 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %10, align 8
  %133 = load i32, i32* @M_WAITOK, align 4
  %134 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %10, align 8
  %135 = call i32 @g_post_event(i32 %131, %struct.g_raid3_softc* %132, i32 %133, %struct.g_raid3_softc* %134, i32* null)
  br label %136

136:                                              ; preds = %130, %127, %124, %121
  br label %137

137:                                              ; preds = %136, %103
  br label %138

138:                                              ; preds = %137, %119, %95
  %139 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %10, align 8
  %140 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %139, i32 0, i32 2
  %141 = call i32 @sx_xunlock(i32* %140)
  %142 = call i32 (...) @g_topology_lock()
  %143 = load i32, i32* %14, align 4
  store i32 %143, i32* %5, align 4
  br label %144

144:                                              ; preds = %138, %39
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @G_RAID3_DEBUG(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @g_raid3_ndisks(%struct.g_raid3_softc*, i32) #1

declare dso_local i32 @g_raid3_idle(%struct.g_raid3_softc*, i32) #1

declare dso_local i32 @g_post_event(i32, %struct.g_raid3_softc*, i32, %struct.g_raid3_softc*, i32*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @g_topology_lock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
