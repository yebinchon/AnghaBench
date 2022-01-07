; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nic_main.c_nic_set_tx_pkt_pad.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nic_main.c_nic_set_tx_pkt_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicpf = type { i32 }

@MAX_BGX_PER_CN88XX = common dso_local global i32 0, align 4
@MAX_LMAC_PER_BGX = common dso_local global i32 0, align 4
@NIC_PF_LMAC_0_7_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicpf*, i32)* @nic_set_tx_pkt_pad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nic_set_tx_pkt_pad(%struct.nicpf* %0, i32 %1) #0 {
  %3 = alloca %struct.nicpf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nicpf* %0, %struct.nicpf** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 60
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 60, i32* %4, align 4
  br label %10

10:                                               ; preds = %9, %2
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %38, %10
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @MAX_BGX_PER_CN88XX, align 4
  %14 = load i32, i32* @MAX_LMAC_PER_BGX, align 4
  %15 = mul nsw i32 %13, %14
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %11
  %18 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %19 = load i32, i32* @NIC_PF_LMAC_0_7_CFG, align 4
  %20 = load i32, i32* %5, align 4
  %21 = shl i32 %20, 3
  %22 = or i32 %19, %21
  %23 = call i32 @nic_reg_read(%struct.nicpf* %18, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, -61
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %4, align 4
  %27 = sdiv i32 %26, 4
  %28 = shl i32 %27, 2
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %32 = load i32, i32* @NIC_PF_LMAC_0_7_CFG, align 4
  %33 = load i32, i32* %5, align 4
  %34 = shl i32 %33, 3
  %35 = or i32 %32, %34
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @nic_reg_write(%struct.nicpf* %31, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %17
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %11

41:                                               ; preds = %11
  ret void
}

declare dso_local i32 @nic_reg_read(%struct.nicpf*, i32) #1

declare dso_local i32 @nic_reg_write(%struct.nicpf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
