; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_iavf_vc.c_ixl_vc_send_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_iavf_vc.c_ixl_vc_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_sc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixl_vc_send_cmd(%struct.iavf_sc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iavf_sc*, align 8
  %5 = alloca i32, align 4
  store %struct.iavf_sc* %0, %struct.iavf_sc** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %43 [
    i32 129, label %7
    i32 139, label %10
    i32 138, label %13
    i32 133, label %16
    i32 132, label %19
    i32 136, label %22
    i32 131, label %25
    i32 130, label %28
    i32 135, label %31
    i32 128, label %34
    i32 134, label %37
    i32 137, label %40
  ]

7:                                                ; preds = %2
  %8 = load %struct.iavf_sc*, %struct.iavf_sc** %4, align 8
  %9 = call i32 @iavf_map_queues(%struct.iavf_sc* %8)
  store i32 %9, i32* %3, align 4
  br label %44

10:                                               ; preds = %2
  %11 = load %struct.iavf_sc*, %struct.iavf_sc** %4, align 8
  %12 = call i32 @iavf_add_ether_filters(%struct.iavf_sc* %11)
  store i32 %12, i32* %3, align 4
  br label %44

13:                                               ; preds = %2
  %14 = load %struct.iavf_sc*, %struct.iavf_sc** %4, align 8
  %15 = call i32 @iavf_add_vlans(%struct.iavf_sc* %14)
  store i32 %15, i32* %3, align 4
  br label %44

16:                                               ; preds = %2
  %17 = load %struct.iavf_sc*, %struct.iavf_sc** %4, align 8
  %18 = call i32 @iavf_del_ether_filters(%struct.iavf_sc* %17)
  store i32 %18, i32* %3, align 4
  br label %44

19:                                               ; preds = %2
  %20 = load %struct.iavf_sc*, %struct.iavf_sc** %4, align 8
  %21 = call i32 @iavf_del_vlans(%struct.iavf_sc* %20)
  store i32 %21, i32* %3, align 4
  br label %44

22:                                               ; preds = %2
  %23 = load %struct.iavf_sc*, %struct.iavf_sc** %4, align 8
  %24 = call i32 @iavf_configure_queues(%struct.iavf_sc* %23)
  store i32 %24, i32* %3, align 4
  br label %44

25:                                               ; preds = %2
  %26 = load %struct.iavf_sc*, %struct.iavf_sc** %4, align 8
  %27 = call i32 @iavf_disable_queues(%struct.iavf_sc* %26)
  store i32 %27, i32* %3, align 4
  br label %44

28:                                               ; preds = %2
  %29 = load %struct.iavf_sc*, %struct.iavf_sc** %4, align 8
  %30 = call i32 @iavf_enable_queues(%struct.iavf_sc* %29)
  store i32 %30, i32* %3, align 4
  br label %44

31:                                               ; preds = %2
  %32 = load %struct.iavf_sc*, %struct.iavf_sc** %4, align 8
  %33 = call i32 @iavf_config_rss_key(%struct.iavf_sc* %32)
  store i32 %33, i32* %3, align 4
  br label %44

34:                                               ; preds = %2
  %35 = load %struct.iavf_sc*, %struct.iavf_sc** %4, align 8
  %36 = call i32 @iavf_set_rss_hena(%struct.iavf_sc* %35)
  store i32 %36, i32* %3, align 4
  br label %44

37:                                               ; preds = %2
  %38 = load %struct.iavf_sc*, %struct.iavf_sc** %4, align 8
  %39 = call i32 @iavf_config_rss_lut(%struct.iavf_sc* %38)
  store i32 %39, i32* %3, align 4
  br label %44

40:                                               ; preds = %2
  %41 = load %struct.iavf_sc*, %struct.iavf_sc** %4, align 8
  %42 = call i32 @iavf_config_promisc_mode(%struct.iavf_sc* %41)
  store i32 %42, i32* %3, align 4
  br label %44

43:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %40, %37, %34, %31, %28, %25, %22, %19, %16, %13, %10, %7
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @iavf_map_queues(%struct.iavf_sc*) #1

declare dso_local i32 @iavf_add_ether_filters(%struct.iavf_sc*) #1

declare dso_local i32 @iavf_add_vlans(%struct.iavf_sc*) #1

declare dso_local i32 @iavf_del_ether_filters(%struct.iavf_sc*) #1

declare dso_local i32 @iavf_del_vlans(%struct.iavf_sc*) #1

declare dso_local i32 @iavf_configure_queues(%struct.iavf_sc*) #1

declare dso_local i32 @iavf_disable_queues(%struct.iavf_sc*) #1

declare dso_local i32 @iavf_enable_queues(%struct.iavf_sc*) #1

declare dso_local i32 @iavf_config_rss_key(%struct.iavf_sc*) #1

declare dso_local i32 @iavf_set_rss_hena(%struct.iavf_sc*) #1

declare dso_local i32 @iavf_config_rss_lut(%struct.iavf_sc*) #1

declare dso_local i32 @iavf_config_promisc_mode(%struct.iavf_sc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
