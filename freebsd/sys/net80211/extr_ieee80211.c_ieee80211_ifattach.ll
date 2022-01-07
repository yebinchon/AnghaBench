; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211.c_ieee80211_ifattach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211.c_ieee80211_ifattach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"ic_taskq\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@PI_NET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"%s net80211 taskq\00", align 1
@null_update_mcast = common dso_local global i32 0, align 4
@null_update_promisc = common dso_local global i32 0, align 4
@null_update_chw = common dso_local global i32 0, align 4
@IEEE80211_BINTVAL_DEFAULT = common dso_local global i32 0, align 4
@IEEE80211_TXPOWER_MAX = common dso_local global i32 0, align 4
@ic_list_mtx = common dso_local global i32 0, align 4
@ic_head = common dso_local global i32 0, align 4
@ic_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_ifattach(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %3 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %4 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %4, i32 0, i32 9
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @IEEE80211_LOCK_INIT(%struct.ieee80211com* %3, i32 %6)
  %8 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %9 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %10 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %9, i32 0, i32 9
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @IEEE80211_TX_LOCK_INIT(%struct.ieee80211com* %8, i32 %11)
  %13 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %14 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %13, i32 0, i32 11
  %15 = call i32 @TAILQ_INIT(i32* %14)
  %16 = load i32, i32* @M_WAITOK, align 4
  %17 = load i32, i32* @M_ZERO, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %20 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %21 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %20, i32 0, i32 10
  %22 = call i32 @taskqueue_create(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i32* %21)
  %23 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %24 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %23, i32 0, i32 10
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %26 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %25, i32 0, i32 10
  %27 = load i32, i32* @PI_NET, align 4
  %28 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %29 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %28, i32 0, i32 9
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @taskqueue_start_threads(i32* %26, i32 1, i32 %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @M_WAITOK, align 4
  %33 = call i8* @counter_u64_alloc(i32 %32)
  %34 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %35 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %34, i32 0, i32 8
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* @M_WAITOK, align 4
  %37 = call i8* @counter_u64_alloc(i32 %36)
  %38 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %39 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %38, i32 0, i32 7
  store i8* %37, i8** %39, align 8
  %40 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %41 = call i32 @ieee80211_chan_init(%struct.ieee80211com* %40)
  %42 = load i32, i32* @null_update_mcast, align 4
  %43 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %44 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @null_update_promisc, align 4
  %46 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %47 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @null_update_chw, align 4
  %49 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %50 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = call i32 (...) @arc4random()
  %52 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %53 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @IEEE80211_BINTVAL_DEFAULT, align 4
  %55 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %56 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %58 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %61 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @IEEE80211_TXPOWER_MAX, align 4
  %63 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %64 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %66 = call i32 @ieee80211_crypto_attach(%struct.ieee80211com* %65)
  %67 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %68 = call i32 @ieee80211_node_attach(%struct.ieee80211com* %67)
  %69 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %70 = call i32 @ieee80211_power_attach(%struct.ieee80211com* %69)
  %71 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %72 = call i32 @ieee80211_proto_attach(%struct.ieee80211com* %71)
  %73 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %74 = call i32 @ieee80211_ht_attach(%struct.ieee80211com* %73)
  %75 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %76 = call i32 @ieee80211_vht_attach(%struct.ieee80211com* %75)
  %77 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %78 = call i32 @ieee80211_scan_attach(%struct.ieee80211com* %77)
  %79 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %80 = call i32 @ieee80211_regdomain_attach(%struct.ieee80211com* %79)
  %81 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %82 = call i32 @ieee80211_dfs_attach(%struct.ieee80211com* %81)
  %83 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %84 = call i32 @ieee80211_sysctl_attach(%struct.ieee80211com* %83)
  %85 = call i32 @mtx_lock(i32* @ic_list_mtx)
  %86 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %87 = load i32, i32* @ic_next, align 4
  %88 = call i32 @LIST_INSERT_HEAD(i32* @ic_head, %struct.ieee80211com* %86, i32 %87)
  %89 = call i32 @mtx_unlock(i32* @ic_list_mtx)
  ret void
}

declare dso_local i32 @IEEE80211_LOCK_INIT(%struct.ieee80211com*, i32) #1

declare dso_local i32 @IEEE80211_TX_LOCK_INIT(%struct.ieee80211com*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @taskqueue_create(i8*, i32, i32, i32*) #1

declare dso_local i32 @taskqueue_start_threads(i32*, i32, i32, i8*, i32) #1

declare dso_local i8* @counter_u64_alloc(i32) #1

declare dso_local i32 @ieee80211_chan_init(%struct.ieee80211com*) #1

declare dso_local i32 @arc4random(...) #1

declare dso_local i32 @ieee80211_crypto_attach(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_node_attach(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_power_attach(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_proto_attach(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_ht_attach(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_vht_attach(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_scan_attach(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_regdomain_attach(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_dfs_attach(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_sysctl_attach(%struct.ieee80211com*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.ieee80211com*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
