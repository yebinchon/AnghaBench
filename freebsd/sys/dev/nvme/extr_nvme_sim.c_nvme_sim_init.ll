; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_sim.c_nvme_sim_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_sim.c_nvme_sim_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nvme_use_nvd = common dso_local global i64 0, align 8
@nvme_sim_new_ns = common dso_local global i32 0, align 4
@nvme_sim_new_controller = common dso_local global i32 0, align 4
@nvme_sim_controller_fail = common dso_local global i32 0, align 4
@consumer_cookie = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @nvme_sim_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_sim_init() #0 {
  %1 = load i64, i64* @nvme_use_nvd, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %9

4:                                                ; preds = %0
  %5 = load i32, i32* @nvme_sim_new_ns, align 4
  %6 = load i32, i32* @nvme_sim_new_controller, align 4
  %7 = load i32, i32* @nvme_sim_controller_fail, align 4
  %8 = call i32 @nvme_register_consumer(i32 %5, i32 %6, i32* null, i32 %7)
  store i32 %8, i32* @consumer_cookie, align 4
  br label %9

9:                                                ; preds = %4, %3
  ret void
}

declare dso_local i32 @nvme_register_consumer(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
