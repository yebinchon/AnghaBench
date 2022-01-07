; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_fill_metadata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_fill_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_mirror_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.g_mirror_disk = type { i32, i64, %struct.TYPE_6__*, %struct.TYPE_4__, i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.g_mirror_metadata = type { i32, i32, i64, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@G_MIRROR_MAGIC = common dso_local global i32 0, align 4
@G_MIRROR_VERSION = common dso_local global i32 0, align 4
@G_MIRROR_DEVICE_FLAG_MASK = common dso_local global i32 0, align 4
@G_MIRROR_DISK_FLAG_MASK = common dso_local global i32 0, align 4
@G_MIRROR_DISK_STATE_SYNCHRONIZING = common dso_local global i64 0, align 8
@G_MIRROR_DISK_FLAG_HARDCODED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g_mirror_fill_metadata(%struct.g_mirror_softc* %0, %struct.g_mirror_disk* %1, %struct.g_mirror_metadata* %2) #0 {
  %4 = alloca %struct.g_mirror_softc*, align 8
  %5 = alloca %struct.g_mirror_disk*, align 8
  %6 = alloca %struct.g_mirror_metadata*, align 8
  store %struct.g_mirror_softc* %0, %struct.g_mirror_softc** %4, align 8
  store %struct.g_mirror_disk* %1, %struct.g_mirror_disk** %5, align 8
  store %struct.g_mirror_metadata* %2, %struct.g_mirror_metadata** %6, align 8
  %7 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %6, align 8
  %8 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %7, i32 0, i32 17
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @G_MIRROR_MAGIC, align 4
  %11 = call i32 @strlcpy(i32 %9, i32 %10, i32 4)
  %12 = load i32, i32* @G_MIRROR_VERSION, align 4
  %13 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %6, align 8
  %14 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %13, i32 0, i32 16
  store i32 %12, i32* %14, align 4
  %15 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %6, align 8
  %16 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %15, i32 0, i32 15
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %4, align 8
  %19 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @strlcpy(i32 %17, i32 %20, i32 4)
  %22 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %4, align 8
  %23 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %6, align 8
  %26 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %25, i32 0, i32 14
  store i32 %24, i32* %26, align 4
  %27 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %4, align 8
  %28 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %6, align 8
  %31 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %30, i32 0, i32 13
  store i32 %29, i32* %31, align 8
  %32 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %4, align 8
  %33 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %6, align 8
  %36 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %35, i32 0, i32 12
  store i32 %34, i32* %36, align 4
  %37 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %4, align 8
  %38 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %6, align 8
  %41 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %40, i32 0, i32 11
  store i32 %39, i32* %41, align 8
  %42 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %4, align 8
  %43 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %6, align 8
  %46 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %45, i32 0, i32 10
  store i32 %44, i32* %46, align 4
  %47 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %4, align 8
  %48 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %6, align 8
  %51 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %50, i32 0, i32 9
  store i32 %49, i32* %51, align 8
  %52 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %4, align 8
  %53 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %6, align 8
  %56 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %55, i32 0, i32 8
  store i32 %54, i32* %56, align 4
  %57 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %4, align 8
  %58 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @G_MIRROR_DEVICE_FLAG_MASK, align 4
  %61 = and i32 %59, %60
  %62 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %6, align 8
  %63 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %6, align 8
  %65 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @bzero(i32 %66, i32 4)
  %68 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %5, align 8
  %69 = icmp eq %struct.g_mirror_disk* %68, null
  br i1 %69, label %70, label %84

70:                                               ; preds = %3
  %71 = call i32 (...) @arc4random()
  %72 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %6, align 8
  %73 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %72, i32 0, i32 7
  store i32 %71, i32* %73, align 8
  %74 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %6, align 8
  %75 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %74, i32 0, i32 6
  store i64 0, i64* %75, align 8
  %76 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %6, align 8
  %77 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %76, i32 0, i32 5
  store i64 0, i64* %77, align 8
  %78 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %6, align 8
  %79 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %78, i32 0, i32 1
  store i32 0, i32* %79, align 4
  %80 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %6, align 8
  %81 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %80, i32 0, i32 4
  store i64 0, i64* %81, align 8
  %82 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %6, align 8
  %83 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %82, i32 0, i32 2
  store i64 0, i64* %83, align 8
  br label %152

84:                                               ; preds = %3
  %85 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %5, align 8
  %86 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %6, align 8
  %89 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %88, i32 0, i32 7
  store i32 %87, i32* %89, align 8
  %90 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %5, align 8
  %91 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %6, align 8
  %94 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %93, i32 0, i32 6
  store i64 %92, i64* %94, align 8
  %95 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %5, align 8
  %96 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %6, align 8
  %100 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %99, i32 0, i32 5
  store i64 %98, i64* %100, align 8
  %101 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %5, align 8
  %102 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @G_MIRROR_DISK_FLAG_MASK, align 4
  %105 = and i32 %103, %104
  %106 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %6, align 8
  %107 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %5, align 8
  %109 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @G_MIRROR_DISK_STATE_SYNCHRONIZING, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %84
  %114 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %5, align 8
  %115 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %6, align 8
  %119 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %118, i32 0, i32 4
  store i64 %117, i64* %119, align 8
  br label %123

120:                                              ; preds = %84
  %121 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %6, align 8
  %122 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %121, i32 0, i32 4
  store i64 0, i64* %122, align 8
  br label %123

123:                                              ; preds = %120, %113
  %124 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %5, align 8
  %125 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @G_MIRROR_DISK_FLAG_HARDCODED, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %142

130:                                              ; preds = %123
  %131 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %6, align 8
  %132 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %5, align 8
  %135 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %134, i32 0, i32 2
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @strlcpy(i32 %133, i32 %140, i32 4)
  br label %142

142:                                              ; preds = %130, %123
  %143 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %5, align 8
  %144 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %143, i32 0, i32 2
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %6, align 8
  %151 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %150, i32 0, i32 2
  store i64 %149, i64* %151, align 8
  br label %152

152:                                              ; preds = %142, %70
  ret void
}

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @arc4random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
