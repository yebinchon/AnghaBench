; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1e.c_g_raid_tr_raid1e_rebuild_some.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1e.c_g_raid_tr_raid1e_rebuild_some.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_tr_object = type { %struct.g_raid_volume* }
%struct.g_raid_volume = type { i32, i64, i32*, %struct.g_raid_softc* }
%struct.g_raid_softc = type { i32 }
%struct.g_raid_tr_raid1e_object = type { i32, i64, i64, i32, %struct.bio, %struct.g_raid_subdisk* }
%struct.bio = type { i32*, i32, i32, i32, i64, i64 }
%struct.g_raid_subdisk = type { i64, i64, i32, i32 }

@TR_RAID1E_F_DOING_SOME = common dso_local global i32 0, align 4
@g_raid1e_rebuild_slab = common dso_local global i64 0, align 8
@N = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Skipping rebuild for range %ju - %ju\00", align 1
@BIO_READ = common dso_local global i32 0, align 4
@G_RAID_BIO_FLAG_SYNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Queueing rebuild read\00", align 1
@TR_RAID1E_F_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_raid_tr_object*)* @g_raid_tr_raid1e_rebuild_some to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_tr_raid1e_rebuild_some(%struct.g_raid_tr_object* %0) #0 {
  %2 = alloca %struct.g_raid_tr_object*, align 8
  %3 = alloca %struct.g_raid_tr_raid1e_object*, align 8
  %4 = alloca %struct.g_raid_softc*, align 8
  %5 = alloca %struct.g_raid_volume*, align 8
  %6 = alloca %struct.g_raid_subdisk*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.g_raid_tr_object* %0, %struct.g_raid_tr_object** %2, align 8
  %16 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %2, align 8
  %17 = bitcast %struct.g_raid_tr_object* %16 to %struct.g_raid_tr_raid1e_object*
  store %struct.g_raid_tr_raid1e_object* %17, %struct.g_raid_tr_raid1e_object** %3, align 8
  %18 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %3, align 8
  %19 = getelementptr inbounds %struct.g_raid_tr_raid1e_object, %struct.g_raid_tr_raid1e_object* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @TR_RAID1E_F_DOING_SOME, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %216

25:                                               ; preds = %1
  %26 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %2, align 8
  %27 = getelementptr inbounds %struct.g_raid_tr_object, %struct.g_raid_tr_object* %26, i32 0, i32 0
  %28 = load %struct.g_raid_volume*, %struct.g_raid_volume** %27, align 8
  store %struct.g_raid_volume* %28, %struct.g_raid_volume** %5, align 8
  %29 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %30 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %29, i32 0, i32 3
  %31 = load %struct.g_raid_softc*, %struct.g_raid_softc** %30, align 8
  store %struct.g_raid_softc* %31, %struct.g_raid_softc** %4, align 8
  %32 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %3, align 8
  %33 = getelementptr inbounds %struct.g_raid_tr_raid1e_object, %struct.g_raid_tr_raid1e_object* %32, i32 0, i32 5
  %34 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %33, align 8
  store %struct.g_raid_subdisk* %34, %struct.g_raid_subdisk** %6, align 8
  br label %35

35:                                               ; preds = %25, %100
  %36 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %6, align 8
  %37 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %6, align 8
  %40 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp sge i64 %38, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %2, align 8
  %45 = call i32 @g_raid_tr_raid1e_rebuild_finish(%struct.g_raid_tr_object* %44)
  br label %216

46:                                               ; preds = %35
  %47 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %48 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %6, align 8
  %49 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %6, align 8
  %52 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @P2V(%struct.g_raid_volume* %47, i32 %50, i64 %53, i64* %9, i32* %14)
  %55 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @V2P(%struct.g_raid_volume* %55, i64 %56, i32* %13, i64* %11, i64* %12)
  %58 = load i64, i64* @g_raid1e_rebuild_slab, align 8
  %59 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %6, align 8
  %60 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %6, align 8
  %63 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %61, %64
  %66 = call i64 @MIN(i64 %58, i64 %65)
  store i64 %66, i64* %8, align 8
  %67 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %68 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @N, align 4
  %71 = srem i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %46
  %74 = load i64, i64* %8, align 8
  %75 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %76 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %12, align 8
  %79 = sub nsw i64 %77, %78
  %80 = call i64 @MIN(i64 %74, i64 %79)
  store i64 %80, i64* %8, align 8
  br label %81

81:                                               ; preds = %73, %46
  %82 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %83 = load i32, i32* %13, align 4
  %84 = load i64, i64* %11, align 8
  %85 = load i64, i64* %12, align 8
  %86 = add nsw i64 %84, %85
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @g_raid_tr_raid1e_select_read_disk(%struct.g_raid_volume* %82, i32 %83, i64 %86, i64 %87, i32 0)
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %81
  %92 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %2, align 8
  %93 = call i32 @g_raid_tr_raid1e_rebuild_abort(%struct.g_raid_tr_object* %92)
  br label %216

94:                                               ; preds = %81
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  br label %116

99:                                               ; preds = %94
  br label %100

100:                                              ; preds = %99
  %101 = load %struct.g_raid_softc*, %struct.g_raid_softc** %4, align 8
  %102 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %6, align 8
  %103 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %6, align 8
  %106 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %8, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @G_RAID_DEBUG1(i32 3, %struct.g_raid_softc* %101, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %104, i64 %109)
  %111 = load i64, i64* %8, align 8
  %112 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %6, align 8
  %113 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, %111
  store i64 %115, i64* %113, align 8
  br label %35

116:                                              ; preds = %98
  %117 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %3, align 8
  %118 = getelementptr inbounds %struct.g_raid_tr_raid1e_object, %struct.g_raid_tr_raid1e_object* %117, i32 0, i32 4
  store %struct.bio* %118, %struct.bio** %7, align 8
  %119 = load %struct.bio*, %struct.bio** %7, align 8
  %120 = call i32 @memset(%struct.bio* %119, i32 0, i32 40)
  %121 = load i64, i64* %11, align 8
  %122 = load i64, i64* %12, align 8
  %123 = add nsw i64 %121, %122
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %15, align 4
  %126 = add nsw i32 %124, %125
  %127 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %128 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp sge i32 %126, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %116
  %132 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %133 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  br label %136

135:                                              ; preds = %116
  br label %136

136:                                              ; preds = %135, %131
  %137 = phi i64 [ %134, %131 ], [ 0, %135 ]
  %138 = add nsw i64 %123, %137
  %139 = load %struct.bio*, %struct.bio** %7, align 8
  %140 = getelementptr inbounds %struct.bio, %struct.bio* %139, i32 0, i32 5
  store i64 %138, i64* %140, align 8
  %141 = load i64, i64* %8, align 8
  %142 = load %struct.bio*, %struct.bio** %7, align 8
  %143 = getelementptr inbounds %struct.bio, %struct.bio* %142, i32 0, i32 4
  store i64 %141, i64* %143, align 8
  %144 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %3, align 8
  %145 = getelementptr inbounds %struct.g_raid_tr_raid1e_object, %struct.g_raid_tr_raid1e_object* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.bio*, %struct.bio** %7, align 8
  %148 = getelementptr inbounds %struct.bio, %struct.bio* %147, i32 0, i32 3
  store i32 %146, i32* %148, align 8
  %149 = load i32, i32* @BIO_READ, align 4
  %150 = load %struct.bio*, %struct.bio** %7, align 8
  %151 = getelementptr inbounds %struct.bio, %struct.bio* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 4
  %152 = load i32, i32* @G_RAID_BIO_FLAG_SYNC, align 4
  %153 = load %struct.bio*, %struct.bio** %7, align 8
  %154 = getelementptr inbounds %struct.bio, %struct.bio* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 8
  %155 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %156 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* %15, align 4
  %160 = add nsw i32 %158, %159
  %161 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %162 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = srem i32 %160, %163
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %157, i64 %165
  %167 = load %struct.bio*, %struct.bio** %7, align 8
  %168 = getelementptr inbounds %struct.bio, %struct.bio* %167, i32 0, i32 0
  store i32* %166, i32** %168, align 8
  %169 = load %struct.bio*, %struct.bio** %7, align 8
  %170 = call i32 @G_RAID_LOGREQ(i32 3, %struct.bio* %169, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %171 = load i64, i64* %12, align 8
  %172 = load i64, i64* %8, align 8
  %173 = add nsw i64 %171, %172
  %174 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %175 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = icmp sgt i64 %173, %176
  br i1 %177, label %178, label %192

178:                                              ; preds = %136
  %179 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %180 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %6, align 8
  %181 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %6, align 8
  %184 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* %8, align 8
  %187 = add nsw i64 %185, %186
  %188 = call i32 @P2V(%struct.g_raid_volume* %179, i32 %182, i64 %187, i64* %10, i32* %14)
  %189 = load i64, i64* %10, align 8
  %190 = load i64, i64* %9, align 8
  %191 = sub nsw i64 %189, %190
  store i64 %191, i64* %8, align 8
  br label %192

192:                                              ; preds = %178, %136
  %193 = load i32, i32* @TR_RAID1E_F_DOING_SOME, align 4
  %194 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %3, align 8
  %195 = getelementptr inbounds %struct.g_raid_tr_raid1e_object, %struct.g_raid_tr_raid1e_object* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 8
  %198 = load i32, i32* @TR_RAID1E_F_LOCKED, align 4
  %199 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %3, align 8
  %200 = getelementptr inbounds %struct.g_raid_tr_raid1e_object, %struct.g_raid_tr_raid1e_object* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = or i32 %201, %198
  store i32 %202, i32* %200, align 8
  %203 = load i64, i64* %9, align 8
  %204 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %3, align 8
  %205 = getelementptr inbounds %struct.g_raid_tr_raid1e_object, %struct.g_raid_tr_raid1e_object* %204, i32 0, i32 2
  store i64 %203, i64* %205, align 8
  %206 = load i64, i64* %8, align 8
  %207 = load %struct.g_raid_tr_raid1e_object*, %struct.g_raid_tr_raid1e_object** %3, align 8
  %208 = getelementptr inbounds %struct.g_raid_tr_raid1e_object, %struct.g_raid_tr_raid1e_object* %207, i32 0, i32 1
  store i64 %206, i64* %208, align 8
  %209 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %6, align 8
  %210 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = load i64, i64* %9, align 8
  %213 = load i64, i64* %8, align 8
  %214 = load %struct.bio*, %struct.bio** %7, align 8
  %215 = call i32 @g_raid_lock_range(i32 %211, i64 %212, i64 %213, i32* null, %struct.bio* %214)
  br label %216

216:                                              ; preds = %192, %91, %43, %24
  ret void
}

declare dso_local i32 @g_raid_tr_raid1e_rebuild_finish(%struct.g_raid_tr_object*) #1

declare dso_local i32 @P2V(%struct.g_raid_volume*, i32, i64, i64*, i32*) #1

declare dso_local i32 @V2P(%struct.g_raid_volume*, i64, i32*, i64*, i64*) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @g_raid_tr_raid1e_select_read_disk(%struct.g_raid_volume*, i32, i64, i64, i32) #1

declare dso_local i32 @g_raid_tr_raid1e_rebuild_abort(%struct.g_raid_tr_object*) #1

declare dso_local i32 @G_RAID_DEBUG1(i32, %struct.g_raid_softc*, i8*, i64, i64) #1

declare dso_local i32 @memset(%struct.bio*, i32, i32) #1

declare dso_local i32 @G_RAID_LOGREQ(i32, %struct.bio*, i8*) #1

declare dso_local i32 @g_raid_lock_range(i32, i64, i64, i32*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
