; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_gpt.c_g_part_gpt_resize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_gpt.c_g_part_gpt_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { i32 }
%struct.g_part_entry = type { i64, i64 }
%struct.g_part_parms = type { i64 }
%struct.g_part_gpt_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_part_table*, %struct.g_part_entry*, %struct.g_part_parms*)* @g_part_gpt_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_part_gpt_resize(%struct.g_part_table* %0, %struct.g_part_entry* %1, %struct.g_part_parms* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_part_table*, align 8
  %6 = alloca %struct.g_part_entry*, align 8
  %7 = alloca %struct.g_part_parms*, align 8
  %8 = alloca %struct.g_part_gpt_entry*, align 8
  store %struct.g_part_table* %0, %struct.g_part_table** %5, align 8
  store %struct.g_part_entry* %1, %struct.g_part_entry** %6, align 8
  store %struct.g_part_parms* %2, %struct.g_part_parms** %7, align 8
  %9 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %10 = icmp eq %struct.g_part_entry* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load %struct.g_part_table*, %struct.g_part_table** %5, align 8
  %13 = call i32 @g_part_gpt_recover(%struct.g_part_table* %12)
  store i32 %13, i32* %4, align 4
  br label %33

14:                                               ; preds = %3
  %15 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %16 = bitcast %struct.g_part_entry* %15 to %struct.g_part_gpt_entry*
  store %struct.g_part_gpt_entry* %16, %struct.g_part_gpt_entry** %8, align 8
  %17 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %18 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.g_part_parms*, %struct.g_part_parms** %7, align 8
  %21 = getelementptr inbounds %struct.g_part_parms, %struct.g_part_parms* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = sub nsw i64 %23, 1
  %25 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %26 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %28 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.g_part_gpt_entry*, %struct.g_part_gpt_entry** %8, align 8
  %31 = getelementptr inbounds %struct.g_part_gpt_entry, %struct.g_part_gpt_entry* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i64 %29, i64* %32, align 8
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %14, %11
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @g_part_gpt_recover(%struct.g_part_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
