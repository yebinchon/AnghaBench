; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part.c_g_part_wither.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part.c_g_part_wither.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_geom = type { %struct.g_part_table* }
%struct.g_part_table = type { i32 }
%struct.g_part_entry = type { %struct.g_provider* }
%struct.g_provider = type { i32* }

@gpe_entry = common dso_local global i32 0, align 4
@M_GEOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_geom*, i32)* @g_part_wither to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_part_wither(%struct.g_geom* %0, i32 %1) #0 {
  %3 = alloca %struct.g_geom*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_part_entry*, align 8
  %6 = alloca %struct.g_part_table*, align 8
  %7 = alloca %struct.g_provider*, align 8
  store %struct.g_geom* %0, %struct.g_geom** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %9 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %8, i32 0, i32 0
  %10 = load %struct.g_part_table*, %struct.g_part_table** %9, align 8
  store %struct.g_part_table* %10, %struct.g_part_table** %6, align 8
  %11 = load %struct.g_part_table*, %struct.g_part_table** %6, align 8
  %12 = icmp ne %struct.g_part_table* %11, null
  br i1 %12, label %13, label %48

13:                                               ; preds = %2
  %14 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %15 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %14, i32 0, i32 0
  store %struct.g_part_table* null, %struct.g_part_table** %15, align 8
  br label %16

16:                                               ; preds = %38, %13
  %17 = load %struct.g_part_table*, %struct.g_part_table** %6, align 8
  %18 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %17, i32 0, i32 0
  %19 = call %struct.g_part_entry* @LIST_FIRST(i32* %18)
  store %struct.g_part_entry* %19, %struct.g_part_entry** %5, align 8
  %20 = icmp ne %struct.g_part_entry* %19, null
  br i1 %20, label %21, label %41

21:                                               ; preds = %16
  %22 = load %struct.g_part_entry*, %struct.g_part_entry** %5, align 8
  %23 = load i32, i32* @gpe_entry, align 4
  %24 = call i32 @LIST_REMOVE(%struct.g_part_entry* %22, i32 %23)
  %25 = load %struct.g_part_entry*, %struct.g_part_entry** %5, align 8
  %26 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %25, i32 0, i32 0
  %27 = load %struct.g_provider*, %struct.g_provider** %26, align 8
  store %struct.g_provider* %27, %struct.g_provider** %7, align 8
  %28 = load %struct.g_part_entry*, %struct.g_part_entry** %5, align 8
  %29 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %28, i32 0, i32 0
  store %struct.g_provider* null, %struct.g_provider** %29, align 8
  %30 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %31 = icmp ne %struct.g_provider* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %34 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  %35 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @g_wither_provider(%struct.g_provider* %35, i32 %36)
  br label %38

38:                                               ; preds = %32, %21
  %39 = load %struct.g_part_entry*, %struct.g_part_entry** %5, align 8
  %40 = call i32 @g_free(%struct.g_part_entry* %39)
  br label %16

41:                                               ; preds = %16
  %42 = load %struct.g_part_table*, %struct.g_part_table** %6, align 8
  %43 = call i32 @G_PART_DESTROY(%struct.g_part_table* %42, i32* null)
  %44 = load %struct.g_part_table*, %struct.g_part_table** %6, align 8
  %45 = ptrtoint %struct.g_part_table* %44 to i32
  %46 = load i32, i32* @M_GEOM, align 4
  %47 = call i32 @kobj_delete(i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %41, %2
  %49 = load %struct.g_geom*, %struct.g_geom** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @g_wither_geom(%struct.g_geom* %49, i32 %50)
  ret void
}

declare dso_local %struct.g_part_entry* @LIST_FIRST(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.g_part_entry*, i32) #1

declare dso_local i32 @g_wither_provider(%struct.g_provider*, i32) #1

declare dso_local i32 @g_free(%struct.g_part_entry*) #1

declare dso_local i32 @G_PART_DESTROY(%struct.g_part_table*, i32*) #1

declare dso_local i32 @kobj_delete(i32, i32) #1

declare dso_local i32 @g_wither_geom(%struct.g_geom*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
