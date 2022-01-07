; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_mbr.c_g_part_mbr_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_mbr.c_g_part_mbr_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { i64, i32, i32 }
%struct.g_part_parms = type { %struct.g_provider* }
%struct.g_provider = type { i32, i32 }
%struct.g_part_mbr_table = type { i64 }

@MBRSIZE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@DOSMAGICOFFSET = common dso_local global i64 0, align 8
@DOSMAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_part_table*, %struct.g_part_parms*)* @g_part_mbr_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_part_mbr_create(%struct.g_part_table* %0, %struct.g_part_parms* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_part_table*, align 8
  %5 = alloca %struct.g_part_parms*, align 8
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca %struct.g_part_mbr_table*, align 8
  store %struct.g_part_table* %0, %struct.g_part_table** %4, align 8
  store %struct.g_part_parms* %1, %struct.g_part_parms** %5, align 8
  %8 = load %struct.g_part_parms*, %struct.g_part_parms** %5, align 8
  %9 = getelementptr inbounds %struct.g_part_parms, %struct.g_part_parms* %8, i32 0, i32 0
  %10 = load %struct.g_provider*, %struct.g_provider** %9, align 8
  store %struct.g_provider* %10, %struct.g_provider** %6, align 8
  %11 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %12 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MBRSIZE, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOSPC, align 4
  store i32 %17, i32* %3, align 4
  br label %45

18:                                               ; preds = %2
  %19 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %20 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %23 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %25 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %28 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %26, %29
  %31 = load i32, i32* @UINT32_MAX, align 4
  %32 = call i64 @MIN(i32 %30, i32 %31)
  %33 = sub nsw i64 %32, 1
  %34 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %35 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %37 = bitcast %struct.g_part_table* %36 to %struct.g_part_mbr_table*
  store %struct.g_part_mbr_table* %37, %struct.g_part_mbr_table** %7, align 8
  %38 = load %struct.g_part_mbr_table*, %struct.g_part_mbr_table** %7, align 8
  %39 = getelementptr inbounds %struct.g_part_mbr_table, %struct.g_part_mbr_table* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DOSMAGICOFFSET, align 8
  %42 = add nsw i64 %40, %41
  %43 = load i32, i32* @DOSMAGIC, align 4
  %44 = call i32 @le16enc(i64 %42, i32 %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %18, %16
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @MIN(i32, i32) #1

declare dso_local i32 @le16enc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
