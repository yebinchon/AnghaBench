; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_bsd.c_g_part_bsd_resize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_bsd.c_g_part_bsd_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.g_part_entry = type { i64, i64 }
%struct.g_part_parms = type { i64 }
%struct.g_part_bsd_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.g_provider = type { i32 }
%struct.TYPE_6__ = type { %struct.g_provider* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_part_table*, %struct.g_part_entry*, %struct.g_part_parms*)* @g_part_bsd_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_part_bsd_resize(%struct.g_part_table* %0, %struct.g_part_entry* %1, %struct.g_part_parms* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_part_table*, align 8
  %6 = alloca %struct.g_part_entry*, align 8
  %7 = alloca %struct.g_part_parms*, align 8
  %8 = alloca %struct.g_part_bsd_entry*, align 8
  %9 = alloca %struct.g_provider*, align 8
  store %struct.g_part_table* %0, %struct.g_part_table** %5, align 8
  store %struct.g_part_entry* %1, %struct.g_part_entry** %6, align 8
  store %struct.g_part_parms* %2, %struct.g_part_parms** %7, align 8
  %10 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %11 = icmp eq %struct.g_part_entry* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %3
  %13 = load %struct.g_part_table*, %struct.g_part_table** %5, align 8
  %14 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = call %struct.TYPE_6__* @LIST_FIRST(i32* %16)
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.g_provider*, %struct.g_provider** %18, align 8
  store %struct.g_provider* %19, %struct.g_provider** %9, align 8
  %20 = load %struct.g_part_table*, %struct.g_part_table** %5, align 8
  %21 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %22 = call i32 @bsd_set_rawsize(%struct.g_part_table* %20, %struct.g_provider* %21)
  store i32 0, i32* %4, align 4
  br label %42

23:                                               ; preds = %3
  %24 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %25 = bitcast %struct.g_part_entry* %24 to %struct.g_part_bsd_entry*
  store %struct.g_part_bsd_entry* %25, %struct.g_part_bsd_entry** %8, align 8
  %26 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %27 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.g_part_parms*, %struct.g_part_parms** %7, align 8
  %30 = getelementptr inbounds %struct.g_part_parms, %struct.g_part_parms* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = sub nsw i64 %32, 1
  %34 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %35 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load %struct.g_part_parms*, %struct.g_part_parms** %7, align 8
  %37 = getelementptr inbounds %struct.g_part_parms, %struct.g_part_parms* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.g_part_bsd_entry*, %struct.g_part_bsd_entry** %8, align 8
  %40 = getelementptr inbounds %struct.g_part_bsd_entry, %struct.g_part_bsd_entry* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i64 %38, i64* %41, align 8
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %23, %12
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.TYPE_6__* @LIST_FIRST(i32*) #1

declare dso_local i32 @bsd_set_rawsize(%struct.g_part_table*, %struct.g_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
