; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_replay.c_replay_newcache.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_replay.c_replay_newcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.replay_cache = type { i64, i32, i32, i32* }

@M_RPC = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@REPLAY_HASH_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"rc_lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.replay_cache* @replay_newcache(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.replay_cache*, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i32, i32* @M_RPC, align 4
  %6 = load i32, i32* @M_WAITOK, align 4
  %7 = load i32, i32* @M_ZERO, align 4
  %8 = or i32 %6, %7
  %9 = call %struct.replay_cache* @malloc(i32 24, i32 %5, i32 %8)
  store %struct.replay_cache* %9, %struct.replay_cache** %3, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %22, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @REPLAY_HASH_SIZE, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = load %struct.replay_cache*, %struct.replay_cache** %3, align 8
  %16 = getelementptr inbounds %struct.replay_cache, %struct.replay_cache* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = call i32 @TAILQ_INIT(i32* %20)
  br label %22

22:                                               ; preds = %14
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %10

25:                                               ; preds = %10
  %26 = load %struct.replay_cache*, %struct.replay_cache** %3, align 8
  %27 = getelementptr inbounds %struct.replay_cache, %struct.replay_cache* %26, i32 0, i32 2
  %28 = call i32 @TAILQ_INIT(i32* %27)
  %29 = load %struct.replay_cache*, %struct.replay_cache** %3, align 8
  %30 = getelementptr inbounds %struct.replay_cache, %struct.replay_cache* %29, i32 0, i32 1
  %31 = load i32, i32* @MTX_DEF, align 4
  %32 = call i32 @mtx_init(i32* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null, i32 %31)
  %33 = load i64, i64* %2, align 8
  %34 = load %struct.replay_cache*, %struct.replay_cache** %3, align 8
  %35 = getelementptr inbounds %struct.replay_cache, %struct.replay_cache* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.replay_cache*, %struct.replay_cache** %3, align 8
  ret %struct.replay_cache* %36
}

declare dso_local %struct.replay_cache* @malloc(i32, i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
