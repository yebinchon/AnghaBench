; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_init_ifidx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_init_ifidx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.table_info = type { i32, i8* }
%struct.iftable_cfg = type { i32, i8*, %struct.ip_fw_chain*, i32 }

@M_IPFW = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@DEFAULT_IFIDX_SIZE = common dso_local global i32 0, align 4
@ta_lookup_ifidx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, i8**, %struct.table_info*, i8*, i32)* @ta_init_ifidx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ta_init_ifidx(%struct.ip_fw_chain* %0, i8** %1, %struct.table_info* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.ip_fw_chain*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.table_info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.iftable_cfg*, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %6, align 8
  store i8** %1, i8*** %7, align 8
  store %struct.table_info* %2, %struct.table_info** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* @M_IPFW, align 4
  %13 = load i32, i32* @M_WAITOK, align 4
  %14 = load i32, i32* @M_ZERO, align 4
  %15 = or i32 %13, %14
  %16 = call i8* @malloc(i32 32, i32 %12, i32 %15)
  %17 = bitcast i8* %16 to %struct.iftable_cfg*
  store %struct.iftable_cfg* %17, %struct.iftable_cfg** %11, align 8
  %18 = load i32, i32* @DEFAULT_IFIDX_SIZE, align 4
  %19 = call i32 @ipfw_objhash_create(i32 %18)
  %20 = load %struct.iftable_cfg*, %struct.iftable_cfg** %11, align 8
  %21 = getelementptr inbounds %struct.iftable_cfg, %struct.iftable_cfg* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @DEFAULT_IFIDX_SIZE, align 4
  %23 = load %struct.iftable_cfg*, %struct.iftable_cfg** %11, align 8
  %24 = getelementptr inbounds %struct.iftable_cfg, %struct.iftable_cfg* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.iftable_cfg*, %struct.iftable_cfg** %11, align 8
  %26 = getelementptr inbounds %struct.iftable_cfg, %struct.iftable_cfg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = mul i64 4, %28
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* @M_IPFW, align 4
  %32 = load i32, i32* @M_WAITOK, align 4
  %33 = load i32, i32* @M_ZERO, align 4
  %34 = or i32 %32, %33
  %35 = call i8* @malloc(i32 %30, i32 %31, i32 %34)
  %36 = load %struct.iftable_cfg*, %struct.iftable_cfg** %11, align 8
  %37 = getelementptr inbounds %struct.iftable_cfg, %struct.iftable_cfg* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %6, align 8
  %39 = load %struct.iftable_cfg*, %struct.iftable_cfg** %11, align 8
  %40 = getelementptr inbounds %struct.iftable_cfg, %struct.iftable_cfg* %39, i32 0, i32 2
  store %struct.ip_fw_chain* %38, %struct.ip_fw_chain** %40, align 8
  %41 = load %struct.iftable_cfg*, %struct.iftable_cfg** %11, align 8
  %42 = bitcast %struct.iftable_cfg* %41 to i8*
  %43 = load i8**, i8*** %7, align 8
  store i8* %42, i8** %43, align 8
  %44 = load %struct.iftable_cfg*, %struct.iftable_cfg** %11, align 8
  %45 = getelementptr inbounds %struct.iftable_cfg, %struct.iftable_cfg* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.table_info*, %struct.table_info** %8, align 8
  %48 = getelementptr inbounds %struct.table_info, %struct.table_info* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* @ta_lookup_ifidx, align 4
  %50 = load %struct.table_info*, %struct.table_info** %8, align 8
  %51 = getelementptr inbounds %struct.table_info, %struct.table_info* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  ret i32 0
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @ipfw_objhash_create(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
