; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_modify_ifidx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_modify_ifidx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_info = type { i8* }
%struct.mod_item = type { i8*, i32 }
%struct.iftable_cfg = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.table_info*, i8*, i32)* @ta_modify_ifidx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ta_modify_ifidx(i8* %0, %struct.table_info* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.table_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mod_item*, align 8
  %10 = alloca %struct.iftable_cfg*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.table_info* %1, %struct.table_info** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.mod_item*
  store %struct.mod_item* %13, %struct.mod_item** %9, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.iftable_cfg*
  store %struct.iftable_cfg* %15, %struct.iftable_cfg** %10, align 8
  %16 = load %struct.iftable_cfg*, %struct.iftable_cfg** %10, align 8
  %17 = getelementptr inbounds %struct.iftable_cfg, %struct.iftable_cfg* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %11, align 8
  %19 = load %struct.mod_item*, %struct.mod_item** %9, align 8
  %20 = getelementptr inbounds %struct.mod_item, %struct.mod_item* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.iftable_cfg*, %struct.iftable_cfg** %10, align 8
  %23 = getelementptr inbounds %struct.iftable_cfg, %struct.iftable_cfg* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load %struct.mod_item*, %struct.mod_item** %9, align 8
  %25 = getelementptr inbounds %struct.mod_item, %struct.mod_item* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.iftable_cfg*, %struct.iftable_cfg** %10, align 8
  %28 = getelementptr inbounds %struct.iftable_cfg, %struct.iftable_cfg* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.iftable_cfg*, %struct.iftable_cfg** %10, align 8
  %30 = getelementptr inbounds %struct.iftable_cfg, %struct.iftable_cfg* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.table_info*, %struct.table_info** %6, align 8
  %33 = getelementptr inbounds %struct.table_info, %struct.table_info* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = load %struct.mod_item*, %struct.mod_item** %9, align 8
  %36 = getelementptr inbounds %struct.mod_item, %struct.mod_item* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
