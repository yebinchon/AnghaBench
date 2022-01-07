; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_priv_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_priv_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@M_TEMP = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ipoib_pkey_poll = common dso_local global i32 0, align 4
@ipoib_mcast_join_task = common dso_local global i32 0, align 4
@ipoib_mcast_carrier_on_task = common dso_local global i32 0, align 4
@ipoib_ib_dev_flush_light = common dso_local global i32 0, align 4
@ipoib_ib_dev_flush_normal = common dso_local global i32 0, align 4
@ipoib_ib_dev_flush_heavy = common dso_local global i32 0, align 4
@ipoib_mcast_restart_task = common dso_local global i32 0, align 4
@ipoib_reap_ah = common dso_local global i32 0, align 4
@ipv4_bcast_addr = common dso_local global i32 0, align 4
@INFINIBAND_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ipoib_dev_priv* ()* @ipoib_priv_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ipoib_dev_priv* @ipoib_priv_alloc() #0 {
  %1 = alloca %struct.ipoib_dev_priv*, align 8
  %2 = load i32, i32* @M_TEMP, align 4
  %3 = load i32, i32* @M_ZERO, align 4
  %4 = load i32, i32* @M_WAITOK, align 4
  %5 = or i32 %3, %4
  %6 = call %struct.ipoib_dev_priv* @malloc(i32 64, i32 %2, i32 %5)
  store %struct.ipoib_dev_priv* %6, %struct.ipoib_dev_priv** %1, align 8
  %7 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %1, align 8
  %8 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %7, i32 0, i32 15
  %9 = call i32 @spin_lock_init(i32* %8)
  %10 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %1, align 8
  %11 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %10, i32 0, i32 14
  %12 = call i32 @spin_lock_init(i32* %11)
  %13 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %1, align 8
  %14 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %13, i32 0, i32 13
  %15 = call i32 @mutex_init(i32* %14)
  %16 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %1, align 8
  %17 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %16, i32 0, i32 12
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %1, align 8
  %20 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %19, i32 0, i32 11
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %1, align 8
  %23 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %22, i32 0, i32 10
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %1, align 8
  %26 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %25, i32 0, i32 9
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %1, align 8
  %29 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %28, i32 0, i32 8
  %30 = load i32, i32* @ipoib_pkey_poll, align 4
  %31 = call i32 @INIT_DELAYED_WORK(i32* %29, i32 %30)
  %32 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %1, align 8
  %33 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %32, i32 0, i32 7
  %34 = load i32, i32* @ipoib_mcast_join_task, align 4
  %35 = call i32 @INIT_DELAYED_WORK(i32* %33, i32 %34)
  %36 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %1, align 8
  %37 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %36, i32 0, i32 6
  %38 = load i32, i32* @ipoib_mcast_carrier_on_task, align 4
  %39 = call i32 @INIT_WORK(i32* %37, i32 %38)
  %40 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %1, align 8
  %41 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %40, i32 0, i32 5
  %42 = load i32, i32* @ipoib_ib_dev_flush_light, align 4
  %43 = call i32 @INIT_WORK(i32* %41, i32 %42)
  %44 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %1, align 8
  %45 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %44, i32 0, i32 4
  %46 = load i32, i32* @ipoib_ib_dev_flush_normal, align 4
  %47 = call i32 @INIT_WORK(i32* %45, i32 %46)
  %48 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %1, align 8
  %49 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %48, i32 0, i32 3
  %50 = load i32, i32* @ipoib_ib_dev_flush_heavy, align 4
  %51 = call i32 @INIT_WORK(i32* %49, i32 %50)
  %52 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %1, align 8
  %53 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %52, i32 0, i32 2
  %54 = load i32, i32* @ipoib_mcast_restart_task, align 4
  %55 = call i32 @INIT_WORK(i32* %53, i32 %54)
  %56 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %1, align 8
  %57 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %56, i32 0, i32 1
  %58 = load i32, i32* @ipoib_reap_ah, align 4
  %59 = call i32 @INIT_DELAYED_WORK(i32* %57, i32 %58)
  %60 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %1, align 8
  %61 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @ipv4_bcast_addr, align 4
  %64 = load i32, i32* @INFINIBAND_ALEN, align 4
  %65 = call i32 @memcpy(i32 %62, i32 %63, i32 %64)
  %66 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %1, align 8
  ret %struct.ipoib_dev_priv* %66
}

declare dso_local %struct.ipoib_dev_priv* @malloc(i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
