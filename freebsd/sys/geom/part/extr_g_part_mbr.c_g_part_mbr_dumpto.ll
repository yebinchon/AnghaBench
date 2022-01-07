; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_mbr.c_g_part_mbr_dumpto.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_mbr.c_g_part_mbr_dumpto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { i32 }
%struct.g_part_entry = type { i32 }
%struct.g_part_mbr_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@DOSPTYP_386BSD = common dso_local global i64 0, align 8
@DOSPTYP_LINSWP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_part_table*, %struct.g_part_entry*)* @g_part_mbr_dumpto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_part_mbr_dumpto(%struct.g_part_table* %0, %struct.g_part_entry* %1) #0 {
  %3 = alloca %struct.g_part_table*, align 8
  %4 = alloca %struct.g_part_entry*, align 8
  %5 = alloca %struct.g_part_mbr_entry*, align 8
  store %struct.g_part_table* %0, %struct.g_part_table** %3, align 8
  store %struct.g_part_entry* %1, %struct.g_part_entry** %4, align 8
  %6 = load %struct.g_part_entry*, %struct.g_part_entry** %4, align 8
  %7 = bitcast %struct.g_part_entry* %6 to %struct.g_part_mbr_entry*
  store %struct.g_part_mbr_entry* %7, %struct.g_part_mbr_entry** %5, align 8
  %8 = load %struct.g_part_mbr_entry*, %struct.g_part_mbr_entry** %5, align 8
  %9 = getelementptr inbounds %struct.g_part_mbr_entry, %struct.g_part_mbr_entry* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DOSPTYP_386BSD, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load %struct.g_part_mbr_entry*, %struct.g_part_mbr_entry** %5, align 8
  %16 = getelementptr inbounds %struct.g_part_mbr_entry, %struct.g_part_mbr_entry* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DOSPTYP_LINSWP, align 8
  %20 = icmp eq i64 %18, %19
  br label %21

21:                                               ; preds = %14, %2
  %22 = phi i1 [ true, %2 ], [ %20, %14 ]
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 1, i32 0
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
