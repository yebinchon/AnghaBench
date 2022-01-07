; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1e.c_g_raid_tr_update_state_raid1e_odd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1e.c_g_raid_tr_update_state_raid1e_odd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_volume = type { i32, %struct.g_raid_subdisk*, i32, %struct.g_raid_softc* }
%struct.g_raid_subdisk = type { i64, i64, i32, i32 }
%struct.g_raid_softc = type { i32 }

@G_RAID_SUBDISK_S_ACTIVE = common dso_local global i64 0, align 8
@G_RAID_VOLUME_S_OPTIMAL = common dso_local global i32 0, align 4
@G_RAID_SUBDISK_S_UNINITIALIZED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Promote subdisk %s:%d from %s to STALE.\00", align 1
@G_RAID_SUBDISK_S_STALE = common dso_local global i64 0, align 8
@N = common dso_local global i32 0, align 4
@G_RAID_SUBDISK_S_REBUILD = common dso_local global i64 0, align 8
@G_RAID_SUBDISK_S_RESYNC = common dso_local global i64 0, align 8
@G_RAID_VOLUME_S_SUBOPTIMAL = common dso_local global i32 0, align 4
@G_RAID_VOLUME_S_DEGRADED = common dso_local global i32 0, align 4
@G_RAID_VOLUME_S_BROKEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_raid_volume*)* @g_raid_tr_update_state_raid1e_odd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid_tr_update_state_raid1e_odd(%struct.g_raid_volume* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.g_raid_volume*, align 8
  %4 = alloca %struct.g_raid_softc*, align 8
  %5 = alloca %struct.g_raid_subdisk*, align 8
  %6 = alloca %struct.g_raid_subdisk*, align 8
  %7 = alloca %struct.g_raid_subdisk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.g_raid_volume* %0, %struct.g_raid_volume** %3, align 8
  %12 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %13 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %12, i32 0, i32 3
  %14 = load %struct.g_raid_softc*, %struct.g_raid_softc** %13, align 8
  store %struct.g_raid_softc* %14, %struct.g_raid_softc** %4, align 8
  %15 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %16 = load i64, i64* @G_RAID_SUBDISK_S_ACTIVE, align 8
  %17 = call i32 @g_raid_nsubdisks(%struct.g_raid_volume* %15, i64 %16)
  %18 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %19 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @G_RAID_VOLUME_S_OPTIMAL, align 4
  store i32 %23, i32* %2, align 4
  br label %202

24:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %67, %24
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %28 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %70

31:                                               ; preds = %25
  %32 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %33 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %32, i32 0, i32 1
  %34 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %34, i64 %36
  store %struct.g_raid_subdisk* %37, %struct.g_raid_subdisk** %5, align 8
  %38 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %39 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @G_RAID_SUBDISK_S_UNINITIALIZED, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %66

43:                                               ; preds = %31
  %44 = load %struct.g_raid_softc*, %struct.g_raid_softc** %4, align 8
  %45 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %46 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %49 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %52 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @g_raid_subdisk_state2str(i64 %53)
  %55 = call i32 @G_RAID_DEBUG1(i32 1, %struct.g_raid_softc* %44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %50, i32 %54)
  %56 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %57 = load i64, i64* @G_RAID_SUBDISK_S_STALE, align 8
  %58 = call i32 @g_raid_change_subdisk_state(%struct.g_raid_subdisk* %56, i64 %57)
  %59 = load %struct.g_raid_softc*, %struct.g_raid_softc** %4, align 8
  %60 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %61 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %62 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %63 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @g_raid_write_metadata(%struct.g_raid_softc* %59, %struct.g_raid_volume* %60, %struct.g_raid_subdisk* %61, i32 %64)
  br label %66

66:                                               ; preds = %43, %31
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %25

70:                                               ; preds = %25
  %71 = load i32, i32* @G_RAID_VOLUME_S_OPTIMAL, align 4
  store i32 %71, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %72

72:                                               ; preds = %197, %70
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %75 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %200

78:                                               ; preds = %72
  %79 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %80 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %79, i32 0, i32 1
  %81 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %81, i64 %83
  store %struct.g_raid_subdisk* %84, %struct.g_raid_subdisk** %6, align 8
  %85 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %86 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %85, i32 0, i32 1
  %87 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %87, i64 %89
  store %struct.g_raid_subdisk* %90, %struct.g_raid_subdisk** %7, align 8
  store i32 1, i32* %9, align 4
  br label %91

91:                                               ; preds = %159, %78
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @N, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %162

95:                                               ; preds = %91
  %96 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %97 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %96, i32 0, i32 1
  %98 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %99, %100
  %102 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %103 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = srem i32 %101, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %98, i64 %106
  store %struct.g_raid_subdisk* %107, %struct.g_raid_subdisk** %5, align 8
  %108 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %109 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %6, align 8
  %112 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp sgt i64 %110, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %95
  %116 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  store %struct.g_raid_subdisk* %116, %struct.g_raid_subdisk** %6, align 8
  br label %148

117:                                              ; preds = %95
  %118 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %119 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %6, align 8
  %122 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %120, %123
  br i1 %124, label %125, label %147

125:                                              ; preds = %117
  %126 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %127 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @G_RAID_SUBDISK_S_REBUILD, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %137, label %131

131:                                              ; preds = %125
  %132 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %133 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @G_RAID_SUBDISK_S_RESYNC, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %147

137:                                              ; preds = %131, %125
  %138 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %139 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %6, align 8
  %142 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp sgt i64 %140, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %137
  %146 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  store %struct.g_raid_subdisk* %146, %struct.g_raid_subdisk** %6, align 8
  br label %147

147:                                              ; preds = %145, %137, %131, %117
  br label %148

148:                                              ; preds = %147, %115
  %149 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  %150 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %7, align 8
  %153 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp slt i64 %151, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %148
  %157 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %5, align 8
  store %struct.g_raid_subdisk* %157, %struct.g_raid_subdisk** %7, align 8
  br label %158

158:                                              ; preds = %156, %148
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %9, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %9, align 4
  br label %91

162:                                              ; preds = %91
  %163 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %7, align 8
  %164 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @G_RAID_SUBDISK_S_ACTIVE, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %162
  %169 = load i32, i32* @G_RAID_VOLUME_S_OPTIMAL, align 4
  store i32 %169, i32* %11, align 4
  br label %190

170:                                              ; preds = %162
  %171 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %7, align 8
  %172 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @G_RAID_SUBDISK_S_STALE, align 8
  %175 = icmp sge i64 %173, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %170
  %177 = load i32, i32* @G_RAID_VOLUME_S_SUBOPTIMAL, align 4
  store i32 %177, i32* %11, align 4
  br label %189

178:                                              ; preds = %170
  %179 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %6, align 8
  %180 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @G_RAID_SUBDISK_S_STALE, align 8
  %183 = icmp sge i64 %181, %182
  br i1 %183, label %184, label %186

184:                                              ; preds = %178
  %185 = load i32, i32* @G_RAID_VOLUME_S_DEGRADED, align 4
  store i32 %185, i32* %11, align 4
  br label %188

186:                                              ; preds = %178
  %187 = load i32, i32* @G_RAID_VOLUME_S_BROKEN, align 4
  store i32 %187, i32* %11, align 4
  br label %188

188:                                              ; preds = %186, %184
  br label %189

189:                                              ; preds = %188, %176
  br label %190

190:                                              ; preds = %189, %168
  %191 = load i32, i32* %11, align 4
  %192 = load i32, i32* %10, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %190
  %195 = load i32, i32* %11, align 4
  store i32 %195, i32* %10, align 4
  br label %196

196:                                              ; preds = %194, %190
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %8, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %8, align 4
  br label %72

200:                                              ; preds = %72
  %201 = load i32, i32* %10, align 4
  store i32 %201, i32* %2, align 4
  br label %202

202:                                              ; preds = %200, %22
  %203 = load i32, i32* %2, align 4
  ret i32 %203
}

declare dso_local i32 @g_raid_nsubdisks(%struct.g_raid_volume*, i64) #1

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
