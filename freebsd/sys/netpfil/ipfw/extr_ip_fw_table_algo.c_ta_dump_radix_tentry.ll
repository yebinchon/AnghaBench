; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_dump_radix_tentry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_dump_radix_tentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_info = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i64, i32, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.radix_addr_entry = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.table_info*, i8*, %struct.TYPE_15__*)* @ta_dump_radix_tentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ta_dump_radix_tentry(i8* %0, %struct.table_info* %1, i8* %2, %struct.TYPE_15__* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.table_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.radix_addr_entry*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.table_info* %1, %struct.table_info** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %8, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.radix_addr_entry*
  store %struct.radix_addr_entry* %11, %struct.radix_addr_entry** %9, align 8
  %12 = load %struct.radix_addr_entry*, %struct.radix_addr_entry** %9, align 8
  %13 = getelementptr inbounds %struct.radix_addr_entry, %struct.radix_addr_entry* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @AF_INET, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %4
  %19 = load %struct.radix_addr_entry*, %struct.radix_addr_entry** %9, align 8
  %20 = getelementptr inbounds %struct.radix_addr_entry, %struct.radix_addr_entry* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 4
  %28 = load %struct.radix_addr_entry*, %struct.radix_addr_entry** %9, align 8
  %29 = getelementptr inbounds %struct.radix_addr_entry, %struct.radix_addr_entry* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load i64, i64* @AF_INET, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load %struct.radix_addr_entry*, %struct.radix_addr_entry** %9, align 8
  %37 = getelementptr inbounds %struct.radix_addr_entry, %struct.radix_addr_entry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  br label %42

42:                                               ; preds = %18, %4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
