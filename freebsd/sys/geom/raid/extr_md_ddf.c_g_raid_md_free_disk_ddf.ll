; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_ddf.c_g_raid_md_free_disk_ddf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_ddf.c_g_raid_md_free_disk_ddf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_md_object = type { i32 }
%struct.g_raid_disk = type { i32* }
%struct.g_raid_md_ddf_perdisk = type { i32 }

@M_MD_DDF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_raid_md_object*, %struct.g_raid_disk*)* @g_raid_md_free_disk_ddf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid_md_free_disk_ddf(%struct.g_raid_md_object* %0, %struct.g_raid_disk* %1) #0 {
  %3 = alloca %struct.g_raid_md_object*, align 8
  %4 = alloca %struct.g_raid_disk*, align 8
  %5 = alloca %struct.g_raid_md_ddf_perdisk*, align 8
  store %struct.g_raid_md_object* %0, %struct.g_raid_md_object** %3, align 8
  store %struct.g_raid_disk* %1, %struct.g_raid_disk** %4, align 8
  %6 = load %struct.g_raid_disk*, %struct.g_raid_disk** %4, align 8
  %7 = getelementptr inbounds %struct.g_raid_disk, %struct.g_raid_disk* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = bitcast i32* %8 to %struct.g_raid_md_ddf_perdisk*
  store %struct.g_raid_md_ddf_perdisk* %9, %struct.g_raid_md_ddf_perdisk** %5, align 8
  %10 = load %struct.g_raid_md_ddf_perdisk*, %struct.g_raid_md_ddf_perdisk** %5, align 8
  %11 = getelementptr inbounds %struct.g_raid_md_ddf_perdisk, %struct.g_raid_md_ddf_perdisk* %10, i32 0, i32 0
  %12 = call i32 @ddf_meta_free(i32* %11)
  %13 = load %struct.g_raid_md_ddf_perdisk*, %struct.g_raid_md_ddf_perdisk** %5, align 8
  %14 = load i32, i32* @M_MD_DDF, align 4
  %15 = call i32 @free(%struct.g_raid_md_ddf_perdisk* %13, i32 %14)
  %16 = load %struct.g_raid_disk*, %struct.g_raid_disk** %4, align 8
  %17 = getelementptr inbounds %struct.g_raid_disk, %struct.g_raid_disk* %16, i32 0, i32 0
  store i32* null, i32** %17, align 8
  ret i32 0
}

declare dso_local i32 @ddf_meta_free(i32*) #1

declare dso_local i32 @free(%struct.g_raid_md_ddf_perdisk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
