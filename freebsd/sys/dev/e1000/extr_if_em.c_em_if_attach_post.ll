; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_if_attach_post.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_if_attach_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, i64, %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"em_if_attach_post: end\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @em_if_attach_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_if_attach_post(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.adapter* @iflib_get_softc(i32 %7)
  store %struct.adapter* %8, %struct.adapter** %4, align 8
  %9 = load %struct.adapter*, %struct.adapter** %4, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 3
  store %struct.e1000_hw* %10, %struct.e1000_hw** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @em_setup_interface(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %43

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @em_reset(i32 %17)
  %19 = load %struct.adapter*, %struct.adapter** %4, align 8
  %20 = call i32 @em_update_stats_counters(%struct.adapter* %19)
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %22 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @em_if_update_admin_status(i32 %24)
  %26 = load %struct.adapter*, %struct.adapter** %4, align 8
  %27 = call i32 @em_add_hw_stats(%struct.adapter* %26)
  %28 = load %struct.adapter*, %struct.adapter** %4, align 8
  %29 = getelementptr inbounds %struct.adapter, %struct.adapter* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %16
  %33 = load %struct.adapter*, %struct.adapter** %4, align 8
  %34 = getelementptr inbounds %struct.adapter, %struct.adapter* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load %struct.adapter*, %struct.adapter** %4, align 8
  %39 = call i32 @em_get_hw_control(%struct.adapter* %38)
  br label %40

40:                                               ; preds = %37, %32, %16
  %41 = call i32 @INIT_DEBUGOUT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %56

43:                                               ; preds = %15
  %44 = load %struct.adapter*, %struct.adapter** %4, align 8
  %45 = call i32 @em_release_hw_control(%struct.adapter* %44)
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @em_free_pci_resources(i32 %46)
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @em_if_queues_free(i32 %48)
  %50 = load %struct.adapter*, %struct.adapter** %4, align 8
  %51 = getelementptr inbounds %struct.adapter, %struct.adapter* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @M_DEVBUF, align 4
  %54 = call i32 @free(i32 %52, i32 %53)
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %43, %40
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local i32 @em_setup_interface(i32) #1

declare dso_local i32 @em_reset(i32) #1

declare dso_local i32 @em_update_stats_counters(%struct.adapter*) #1

declare dso_local i32 @em_if_update_admin_status(i32) #1

declare dso_local i32 @em_add_hw_stats(%struct.adapter*) #1

declare dso_local i32 @em_get_hw_control(%struct.adapter*) #1

declare dso_local i32 @INIT_DEBUGOUT(i8*) #1

declare dso_local i32 @em_release_hw_control(%struct.adapter*) #1

declare dso_local i32 @em_free_pci_resources(i32) #1

declare dso_local i32 @em_if_queues_free(i32) #1

declare dso_local i32 @free(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
