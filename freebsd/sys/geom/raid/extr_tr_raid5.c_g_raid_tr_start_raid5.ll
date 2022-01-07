; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid5.c_g_raid_tr_start_raid5.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid5.c_g_raid_tr_start_raid5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_tr_object = type { %struct.g_raid_volume* }
%struct.g_raid_volume = type { i32 }
%struct.g_raid_tr_raid5_object = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_raid_tr_object*)* @g_raid_tr_start_raid5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid_tr_start_raid5(%struct.g_raid_tr_object* %0) #0 {
  %2 = alloca %struct.g_raid_tr_object*, align 8
  %3 = alloca %struct.g_raid_tr_raid5_object*, align 8
  %4 = alloca %struct.g_raid_volume*, align 8
  store %struct.g_raid_tr_object* %0, %struct.g_raid_tr_object** %2, align 8
  %5 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %2, align 8
  %6 = bitcast %struct.g_raid_tr_object* %5 to %struct.g_raid_tr_raid5_object*
  store %struct.g_raid_tr_raid5_object* %6, %struct.g_raid_tr_raid5_object** %3, align 8
  %7 = load %struct.g_raid_tr_raid5_object*, %struct.g_raid_tr_raid5_object** %3, align 8
  %8 = getelementptr inbounds %struct.g_raid_tr_raid5_object, %struct.g_raid_tr_raid5_object* %7, i32 0, i32 0
  store i64 0, i64* %8, align 8
  %9 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %2, align 8
  %10 = getelementptr inbounds %struct.g_raid_tr_object, %struct.g_raid_tr_object* %9, i32 0, i32 0
  %11 = load %struct.g_raid_volume*, %struct.g_raid_volume** %10, align 8
  store %struct.g_raid_volume* %11, %struct.g_raid_volume** %4, align 8
  %12 = load %struct.g_raid_volume*, %struct.g_raid_volume** %4, align 8
  %13 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = load %struct.g_raid_volume*, %struct.g_raid_volume** %4, align 8
  %15 = call i32 @g_raid_tr_update_state_raid5(%struct.g_raid_volume* %14, i32* null)
  ret i32 0
}

declare dso_local i32 @g_raid_tr_update_state_raid5(%struct.g_raid_volume*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
