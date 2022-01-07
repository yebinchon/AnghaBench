; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_syncache.c_syncache_unpause.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_syncache.c_syncache_unpause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_syncache = type { i64, i32, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@MA_NOTRECURSED = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i64 0, align 8
@hz = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @syncache_unpause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @syncache_unpause(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tcp_syncache*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.tcp_syncache*
  store %struct.tcp_syncache* %6, %struct.tcp_syncache** %3, align 8
  %7 = load %struct.tcp_syncache*, %struct.tcp_syncache** %3, align 8
  %8 = getelementptr inbounds %struct.tcp_syncache, %struct.tcp_syncache* %7, i32 0, i32 3
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = load i32, i32* @MA_NOTRECURSED, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @mtx_assert(i32* %8, i32 %11)
  %13 = load %struct.tcp_syncache*, %struct.tcp_syncache** %3, align 8
  %14 = getelementptr inbounds %struct.tcp_syncache, %struct.tcp_syncache* %13, i32 0, i32 2
  %15 = call i32 @callout_deactivate(i32* %14)
  %16 = load %struct.tcp_syncache*, %struct.tcp_syncache** %3, align 8
  %17 = getelementptr inbounds %struct.tcp_syncache, %struct.tcp_syncache* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @time_uptime, align 8
  %20 = sub nsw i64 %18, %19
  store i64 %20, i64* %4, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.tcp_syncache*, %struct.tcp_syncache** %3, align 8
  %24 = getelementptr inbounds %struct.tcp_syncache, %struct.tcp_syncache* %23, i32 0, i32 2
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @hz, align 8
  %27 = mul nsw i64 %25, %26
  %28 = call i32 @callout_schedule(i32* %24, i64 %27)
  br label %32

29:                                               ; preds = %1
  %30 = load %struct.tcp_syncache*, %struct.tcp_syncache** %3, align 8
  %31 = getelementptr inbounds %struct.tcp_syncache, %struct.tcp_syncache* %30, i32 0, i32 1
  store i32 0, i32* %31, align 8
  br label %32

32:                                               ; preds = %29, %22
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @callout_deactivate(i32*) #1

declare dso_local i32 @callout_schedule(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
