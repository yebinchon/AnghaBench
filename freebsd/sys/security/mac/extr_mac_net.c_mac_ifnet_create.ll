; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_net.c_mac_ifnet_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_net.c_mac_ifnet_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }

@mac_policy_count = common dso_local global i64 0, align 8
@ifnet_create = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mac_ifnet_create(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %4 = load i64, i64* @mac_policy_count, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %20

7:                                                ; preds = %1
  %8 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @MAC_IFNET_LOCK(%struct.ifnet* %8, i32 %9)
  %11 = load i32, i32* @ifnet_create, align 4
  %12 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %13 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @MAC_POLICY_PERFORM_NOSLEEP(i32 %11, %struct.ifnet* %12, i32 %15)
  %17 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @MAC_IFNET_UNLOCK(%struct.ifnet* %17, i32 %18)
  br label %20

20:                                               ; preds = %7, %6
  ret void
}

declare dso_local i32 @MAC_IFNET_LOCK(%struct.ifnet*, i32) #1

declare dso_local i32 @MAC_POLICY_PERFORM_NOSLEEP(i32, %struct.ifnet*, i32) #1

declare dso_local i32 @MAC_IFNET_UNLOCK(%struct.ifnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
