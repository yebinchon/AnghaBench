; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nic_main.c_nic_update_hw_frs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nic_main.c_nic_update_hw_frs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicpf = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@NIC_HW_MAX_FRS = common dso_local global i32 0, align 4
@NIC_HW_MIN_FRS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Invalid MTU setting from VF%d rejected, should be between %d and %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ETHER_HDR_LEN = common dso_local global i64 0, align 8
@NIC_PF_PKIND_0_15_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nicpf*, i32, i32)* @nic_update_hw_frs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nic_update_hw_frs(%struct.nicpf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nicpf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nicpf* %0, %struct.nicpf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @NIC_HW_MAX_FRS, align 4
  %10 = icmp sgt i32 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @NIC_HW_MIN_FRS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %11, %3
  %16 = load %struct.nicpf*, %struct.nicpf** %5, align 8
  %17 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @NIC_HW_MIN_FRS, align 4
  %21 = load i32, i32* @NIC_HW_MAX_FRS, align 4
  %22 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %4, align 4
  br label %49

24:                                               ; preds = %11
  %25 = load i64, i64* @ETHER_HDR_LEN, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.nicpf*, %struct.nicpf** %5, align 8
  %32 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sle i32 %30, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %49

37:                                               ; preds = %24
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.nicpf*, %struct.nicpf** %5, align 8
  %40 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load %struct.nicpf*, %struct.nicpf** %5, align 8
  %43 = load i32, i32* @NIC_PF_PKIND_0_15_CFG, align 4
  %44 = load %struct.nicpf*, %struct.nicpf** %5, align 8
  %45 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %44, i32 0, i32 0
  %46 = bitcast %struct.TYPE_2__* %45 to i32*
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @nic_reg_write(%struct.nicpf* %42, i32 %43, i32 %47)
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %37, %36, %15
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @nic_reg_write(%struct.nicpf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
