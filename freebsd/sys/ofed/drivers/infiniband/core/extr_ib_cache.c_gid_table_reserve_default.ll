; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cache.c_gid_table_reserve_default.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_cache.c_gid_table_reserve_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_gid_table = type { i32, %struct.ib_gid_table_entry* }
%struct.ib_gid_table_entry = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@GID_TABLE_ENTRY_DEFAULT = common dso_local global i32 0, align 4
@BITS_PER_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, %struct.ib_gid_table*)* @gid_table_reserve_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gid_table_reserve_default(%struct.ib_device* %0, i32 %1, %struct.ib_gid_table* %2) #0 {
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_gid_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ib_gid_table_entry*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_gid_table* %2, %struct.ib_gid_table** %6, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @roce_gid_type_mask_support(%struct.ib_device* %12, i32 %13)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @hweight_long(i64 %15)
  store i32 %16, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %49, %3
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.ib_gid_table*, %struct.ib_gid_table** %6, align 8
  %24 = getelementptr inbounds %struct.ib_gid_table, %struct.ib_gid_table* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ult i32 %22, %25
  br label %27

27:                                               ; preds = %21, %17
  %28 = phi i1 [ false, %17 ], [ %26, %21 ]
  br i1 %28, label %29, label %52

29:                                               ; preds = %27
  %30 = load %struct.ib_gid_table*, %struct.ib_gid_table** %6, align 8
  %31 = getelementptr inbounds %struct.ib_gid_table, %struct.ib_gid_table* %30, i32 0, i32 1
  %32 = load %struct.ib_gid_table_entry*, %struct.ib_gid_table_entry** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ib_gid_table_entry, %struct.ib_gid_table_entry* %32, i64 %34
  store %struct.ib_gid_table_entry* %35, %struct.ib_gid_table_entry** %11, align 8
  %36 = load i32, i32* @GID_TABLE_ENTRY_DEFAULT, align 4
  %37 = load %struct.ib_gid_table_entry*, %struct.ib_gid_table_entry** %11, align 8
  %38 = getelementptr inbounds %struct.ib_gid_table_entry, %struct.ib_gid_table_entry* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* @BITS_PER_LONG, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @find_next_bit(i64* %8, i32 %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %10, align 4
  %46 = load %struct.ib_gid_table_entry*, %struct.ib_gid_table_entry** %11, align 8
  %47 = getelementptr inbounds %struct.ib_gid_table_entry, %struct.ib_gid_table_entry* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %44, i32* %48, align 4
  br label %49

49:                                               ; preds = %29
  %50 = load i32, i32* %7, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %17

52:                                               ; preds = %27
  ret i32 0
}

declare dso_local i64 @roce_gid_type_mask_support(%struct.ib_device*, i32) #1

declare dso_local i32 @hweight_long(i64) #1

declare dso_local i32 @find_next_bit(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
