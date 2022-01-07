; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_need_modify_fhash.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_need_modify_fhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_info = type { i32 }
%struct.fhash_cfg = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.table_info*, i32, i32*)* @ta_need_modify_fhash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ta_need_modify_fhash(i8* %0, %struct.table_info* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.table_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.fhash_cfg*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.table_info* %1, %struct.table_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.fhash_cfg*
  store %struct.fhash_cfg* %12, %struct.fhash_cfg** %10, align 8
  %13 = load %struct.fhash_cfg*, %struct.fhash_cfg** %10, align 8
  %14 = getelementptr inbounds %struct.fhash_cfg, %struct.fhash_cfg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.fhash_cfg*, %struct.fhash_cfg** %10, align 8
  %17 = getelementptr inbounds %struct.fhash_cfg, %struct.fhash_cfg* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %15, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %4
  %21 = load %struct.fhash_cfg*, %struct.fhash_cfg** %10, align 8
  %22 = getelementptr inbounds %struct.fhash_cfg, %struct.fhash_cfg* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %23, 65536
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.fhash_cfg*, %struct.fhash_cfg** %10, align 8
  %27 = getelementptr inbounds %struct.fhash_cfg, %struct.fhash_cfg* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %28, 2
  %30 = load i32*, i32** %9, align 8
  store i32 %29, i32* %30, align 4
  store i32 1, i32* %5, align 4
  br label %32

31:                                               ; preds = %20, %4
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %31, %25
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
