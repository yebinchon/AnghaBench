; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_fill_metadata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_fill_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid3_disk = type { i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__, i32, %struct.g_raid3_softc* }
%struct.TYPE_4__ = type { %struct.g_provider* }
%struct.g_provider = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.g_raid3_softc = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.g_raid3_metadata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@G_RAID3_MAGIC = common dso_local global i32 0, align 4
@G_RAID3_VERSION = common dso_local global i32 0, align 4
@G_RAID3_DEVICE_FLAG_MASK = common dso_local global i32 0, align 4
@G_RAID3_DISK_FLAG_MASK = common dso_local global i32 0, align 4
@G_RAID3_DISK_STATE_SYNCHRONIZING = common dso_local global i64 0, align 8
@G_RAID3_DISK_FLAG_HARDCODED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g_raid3_fill_metadata(%struct.g_raid3_disk* %0, %struct.g_raid3_metadata* %1) #0 {
  %3 = alloca %struct.g_raid3_disk*, align 8
  %4 = alloca %struct.g_raid3_metadata*, align 8
  %5 = alloca %struct.g_raid3_softc*, align 8
  %6 = alloca %struct.g_provider*, align 8
  store %struct.g_raid3_disk* %0, %struct.g_raid3_disk** %3, align 8
  store %struct.g_raid3_metadata* %1, %struct.g_raid3_metadata** %4, align 8
  %7 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %8 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %7, i32 0, i32 5
  %9 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %8, align 8
  store %struct.g_raid3_softc* %9, %struct.g_raid3_softc** %5, align 8
  %10 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %4, align 8
  %11 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %10, i32 0, i32 14
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @G_RAID3_MAGIC, align 4
  %14 = call i32 @strlcpy(i32 %12, i32 %13, i32 4)
  %15 = load i32, i32* @G_RAID3_VERSION, align 4
  %16 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %4, align 8
  %17 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %16, i32 0, i32 13
  store i32 %15, i32* %17, align 4
  %18 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %4, align 8
  %19 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %18, i32 0, i32 12
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %22 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @strlcpy(i32 %20, i32 %23, i32 4)
  %25 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %26 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %4, align 8
  %29 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %28, i32 0, i32 11
  store i32 %27, i32* %29, align 4
  %30 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %31 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %4, align 8
  %34 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %36 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %4, align 8
  %39 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %38, i32 0, i32 10
  store i32 %37, i32* %39, align 4
  %40 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %41 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %4, align 8
  %44 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %43, i32 0, i32 9
  store i32 %42, i32* %44, align 4
  %45 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %46 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %4, align 8
  %49 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %48, i32 0, i32 8
  store i32 %47, i32* %49, align 4
  %50 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %51 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @G_RAID3_DEVICE_FLAG_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %4, align 8
  %56 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %58 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %4, align 8
  %61 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %60, i32 0, i32 7
  store i32 %59, i32* %61, align 4
  %62 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %63 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %4, align 8
  %67 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %66, i32 0, i32 6
  store i32 %65, i32* %67, align 4
  %68 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %69 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @G_RAID3_DISK_FLAG_MASK, align 4
  %72 = and i32 %70, %71
  %73 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %4, align 8
  %74 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %76 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @G_RAID3_DISK_STATE_SYNCHRONIZING, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %2
  %81 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %4, align 8
  %82 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %81, i32 0, i32 3
  store i32 0, i32* %82, align 4
  br label %95

83:                                               ; preds = %2
  %84 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %85 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %5, align 8
  %89 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %90, 1
  %92 = sdiv i32 %87, %91
  %93 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %4, align 8
  %94 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %83, %80
  %96 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %97 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %96, i32 0, i32 2
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = icmp ne %struct.TYPE_4__* %98, null
  br i1 %99, label %100, label %113

100:                                              ; preds = %95
  %101 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %102 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %101, i32 0, i32 2
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load %struct.g_provider*, %struct.g_provider** %104, align 8
  %106 = icmp ne %struct.g_provider* %105, null
  br i1 %106, label %107, label %113

107:                                              ; preds = %100
  %108 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %109 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %108, i32 0, i32 2
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load %struct.g_provider*, %struct.g_provider** %111, align 8
  store %struct.g_provider* %112, %struct.g_provider** %6, align 8
  br label %114

113:                                              ; preds = %100, %95
  store %struct.g_provider* null, %struct.g_provider** %6, align 8
  br label %114

114:                                              ; preds = %113, %107
  %115 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  %116 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @G_RAID3_DISK_FLAG_HARDCODED, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %114
  %122 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %123 = icmp ne %struct.g_provider* %122, null
  br i1 %123, label %124, label %132

124:                                              ; preds = %121
  %125 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %4, align 8
  %126 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %129 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @strlcpy(i32 %127, i32 %130, i32 4)
  br label %137

132:                                              ; preds = %121, %114
  %133 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %4, align 8
  %134 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @bzero(i32 %135, i32 4)
  br label %137

137:                                              ; preds = %132, %124
  %138 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %139 = icmp ne %struct.g_provider* %138, null
  br i1 %139, label %140, label %146

140:                                              ; preds = %137
  %141 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %142 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %4, align 8
  %145 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %144, i32 0, i32 4
  store i32 %143, i32* %145, align 4
  br label %149

146:                                              ; preds = %137
  %147 = load %struct.g_raid3_metadata*, %struct.g_raid3_metadata** %4, align 8
  %148 = getelementptr inbounds %struct.g_raid3_metadata, %struct.g_raid3_metadata* %147, i32 0, i32 4
  store i32 0, i32* %148, align 4
  br label %149

149:                                              ; preds = %146, %140
  ret void
}

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @bzero(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
