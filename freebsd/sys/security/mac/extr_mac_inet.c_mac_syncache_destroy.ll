; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_inet.c_mac_syncache_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_inet.c_mac_syncache_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.label = type { i32 }

@syncache_destroy_label = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mac_syncache_destroy(%struct.label** %0) #0 {
  %2 = alloca %struct.label**, align 8
  store %struct.label** %0, %struct.label*** %2, align 8
  %3 = load %struct.label**, %struct.label*** %2, align 8
  %4 = load %struct.label*, %struct.label** %3, align 8
  %5 = icmp ne %struct.label* %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load i32, i32* @syncache_destroy_label, align 4
  %8 = load %struct.label**, %struct.label*** %2, align 8
  %9 = load %struct.label*, %struct.label** %8, align 8
  %10 = call i32 @MAC_POLICY_PERFORM_NOSLEEP(i32 %7, %struct.label* %9)
  %11 = load %struct.label**, %struct.label*** %2, align 8
  %12 = load %struct.label*, %struct.label** %11, align 8
  %13 = call i32 @mac_labelzone_free(%struct.label* %12)
  %14 = load %struct.label**, %struct.label*** %2, align 8
  store %struct.label* null, %struct.label** %14, align 8
  br label %15

15:                                               ; preds = %6, %1
  ret void
}

declare dso_local i32 @MAC_POLICY_PERFORM_NOSLEEP(i32, %struct.label*) #1

declare dso_local i32 @mac_labelzone_free(%struct.label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
