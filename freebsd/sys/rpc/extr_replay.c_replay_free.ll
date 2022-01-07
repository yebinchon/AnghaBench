; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_replay.c_replay_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_replay.c_replay_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.replay_cache = type { i32, i32, i32*, i32, i32 }
%struct.replay_cache_entry = type { i64, i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@rce_link = common dso_local global i32 0, align 4
@rce_alllink = common dso_local global i32 0, align 4
@M_RPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.replay_cache*, %struct.replay_cache_entry*)* @replay_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @replay_free(%struct.replay_cache* %0, %struct.replay_cache_entry* %1) #0 {
  %3 = alloca %struct.replay_cache*, align 8
  %4 = alloca %struct.replay_cache_entry*, align 8
  store %struct.replay_cache* %0, %struct.replay_cache** %3, align 8
  store %struct.replay_cache_entry* %1, %struct.replay_cache_entry** %4, align 8
  %5 = load %struct.replay_cache*, %struct.replay_cache** %3, align 8
  %6 = getelementptr inbounds %struct.replay_cache, %struct.replay_cache* %5, i32 0, i32 4
  %7 = load i32, i32* @MA_OWNED, align 4
  %8 = call i32 @mtx_assert(i32* %6, i32 %7)
  %9 = load %struct.replay_cache*, %struct.replay_cache** %3, align 8
  %10 = getelementptr inbounds %struct.replay_cache, %struct.replay_cache* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %10, align 8
  %13 = load %struct.replay_cache*, %struct.replay_cache** %3, align 8
  %14 = getelementptr inbounds %struct.replay_cache, %struct.replay_cache* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.replay_cache_entry*, %struct.replay_cache_entry** %4, align 8
  %17 = getelementptr inbounds %struct.replay_cache_entry, %struct.replay_cache_entry* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load %struct.replay_cache_entry*, %struct.replay_cache_entry** %4, align 8
  %21 = load i32, i32* @rce_link, align 4
  %22 = call i32 @TAILQ_REMOVE(i32* %19, %struct.replay_cache_entry* %20, i32 %21)
  %23 = load %struct.replay_cache*, %struct.replay_cache** %3, align 8
  %24 = getelementptr inbounds %struct.replay_cache, %struct.replay_cache* %23, i32 0, i32 1
  %25 = load %struct.replay_cache_entry*, %struct.replay_cache_entry** %4, align 8
  %26 = load i32, i32* @rce_alllink, align 4
  %27 = call i32 @TAILQ_REMOVE(i32* %24, %struct.replay_cache_entry* %25, i32 %26)
  %28 = load %struct.replay_cache_entry*, %struct.replay_cache_entry** %4, align 8
  %29 = getelementptr inbounds %struct.replay_cache_entry, %struct.replay_cache_entry* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %2
  %33 = load %struct.replay_cache_entry*, %struct.replay_cache_entry** %4, align 8
  %34 = getelementptr inbounds %struct.replay_cache_entry, %struct.replay_cache_entry* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @m_length(i64 %35, i32* null)
  %37 = load %struct.replay_cache*, %struct.replay_cache** %3, align 8
  %38 = getelementptr inbounds %struct.replay_cache, %struct.replay_cache* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = sub nsw i64 %40, %36
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %38, align 8
  %43 = load %struct.replay_cache_entry*, %struct.replay_cache_entry** %4, align 8
  %44 = getelementptr inbounds %struct.replay_cache_entry, %struct.replay_cache_entry* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @m_freem(i64 %45)
  br label %47

47:                                               ; preds = %32, %2
  %48 = load %struct.replay_cache_entry*, %struct.replay_cache_entry** %4, align 8
  %49 = load i32, i32* @M_RPC, align 4
  %50 = call i32 @free(%struct.replay_cache_entry* %48, i32 %49)
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.replay_cache_entry*, i32) #1

declare dso_local i64 @m_length(i64, i32*) #1

declare dso_local i32 @m_freem(i64) #1

declare dso_local i32 @free(%struct.replay_cache_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
