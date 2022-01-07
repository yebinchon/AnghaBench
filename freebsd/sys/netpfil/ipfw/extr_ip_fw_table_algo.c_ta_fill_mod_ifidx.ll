; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_fill_mod_ifidx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_fill_mod_ifidx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_info = type { i32 }
%struct.mod_item = type { i64, i32 }
%struct.iftable_cfg = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.table_info*, i8*, i64*)* @ta_fill_mod_ifidx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ta_fill_mod_ifidx(i8* %0, %struct.table_info* %1, i8* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.table_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.mod_item*, align 8
  %11 = alloca %struct.iftable_cfg*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.table_info* %1, %struct.table_info** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %struct.mod_item*
  store %struct.mod_item* %13, %struct.mod_item** %10, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.iftable_cfg*
  store %struct.iftable_cfg* %15, %struct.iftable_cfg** %11, align 8
  %16 = load %struct.iftable_cfg*, %struct.iftable_cfg** %11, align 8
  %17 = getelementptr inbounds %struct.iftable_cfg, %struct.iftable_cfg* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.mod_item*, %struct.mod_item** %10, align 8
  %20 = getelementptr inbounds %struct.mod_item, %struct.mod_item* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %18, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i64*, i64** %9, align 8
  store i64 0, i64* %24, align 8
  store i32 0, i32* %5, align 4
  br label %39

25:                                               ; preds = %4
  %26 = load %struct.mod_item*, %struct.mod_item** %10, align 8
  %27 = getelementptr inbounds %struct.mod_item, %struct.mod_item* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.iftable_cfg*, %struct.iftable_cfg** %11, align 8
  %30 = getelementptr inbounds %struct.iftable_cfg, %struct.iftable_cfg* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.iftable_cfg*, %struct.iftable_cfg** %11, align 8
  %33 = getelementptr inbounds %struct.iftable_cfg, %struct.iftable_cfg* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = trunc i64 %36 to i32
  %38 = call i32 @memcpy(i32 %28, i32 %31, i32 %37)
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %25, %23
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
