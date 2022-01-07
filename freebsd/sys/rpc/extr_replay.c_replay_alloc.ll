; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_replay.c_replay_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_replay.c_replay_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.replay_cache_entry = type { i32, i32, %struct.rpc_msg }
%struct.rpc_msg = type { i32 }
%struct.replay_cache = type { i32, i32*, i32, i32 }
%struct.sockaddr = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@M_RPC = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@rce_link = common dso_local global i32 0, align 4
@rce_alllink = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.replay_cache_entry* (%struct.replay_cache*, %struct.rpc_msg*, %struct.sockaddr*, i32)* @replay_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.replay_cache_entry* @replay_alloc(%struct.replay_cache* %0, %struct.rpc_msg* %1, %struct.sockaddr* %2, i32 %3) #0 {
  %5 = alloca %struct.replay_cache_entry*, align 8
  %6 = alloca %struct.replay_cache*, align 8
  %7 = alloca %struct.rpc_msg*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.replay_cache_entry*, align 8
  store %struct.replay_cache* %0, %struct.replay_cache** %6, align 8
  store %struct.rpc_msg* %1, %struct.rpc_msg** %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.replay_cache*, %struct.replay_cache** %6, align 8
  %12 = getelementptr inbounds %struct.replay_cache, %struct.replay_cache* %11, i32 0, i32 3
  %13 = load i32, i32* @MA_OWNED, align 4
  %14 = call i32 @mtx_assert(i32* %12, i32 %13)
  %15 = load %struct.replay_cache*, %struct.replay_cache** %6, align 8
  %16 = getelementptr inbounds %struct.replay_cache, %struct.replay_cache* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 8
  %19 = load i32, i32* @M_RPC, align 4
  %20 = load i32, i32* @M_NOWAIT, align 4
  %21 = load i32, i32* @M_ZERO, align 4
  %22 = or i32 %20, %21
  %23 = call %struct.replay_cache_entry* @malloc(i32 12, i32 %19, i32 %22)
  store %struct.replay_cache_entry* %23, %struct.replay_cache_entry** %10, align 8
  %24 = load %struct.replay_cache_entry*, %struct.replay_cache_entry** %10, align 8
  %25 = icmp ne %struct.replay_cache_entry* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %4
  store %struct.replay_cache_entry* null, %struct.replay_cache_entry** %5, align 8
  br label %58

27:                                               ; preds = %4
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.replay_cache_entry*, %struct.replay_cache_entry** %10, align 8
  %30 = getelementptr inbounds %struct.replay_cache_entry, %struct.replay_cache_entry* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.replay_cache_entry*, %struct.replay_cache_entry** %10, align 8
  %32 = getelementptr inbounds %struct.replay_cache_entry, %struct.replay_cache_entry* %31, i32 0, i32 2
  %33 = load %struct.rpc_msg*, %struct.rpc_msg** %7, align 8
  %34 = bitcast %struct.rpc_msg* %32 to i8*
  %35 = bitcast %struct.rpc_msg* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 4, i1 false)
  %36 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %37 = load %struct.replay_cache_entry*, %struct.replay_cache_entry** %10, align 8
  %38 = getelementptr inbounds %struct.replay_cache_entry, %struct.replay_cache_entry* %37, i32 0, i32 1
  %39 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %40 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @bcopy(%struct.sockaddr* %36, i32* %38, i32 %41)
  %43 = load %struct.replay_cache*, %struct.replay_cache** %6, align 8
  %44 = getelementptr inbounds %struct.replay_cache, %struct.replay_cache* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load %struct.replay_cache_entry*, %struct.replay_cache_entry** %10, align 8
  %50 = load i32, i32* @rce_link, align 4
  %51 = call i32 @TAILQ_INSERT_HEAD(i32* %48, %struct.replay_cache_entry* %49, i32 %50)
  %52 = load %struct.replay_cache*, %struct.replay_cache** %6, align 8
  %53 = getelementptr inbounds %struct.replay_cache, %struct.replay_cache* %52, i32 0, i32 0
  %54 = load %struct.replay_cache_entry*, %struct.replay_cache_entry** %10, align 8
  %55 = load i32, i32* @rce_alllink, align 4
  %56 = call i32 @TAILQ_INSERT_HEAD(i32* %53, %struct.replay_cache_entry* %54, i32 %55)
  %57 = load %struct.replay_cache_entry*, %struct.replay_cache_entry** %10, align 8
  store %struct.replay_cache_entry* %57, %struct.replay_cache_entry** %5, align 8
  br label %58

58:                                               ; preds = %27, %26
  %59 = load %struct.replay_cache_entry*, %struct.replay_cache_entry** %5, align 8
  ret %struct.replay_cache_entry* %59
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local %struct.replay_cache_entry* @malloc(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bcopy(%struct.sockaddr*, i32*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.replay_cache_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
