; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nic_main.c_nic_enable_mbx_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nic_main.c_nic_enable_mbx_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicpf = type { i32 }

@NIC_PF_MAILBOX_ENA_W1S = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicpf*)* @nic_enable_mbx_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nic_enable_mbx_intr(%struct.nicpf* %0) #0 {
  %2 = alloca %struct.nicpf*, align 8
  store %struct.nicpf* %0, %struct.nicpf** %2, align 8
  %3 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %4 = load i64, i64* @NIC_PF_MAILBOX_ENA_W1S, align 8
  %5 = call i32 @nic_reg_write(%struct.nicpf* %3, i64 %4, i64 -1)
  %6 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %7 = load i64, i64* @NIC_PF_MAILBOX_ENA_W1S, align 8
  %8 = add i64 %7, 4
  %9 = call i32 @nic_reg_write(%struct.nicpf* %6, i64 %8, i64 -1)
  ret void
}

declare dso_local i32 @nic_reg_write(%struct.nicpf*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
