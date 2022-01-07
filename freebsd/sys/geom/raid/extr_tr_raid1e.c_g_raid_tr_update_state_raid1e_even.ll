; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1e.c_g_raid_tr_update_state_raid1e_even.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1e.c_g_raid_tr_update_state_raid1e_even.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_volume = type { i32, %struct.g_raid_subdisk*, i32, %struct.g_raid_softc* }
%struct.g_raid_subdisk = type { i64, i64, i32, i32 }
%struct.g_raid_softc = type { i32 }

@G_RAID_VOLUME_S_OPTIMAL = common dso_local global i32 0, align 4
@N = common dso_local global i32 0, align 4
@G_RAID_SUBDISK_S_REBUILD = common dso_local global i64 0, align 8
@G_RAID_SUBDISK_S_RESYNC = common dso_local global i64 0, align 8
@G_RAID_SUBDISK_S_UNINITIALIZED = common dso_local global i64 0, align 8
@G_RAID_SUBDISK_S_ACTIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Promote subdisk %s:%d from %s to ACTIVE.\00", align 1
@G_RAID_SUBDISK_S_STALE = common dso_local global i64 0, align 8
@G_RAID_VOLUME_S_SUBOPTIMAL = common dso_local global i32 0, align 4
@G_RAID_VOLUME_S_DEGRADED = common dso_local global i32 0, align 4
@G_RAID_VOLUME_S_BROKEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_raid_volume*)* @g_raid_tr_update_state_raid1e_even to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid_tr_update_state_raid1e_even(%struct.g_raid_volume* %0) #0 {
  %2 = alloca %struct.g_raid_volume*, align 8
  %3 = alloca %struct.g_raid_softc*, align 8
  %4 = alloca %struct.g_raid_subdisk*, align 8
  %5 = alloca %struct.g_raid_subdisk*, align 8
  %6 = alloca %struct.g_raid_subdisk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.g_raid_volume* %0, %struct.g_raid_volume** %2, align 8
  %11 = load %struct.g_raid_volume*, %struct.g_raid_volume** %2, align 8
  %12 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %11, i32 0, i32 3
  %13 = load %struct.g_raid_softc*, %struct.g_raid_softc** %12, align 8
  store %struct.g_raid_softc* %13, %struct.g_raid_softc** %3, align 8
  %14 = load i32, i32* @G_RAID_VOLUME_S_OPTIMAL, align 4
  store i32 %14, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %198, %1
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.g_raid_volume*, %struct.g_raid_volume** %2, align 8
  %18 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @N, align 4
  %21 = sdiv i32 %19, %20
  %22 = icmp slt i32 %16, %21
  br i1 %22, label %23, label %201

23:                                               ; preds = %15
  %24 = load %struct.g_raid_volume*, %struct.g_raid_volume** %2, align 8
  %25 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %24, i32 0, i32 1
  %26 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @N, align 4
  %29 = mul nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %26, i64 %30
  store %struct.g_raid_subdisk* %31, %struct.g_raid_subdisk** %5, align 8
  store i32 1, i32* %8, align 4
  br label %32

32:                                               ; preds = %88, %23
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @N, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %91

36:                                               ; preds = %32
  %37 = load %struct.g_raid_volume*, %struct.g_raid_volume** %2, align 8
  %38 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %37, i32 0, i32 1
  %39 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @N, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %39, i64 %45
  store %struct.g_raid_subdisk* %46, %struct.g_raid_subdisk** %4, align 8
  %47 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  %48 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %51 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %49, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %36
  %55 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  store %struct.g_raid_subdisk* %55, %struct.g_raid_subdisk** %5, align 8
  br label %87

56:                                               ; preds = %36
  %57 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  %58 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %61 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %59, %62
  br i1 %63, label %64, label %86

64:                                               ; preds = %56
  %65 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  %66 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @G_RAID_SUBDISK_S_REBUILD, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %64
  %71 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  %72 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @G_RAID_SUBDISK_S_RESYNC, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %70, %64
  %77 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  %78 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %81 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp sgt i64 %79, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  store %struct.g_raid_subdisk* %85, %struct.g_raid_subdisk** %5, align 8
  br label %86

86:                                               ; preds = %84, %76, %70, %56
  br label %87

87:                                               ; preds = %86, %54
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %32

91:                                               ; preds = %32
  %92 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %93 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @G_RAID_SUBDISK_S_UNINITIALIZED, align 8
  %96 = icmp sge i64 %94, %95
  br i1 %96, label %97, label %126

97:                                               ; preds = %91
  %98 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %99 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @G_RAID_SUBDISK_S_ACTIVE, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %126

103:                                              ; preds = %97
  %104 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %105 = load %struct.g_raid_volume*, %struct.g_raid_volume** %2, align 8
  %106 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %109 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %112 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @g_raid_subdisk_state2str(i64 %113)
  %115 = call i32 @G_RAID_DEBUG1(i32 1, %struct.g_raid_softc* %104, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %107, i32 %110, i32 %114)
  %116 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %117 = load i64, i64* @G_RAID_SUBDISK_S_ACTIVE, align 8
  %118 = call i32 @g_raid_change_subdisk_state(%struct.g_raid_subdisk* %116, i64 %117)
  %119 = load %struct.g_raid_softc*, %struct.g_raid_softc** %3, align 8
  %120 = load %struct.g_raid_volume*, %struct.g_raid_volume** %2, align 8
  %121 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %122 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %123 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @g_raid_write_metadata(%struct.g_raid_softc* %119, %struct.g_raid_volume* %120, %struct.g_raid_subdisk* %121, i32 %124)
  br label %126

126:                                              ; preds = %103, %97, %91
  %127 = load %struct.g_raid_volume*, %struct.g_raid_volume** %2, align 8
  %128 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %127, i32 0, i32 1
  %129 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* @N, align 4
  %132 = mul nsw i32 %130, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %129, i64 %133
  store %struct.g_raid_subdisk* %134, %struct.g_raid_subdisk** %6, align 8
  store i32 1, i32* %8, align 4
  br label %135

135:                                              ; preds = %160, %126
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* @N, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %163

139:                                              ; preds = %135
  %140 = load %struct.g_raid_volume*, %struct.g_raid_volume** %2, align 8
  %141 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %140, i32 0, i32 1
  %142 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %141, align 8
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* @N, align 4
  %145 = mul nsw i32 %143, %144
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %145, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %142, i64 %148
  store %struct.g_raid_subdisk* %149, %struct.g_raid_subdisk** %4, align 8
  %150 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  %151 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %6, align 8
  %154 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp slt i64 %152, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %139
  %158 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %4, align 8
  store %struct.g_raid_subdisk* %158, %struct.g_raid_subdisk** %6, align 8
  br label %159

159:                                              ; preds = %157, %139
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %8, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %8, align 4
  br label %135

163:                                              ; preds = %135
  %164 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %6, align 8
  %165 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @G_RAID_SUBDISK_S_ACTIVE, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %163
  %170 = load i32, i32* @G_RAID_VOLUME_S_OPTIMAL, align 4
  store i32 %170, i32* %10, align 4
  br label %191

171:                                              ; preds = %163
  %172 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %6, align 8
  %173 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @G_RAID_SUBDISK_S_STALE, align 8
  %176 = icmp sge i64 %174, %175
  br i1 %176, label %177, label %179

177:                                              ; preds = %171
  %178 = load i32, i32* @G_RAID_VOLUME_S_SUBOPTIMAL, align 4
  store i32 %178, i32* %10, align 4
  br label %190

179:                                              ; preds = %171
  %180 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %181 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @G_RAID_SUBDISK_S_ACTIVE, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %179
  %186 = load i32, i32* @G_RAID_VOLUME_S_DEGRADED, align 4
  store i32 %186, i32* %10, align 4
  br label %189

187:                                              ; preds = %179
  %188 = load i32, i32* @G_RAID_VOLUME_S_BROKEN, align 4
  store i32 %188, i32* %10, align 4
  br label %189

189:                                              ; preds = %187, %185
  br label %190

190:                                              ; preds = %189, %177
  br label %191

191:                                              ; preds = %190, %169
  %192 = load i32, i32* %10, align 4
  %193 = load i32, i32* %9, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %197

195:                                              ; preds = %191
  %196 = load i32, i32* %10, align 4
  store i32 %196, i32* %9, align 4
  br label %197

197:                                              ; preds = %195, %191
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %7, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %7, align 4
  br label %15

201:                                              ; preds = %15
  %202 = load i32, i32* %9, align 4
  ret i32 %202
}

declare dso_local i32 @G_RAID_DEBUG1(i32, %struct.g_raid_softc*, i8*, i32, i32, i32) #1

declare dso_local i32 @g_raid_subdisk_state2str(i64) #1

declare dso_local i32 @g_raid_change_subdisk_state(%struct.g_raid_subdisk*, i64) #1

declare dso_local i32 @g_raid_write_metadata(%struct.g_raid_softc*, %struct.g_raid_volume*, %struct.g_raid_subdisk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
