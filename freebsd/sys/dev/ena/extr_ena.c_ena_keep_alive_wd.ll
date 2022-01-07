; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_keep_alive_wd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_keep_alive_wd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_admin_aenq_entry = type { i32 }
%struct.ena_adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ena_admin_aenq_keep_alive_desc = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ena_admin_aenq_entry*)* @ena_keep_alive_wd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_keep_alive_wd(i8* %0, %struct.ena_admin_aenq_entry* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ena_admin_aenq_entry*, align 8
  %5 = alloca %struct.ena_adapter*, align 8
  %6 = alloca %struct.ena_admin_aenq_keep_alive_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.ena_admin_aenq_entry* %1, %struct.ena_admin_aenq_entry** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.ena_adapter*
  store %struct.ena_adapter* %10, %struct.ena_adapter** %5, align 8
  %11 = load %struct.ena_admin_aenq_entry*, %struct.ena_admin_aenq_entry** %4, align 8
  %12 = bitcast %struct.ena_admin_aenq_entry* %11 to %struct.ena_admin_aenq_keep_alive_desc*
  store %struct.ena_admin_aenq_keep_alive_desc* %12, %struct.ena_admin_aenq_keep_alive_desc** %6, align 8
  %13 = load %struct.ena_admin_aenq_keep_alive_desc*, %struct.ena_admin_aenq_keep_alive_desc** %6, align 8
  %14 = getelementptr inbounds %struct.ena_admin_aenq_keep_alive_desc, %struct.ena_admin_aenq_keep_alive_desc* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = shl i32 %16, 32
  %18 = load %struct.ena_admin_aenq_keep_alive_desc*, %struct.ena_admin_aenq_keep_alive_desc** %6, align 8
  %19 = getelementptr inbounds %struct.ena_admin_aenq_keep_alive_desc, %struct.ena_admin_aenq_keep_alive_desc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %17, %20
  store i32 %21, i32* %8, align 4
  %22 = load %struct.ena_adapter*, %struct.ena_adapter** %5, align 8
  %23 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @counter_u64_zero(i32 %25)
  %27 = load %struct.ena_adapter*, %struct.ena_adapter** %5, align 8
  %28 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @counter_u64_add(i32 %30, i32 %31)
  %33 = call i32 (...) @getsbinuptime()
  store i32 %33, i32* %7, align 4
  %34 = load %struct.ena_adapter*, %struct.ena_adapter** %5, align 8
  %35 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %34, i32 0, i32 0
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @atomic_store_rel_64(i32* %35, i32 %36)
  ret void
}

declare dso_local i32 @counter_u64_zero(i32) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i32 @getsbinuptime(...) #1

declare dso_local i32 @atomic_store_rel_64(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
