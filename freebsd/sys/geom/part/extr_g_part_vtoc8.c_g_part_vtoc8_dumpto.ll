; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_vtoc8.c_g_part_vtoc8_dumpto.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_vtoc8.c_g_part_vtoc8_dumpto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { i32 }
%struct.g_part_entry = type { i32 }
%struct.g_part_vtoc8_table = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@VTOC_TAG_FREEBSD_SWAP = common dso_local global i64 0, align 8
@VTOC_TAG_SWAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_part_table*, %struct.g_part_entry*)* @g_part_vtoc8_dumpto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_part_vtoc8_dumpto(%struct.g_part_table* %0, %struct.g_part_entry* %1) #0 {
  %3 = alloca %struct.g_part_table*, align 8
  %4 = alloca %struct.g_part_entry*, align 8
  %5 = alloca %struct.g_part_vtoc8_table*, align 8
  %6 = alloca i64, align 8
  store %struct.g_part_table* %0, %struct.g_part_table** %3, align 8
  store %struct.g_part_entry* %1, %struct.g_part_entry** %4, align 8
  %7 = load %struct.g_part_table*, %struct.g_part_table** %3, align 8
  %8 = bitcast %struct.g_part_table* %7 to %struct.g_part_vtoc8_table*
  store %struct.g_part_vtoc8_table* %8, %struct.g_part_vtoc8_table** %5, align 8
  %9 = load %struct.g_part_vtoc8_table*, %struct.g_part_vtoc8_table** %5, align 8
  %10 = getelementptr inbounds %struct.g_part_vtoc8_table, %struct.g_part_vtoc8_table* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = load %struct.g_part_entry*, %struct.g_part_entry** %4, align 8
  %14 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call i64 @be16dec(i32* %19)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %2
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @VTOC_TAG_FREEBSD_SWAP, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @VTOC_TAG_SWAP, align 8
  %30 = icmp eq i64 %28, %29
  br label %31

31:                                               ; preds = %27, %23, %2
  %32 = phi i1 [ true, %23 ], [ true, %2 ], [ %30, %27 ]
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 1, i32 0
  ret i32 %34
}

declare dso_local i64 @be16dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
