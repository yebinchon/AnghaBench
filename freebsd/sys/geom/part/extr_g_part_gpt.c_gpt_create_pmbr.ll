; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_gpt.c_gpt_create_pmbr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_gpt.c_gpt_create_pmbr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_gpt_table = type { i64 }
%struct.g_provider = type { i32, i32 }

@DOSPARTOFF = common dso_local global i64 0, align 8
@DOSPARTSIZE = common dso_local global i32 0, align 4
@NDOSPART = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@DOSMAGICOFFSET = common dso_local global i64 0, align 8
@DOSMAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_part_gpt_table*, %struct.g_provider*)* @gpt_create_pmbr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpt_create_pmbr(%struct.g_part_gpt_table* %0, %struct.g_provider* %1) #0 {
  %3 = alloca %struct.g_part_gpt_table*, align 8
  %4 = alloca %struct.g_provider*, align 8
  store %struct.g_part_gpt_table* %0, %struct.g_part_gpt_table** %3, align 8
  store %struct.g_provider* %1, %struct.g_provider** %4, align 8
  %5 = load %struct.g_part_gpt_table*, %struct.g_part_gpt_table** %3, align 8
  %6 = getelementptr inbounds %struct.g_part_gpt_table, %struct.g_part_gpt_table* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @DOSPARTOFF, align 8
  %9 = add nsw i64 %7, %8
  %10 = load i32, i32* @DOSPARTSIZE, align 4
  %11 = load i32, i32* @NDOSPART, align 4
  %12 = mul nsw i32 %10, %11
  %13 = call i32 @bzero(i64 %9, i32 %12)
  %14 = load %struct.g_part_gpt_table*, %struct.g_part_gpt_table** %3, align 8
  %15 = getelementptr inbounds %struct.g_part_gpt_table, %struct.g_part_gpt_table* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %18 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %21 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sdiv i32 %19, %22
  %24 = sub nsw i32 %23, 1
  %25 = load i32, i32* @UINT32_MAX, align 4
  %26 = call i32 @MIN(i32 %24, i32 %25)
  %27 = call i32 @gpt_write_mbr_entry(i64 %16, i32 0, i32 238, i32 1, i32 %26)
  %28 = load %struct.g_part_gpt_table*, %struct.g_part_gpt_table** %3, align 8
  %29 = getelementptr inbounds %struct.g_part_gpt_table, %struct.g_part_gpt_table* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DOSMAGICOFFSET, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i32, i32* @DOSMAGIC, align 4
  %34 = call i32 @le16enc(i64 %32, i32 %33)
  ret void
}

declare dso_local i32 @bzero(i64, i32) #1

declare dso_local i32 @gpt_write_mbr_entry(i64, i32, i32, i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @le16enc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
