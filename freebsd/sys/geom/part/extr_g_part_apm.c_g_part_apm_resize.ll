; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_apm.c_g_part_apm_resize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_apm.c_g_part_apm_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.g_part_entry = type { i64, i64 }
%struct.g_part_parms = type { i64 }
%struct.g_part_apm_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.g_provider = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.g_provider* }

@UINT32_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_part_table*, %struct.g_part_entry*, %struct.g_part_parms*)* @g_part_apm_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_part_apm_resize(%struct.g_part_table* %0, %struct.g_part_entry* %1, %struct.g_part_parms* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_part_table*, align 8
  %6 = alloca %struct.g_part_entry*, align 8
  %7 = alloca %struct.g_part_parms*, align 8
  %8 = alloca %struct.g_part_apm_entry*, align 8
  %9 = alloca %struct.g_provider*, align 8
  store %struct.g_part_table* %0, %struct.g_part_table** %5, align 8
  store %struct.g_part_entry* %1, %struct.g_part_entry** %6, align 8
  store %struct.g_part_parms* %2, %struct.g_part_parms** %7, align 8
  %10 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %11 = icmp eq %struct.g_part_entry* %10, null
  br i1 %11, label %12, label %32

12:                                               ; preds = %3
  %13 = load %struct.g_part_table*, %struct.g_part_table** %5, align 8
  %14 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = call %struct.TYPE_6__* @LIST_FIRST(i32* %16)
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.g_provider*, %struct.g_provider** %18, align 8
  store %struct.g_provider* %19, %struct.g_provider** %9, align 8
  %20 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %21 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  %24 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sdiv i32 %22, %25
  %27 = load i32, i32* @UINT32_MAX, align 4
  %28 = call i64 @MIN(i32 %26, i32 %27)
  %29 = sub nsw i64 %28, 1
  %30 = load %struct.g_part_table*, %struct.g_part_table** %5, align 8
  %31 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  store i32 0, i32* %4, align 4
  br label %51

32:                                               ; preds = %3
  %33 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %34 = bitcast %struct.g_part_entry* %33 to %struct.g_part_apm_entry*
  store %struct.g_part_apm_entry* %34, %struct.g_part_apm_entry** %8, align 8
  %35 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %36 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.g_part_parms*, %struct.g_part_parms** %7, align 8
  %39 = getelementptr inbounds %struct.g_part_parms, %struct.g_part_parms* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = sub nsw i64 %41, 1
  %43 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %44 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load %struct.g_part_parms*, %struct.g_part_parms** %7, align 8
  %46 = getelementptr inbounds %struct.g_part_parms, %struct.g_part_parms* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.g_part_apm_entry*, %struct.g_part_apm_entry** %8, align 8
  %49 = getelementptr inbounds %struct.g_part_apm_entry, %struct.g_part_apm_entry* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i64 %47, i64* %50, align 8
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %32, %12
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.TYPE_6__* @LIST_FIRST(i32*) #1

declare dso_local i64 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
