; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_dynamic.c_dyn_release_rule.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_dynamic.c_dyn_release_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.dyn_data = type { i32 }
%struct.ip_fw = type { i32 }
%struct.dyn_state_obj = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_fw_chain*, %struct.dyn_data*, %struct.ip_fw*, i32)* @dyn_release_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dyn_release_rule(%struct.ip_fw_chain* %0, %struct.dyn_data* %1, %struct.ip_fw* %2, i32 %3) #0 {
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca %struct.dyn_data*, align 8
  %7 = alloca %struct.ip_fw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dyn_state_obj*, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store %struct.dyn_data* %1, %struct.dyn_data** %6, align 8
  store %struct.ip_fw* %2, %struct.ip_fw** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %11 = call i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain* %10)
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @MPASS(i32 %14)
  %16 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.dyn_state_obj* @SRV_OBJECT(%struct.ip_fw_chain* %16, i32 %17)
  store %struct.dyn_state_obj* %18, %struct.dyn_state_obj** %9, align 8
  %19 = load %struct.dyn_state_obj*, %struct.dyn_state_obj** %9, align 8
  %20 = getelementptr inbounds %struct.dyn_state_obj, %struct.dyn_state_obj* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %29

24:                                               ; preds = %4
  %25 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %26 = load %struct.dyn_state_obj*, %struct.dyn_state_obj** %9, align 8
  %27 = getelementptr inbounds %struct.dyn_state_obj, %struct.dyn_state_obj* %26, i32 0, i32 0
  %28 = call i32 @dyn_destroy(%struct.ip_fw_chain* %25, %struct.TYPE_2__* %27)
  br label %35

29:                                               ; preds = %4
  %30 = load %struct.dyn_state_obj*, %struct.dyn_state_obj** %9, align 8
  %31 = getelementptr inbounds %struct.dyn_state_obj, %struct.dyn_state_obj* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %29, %24
  %36 = load %struct.ip_fw*, %struct.ip_fw** %7, align 8
  %37 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %37, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.ip_fw*, %struct.ip_fw** %7, align 8
  %43 = call i32 @ipfw_free_rule(%struct.ip_fw* %42)
  br label %44

44:                                               ; preds = %41, %35
  ret void
}

declare dso_local i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local %struct.dyn_state_obj* @SRV_OBJECT(%struct.ip_fw_chain*, i32) #1

declare dso_local i32 @dyn_destroy(%struct.ip_fw_chain*, %struct.TYPE_2__*) #1

declare dso_local i32 @ipfw_free_rule(%struct.ip_fw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
