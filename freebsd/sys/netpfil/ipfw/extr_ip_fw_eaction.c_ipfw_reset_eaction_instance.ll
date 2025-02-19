; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_eaction.c_ipfw_reset_eaction_instance.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_eaction.c_ipfw_reset_eaction_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.named_object = type { i64 }

@IPFW_TLV_EACTION = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipfw_reset_eaction_instance(%struct.ip_fw_chain* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.named_object*, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %10 = call i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain* %9)
  %11 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %12 = call i32 @CHAIN_TO_SRV(%struct.ip_fw_chain* %11)
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.named_object* @ipfw_objhash_lookup_kidx(i32 %12, i32 %13)
  store %struct.named_object* %14, %struct.named_object** %8, align 8
  %15 = load %struct.named_object*, %struct.named_object** %8, align 8
  %16 = icmp eq %struct.named_object* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load %struct.named_object*, %struct.named_object** %8, align 8
  %19 = getelementptr inbounds %struct.named_object, %struct.named_object* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IPFW_TLV_EACTION, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17, %3
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %4, align 4
  br label %30

25:                                               ; preds = %17
  %26 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @reset_eaction_rules(%struct.ip_fw_chain* %26, i32 %27, i32 %28, i32 0)
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %25, %23
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain*) #1

declare dso_local %struct.named_object* @ipfw_objhash_lookup_kidx(i32, i32) #1

declare dso_local i32 @CHAIN_TO_SRV(%struct.ip_fw_chain*) #1

declare dso_local i32 @reset_eaction_rules(%struct.ip_fw_chain*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
