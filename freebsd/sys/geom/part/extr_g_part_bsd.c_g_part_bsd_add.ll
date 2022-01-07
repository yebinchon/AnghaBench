; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_bsd.c_g_part_bsd_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_bsd.c_g_part_bsd_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { i32 }
%struct.g_part_entry = type { i32 }
%struct.g_part_parms = type { i32, i32, i64, i32 }
%struct.g_part_bsd_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64, i64, i64, i32 }
%struct.g_part_bsd_table = type { i64 }

@G_PART_PARM_LABEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_part_table*, %struct.g_part_entry*, %struct.g_part_parms*)* @g_part_bsd_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_part_bsd_add(%struct.g_part_table* %0, %struct.g_part_entry* %1, %struct.g_part_parms* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_part_table*, align 8
  %6 = alloca %struct.g_part_entry*, align 8
  %7 = alloca %struct.g_part_parms*, align 8
  %8 = alloca %struct.g_part_bsd_entry*, align 8
  %9 = alloca %struct.g_part_bsd_table*, align 8
  store %struct.g_part_table* %0, %struct.g_part_table** %5, align 8
  store %struct.g_part_entry* %1, %struct.g_part_entry** %6, align 8
  store %struct.g_part_parms* %2, %struct.g_part_parms** %7, align 8
  %10 = load %struct.g_part_parms*, %struct.g_part_parms** %7, align 8
  %11 = getelementptr inbounds %struct.g_part_parms, %struct.g_part_parms* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @G_PART_PARM_LABEL, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %4, align 4
  br label %55

18:                                               ; preds = %3
  %19 = load %struct.g_part_entry*, %struct.g_part_entry** %6, align 8
  %20 = bitcast %struct.g_part_entry* %19 to %struct.g_part_bsd_entry*
  store %struct.g_part_bsd_entry* %20, %struct.g_part_bsd_entry** %8, align 8
  %21 = load %struct.g_part_table*, %struct.g_part_table** %5, align 8
  %22 = bitcast %struct.g_part_table* %21 to %struct.g_part_bsd_table*
  store %struct.g_part_bsd_table* %22, %struct.g_part_bsd_table** %9, align 8
  %23 = load %struct.g_part_parms*, %struct.g_part_parms** %7, align 8
  %24 = getelementptr inbounds %struct.g_part_parms, %struct.g_part_parms* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.g_part_bsd_entry*, %struct.g_part_bsd_entry** %8, align 8
  %27 = getelementptr inbounds %struct.g_part_bsd_entry, %struct.g_part_bsd_entry* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 5
  store i32 %25, i32* %28, align 8
  %29 = load %struct.g_part_parms*, %struct.g_part_parms** %7, align 8
  %30 = getelementptr inbounds %struct.g_part_parms, %struct.g_part_parms* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.g_part_bsd_table*, %struct.g_part_bsd_table** %9, align 8
  %33 = getelementptr inbounds %struct.g_part_bsd_table, %struct.g_part_bsd_table* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = load %struct.g_part_bsd_entry*, %struct.g_part_bsd_entry** %8, align 8
  %37 = getelementptr inbounds %struct.g_part_bsd_entry, %struct.g_part_bsd_entry* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 4
  store i64 %35, i64* %38, align 8
  %39 = load %struct.g_part_bsd_entry*, %struct.g_part_bsd_entry** %8, align 8
  %40 = getelementptr inbounds %struct.g_part_bsd_entry, %struct.g_part_bsd_entry* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  store i64 0, i64* %41, align 8
  %42 = load %struct.g_part_bsd_entry*, %struct.g_part_bsd_entry** %8, align 8
  %43 = getelementptr inbounds %struct.g_part_bsd_entry, %struct.g_part_bsd_entry* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load %struct.g_part_bsd_entry*, %struct.g_part_bsd_entry** %8, align 8
  %46 = getelementptr inbounds %struct.g_part_bsd_entry, %struct.g_part_bsd_entry* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.g_part_parms*, %struct.g_part_parms** %7, align 8
  %49 = getelementptr inbounds %struct.g_part_parms, %struct.g_part_parms* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.g_part_bsd_entry*, %struct.g_part_bsd_entry** %8, align 8
  %52 = getelementptr inbounds %struct.g_part_bsd_entry, %struct.g_part_bsd_entry* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = call i32 @bsd_parse_type(i32 %50, i32* %53)
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %18, %16
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @bsd_parse_type(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
