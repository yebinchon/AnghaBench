; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nic_main.c_nic_mbx_intr_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nic_main.c_nic_mbx_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicpf = type { i32 }

@NIC_PF_MAILBOX_INT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicpf*, i32)* @nic_mbx_intr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nic_mbx_intr_handler(%struct.nicpf* %0, i32 %1) #0 {
  %3 = alloca %struct.nicpf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.nicpf* %0, %struct.nicpf** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 64, i64* %7, align 8
  %8 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %9 = load i64, i64* @NIC_PF_MAILBOX_INT, align 8
  %10 = load i32, i32* %4, align 4
  %11 = shl i32 %10, 3
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %9, %12
  %14 = call i64 @nic_reg_read(%struct.nicpf* %8, i64 %13)
  store i64 %14, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %15

15:                                               ; preds = %39, %2
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %15
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = shl i64 1, %21
  %23 = and i64 %20, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %19
  %26 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %7, align 8
  %31 = mul i64 %29, %30
  %32 = add i64 %27, %31
  %33 = call i32 @nic_handle_mbx_intr(%struct.nicpf* %26, i64 %32)
  %34 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @nic_clear_mbx_intr(%struct.nicpf* %34, i64 %35, i32 %36)
  br label %38

38:                                               ; preds = %25, %19
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %6, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %6, align 8
  br label %15

42:                                               ; preds = %15
  ret void
}

declare dso_local i64 @nic_reg_read(%struct.nicpf*, i64) #1

declare dso_local i32 @nic_handle_mbx_intr(%struct.nicpf*, i64) #1

declare dso_local i32 @nic_clear_mbx_intr(%struct.nicpf*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
