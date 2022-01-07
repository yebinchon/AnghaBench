; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_need_modify_chash.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_need_modify_chash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_info = type { i32 }
%struct.chash_cfg = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.table_info*, i32, i32*)* @ta_need_modify_chash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ta_need_modify_chash(i8* %0, %struct.table_info* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.table_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.chash_cfg*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.table_info* %1, %struct.table_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.chash_cfg*
  store %struct.chash_cfg* %13, %struct.chash_cfg** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.chash_cfg*, %struct.chash_cfg** %10, align 8
  %15 = getelementptr inbounds %struct.chash_cfg, %struct.chash_cfg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.chash_cfg*, %struct.chash_cfg** %10, align 8
  %18 = getelementptr inbounds %struct.chash_cfg, %struct.chash_cfg* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %16, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %4
  %22 = load %struct.chash_cfg*, %struct.chash_cfg** %10, align 8
  %23 = getelementptr inbounds %struct.chash_cfg, %struct.chash_cfg* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %24, 65536
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.chash_cfg*, %struct.chash_cfg** %10, align 8
  %28 = getelementptr inbounds %struct.chash_cfg, %struct.chash_cfg* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %29, 2
  %31 = shl i32 %30, 16
  %32 = load i32, i32* %11, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %26, %21, %4
  %35 = load %struct.chash_cfg*, %struct.chash_cfg** %10, align 8
  %36 = getelementptr inbounds %struct.chash_cfg, %struct.chash_cfg* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.chash_cfg*, %struct.chash_cfg** %10, align 8
  %39 = getelementptr inbounds %struct.chash_cfg, %struct.chash_cfg* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %37, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %34
  %43 = load %struct.chash_cfg*, %struct.chash_cfg** %10, align 8
  %44 = getelementptr inbounds %struct.chash_cfg, %struct.chash_cfg* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %45, 65536
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.chash_cfg*, %struct.chash_cfg** %10, align 8
  %49 = getelementptr inbounds %struct.chash_cfg, %struct.chash_cfg* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %50, 2
  %52 = load i32, i32* %11, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %47, %42, %34
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* %11, align 4
  %59 = load i32*, i32** %9, align 8
  store i32 %58, i32* %59, align 4
  store i32 1, i32* %5, align 4
  br label %61

60:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %57
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
