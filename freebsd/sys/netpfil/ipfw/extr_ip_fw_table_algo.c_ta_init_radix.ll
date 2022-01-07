; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_init_radix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_init_radix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.table_info = type { i32, i32, i32 }
%struct.radix_cfg = type { i32 }

@OFF_LEN_INET = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OFF_LEN_INET6 = common dso_local global i32 0, align 4
@M_IPFW = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ta_lookup_radix = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, i8**, %struct.table_info*, i8*, i32)* @ta_init_radix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ta_init_radix(%struct.ip_fw_chain* %0, i8** %1, %struct.table_info* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ip_fw_chain*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.table_info*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.radix_cfg*, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %7, align 8
  store i8** %1, i8*** %8, align 8
  store %struct.table_info* %2, %struct.table_info** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.table_info*, %struct.table_info** %9, align 8
  %14 = getelementptr inbounds %struct.table_info, %struct.table_info* %13, i32 0, i32 1
  %15 = load i32, i32* @OFF_LEN_INET, align 4
  %16 = call i32 @rn_inithead(i32* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @ENOMEM, align 4
  store i32 %19, i32* %6, align 4
  br label %43

20:                                               ; preds = %5
  %21 = load %struct.table_info*, %struct.table_info** %9, align 8
  %22 = getelementptr inbounds %struct.table_info, %struct.table_info* %21, i32 0, i32 2
  %23 = load i32, i32* @OFF_LEN_INET6, align 4
  %24 = call i32 @rn_inithead(i32* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  %27 = load %struct.table_info*, %struct.table_info** %9, align 8
  %28 = getelementptr inbounds %struct.table_info, %struct.table_info* %27, i32 0, i32 1
  %29 = call i32 @rn_detachhead(i32* %28)
  %30 = load i32, i32* @ENOMEM, align 4
  store i32 %30, i32* %6, align 4
  br label %43

31:                                               ; preds = %20
  %32 = load i32, i32* @M_IPFW, align 4
  %33 = load i32, i32* @M_WAITOK, align 4
  %34 = load i32, i32* @M_ZERO, align 4
  %35 = or i32 %33, %34
  %36 = call %struct.radix_cfg* @malloc(i32 4, i32 %32, i32 %35)
  store %struct.radix_cfg* %36, %struct.radix_cfg** %12, align 8
  %37 = load %struct.radix_cfg*, %struct.radix_cfg** %12, align 8
  %38 = bitcast %struct.radix_cfg* %37 to i8*
  %39 = load i8**, i8*** %8, align 8
  store i8* %38, i8** %39, align 8
  %40 = load i32, i32* @ta_lookup_radix, align 4
  %41 = load %struct.table_info*, %struct.table_info** %9, align 8
  %42 = getelementptr inbounds %struct.table_info, %struct.table_info* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %31, %26, %18
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i32 @rn_inithead(i32*, i32) #1

declare dso_local i32 @rn_detachhead(i32*) #1

declare dso_local %struct.radix_cfg* @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
