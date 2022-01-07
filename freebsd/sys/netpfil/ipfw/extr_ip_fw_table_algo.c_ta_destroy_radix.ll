; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_destroy_radix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_destroy_radix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_info = type { i64, i64 }
%struct.radix_cfg = type { i32 }
%struct.radix_node_head = type { i32, i32 (i32*, i32, %struct.radix_node_head*)* }

@flush_radix_entry = common dso_local global i32 0, align 4
@M_IPFW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.table_info*)* @ta_destroy_radix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ta_destroy_radix(i8* %0, %struct.table_info* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.table_info*, align 8
  %5 = alloca %struct.radix_cfg*, align 8
  %6 = alloca %struct.radix_node_head*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.table_info* %1, %struct.table_info** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.radix_cfg*
  store %struct.radix_cfg* %8, %struct.radix_cfg** %5, align 8
  %9 = load %struct.table_info*, %struct.table_info** %4, align 8
  %10 = getelementptr inbounds %struct.table_info, %struct.table_info* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.radix_node_head*
  store %struct.radix_node_head* %12, %struct.radix_node_head** %6, align 8
  %13 = load %struct.radix_node_head*, %struct.radix_node_head** %6, align 8
  %14 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %13, i32 0, i32 1
  %15 = load i32 (i32*, i32, %struct.radix_node_head*)*, i32 (i32*, i32, %struct.radix_node_head*)** %14, align 8
  %16 = load %struct.radix_node_head*, %struct.radix_node_head** %6, align 8
  %17 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %16, i32 0, i32 0
  %18 = load i32, i32* @flush_radix_entry, align 4
  %19 = load %struct.radix_node_head*, %struct.radix_node_head** %6, align 8
  %20 = call i32 %15(i32* %17, i32 %18, %struct.radix_node_head* %19)
  %21 = load %struct.table_info*, %struct.table_info** %4, align 8
  %22 = getelementptr inbounds %struct.table_info, %struct.table_info* %21, i32 0, i32 1
  %23 = call i32 @rn_detachhead(i64* %22)
  %24 = load %struct.table_info*, %struct.table_info** %4, align 8
  %25 = getelementptr inbounds %struct.table_info, %struct.table_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.radix_node_head*
  store %struct.radix_node_head* %27, %struct.radix_node_head** %6, align 8
  %28 = load %struct.radix_node_head*, %struct.radix_node_head** %6, align 8
  %29 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %28, i32 0, i32 1
  %30 = load i32 (i32*, i32, %struct.radix_node_head*)*, i32 (i32*, i32, %struct.radix_node_head*)** %29, align 8
  %31 = load %struct.radix_node_head*, %struct.radix_node_head** %6, align 8
  %32 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %31, i32 0, i32 0
  %33 = load i32, i32* @flush_radix_entry, align 4
  %34 = load %struct.radix_node_head*, %struct.radix_node_head** %6, align 8
  %35 = call i32 %30(i32* %32, i32 %33, %struct.radix_node_head* %34)
  %36 = load %struct.table_info*, %struct.table_info** %4, align 8
  %37 = getelementptr inbounds %struct.table_info, %struct.table_info* %36, i32 0, i32 0
  %38 = call i32 @rn_detachhead(i64* %37)
  %39 = load %struct.radix_cfg*, %struct.radix_cfg** %5, align 8
  %40 = load i32, i32* @M_IPFW, align 4
  %41 = call i32 @free(%struct.radix_cfg* %39, i32 %40)
  ret void
}

declare dso_local i32 @rn_detachhead(i64*) #1

declare dso_local i32 @free(%struct.radix_cfg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
