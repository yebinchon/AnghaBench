; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_syncache.c_syncache_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_syncache.c_syncache_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.syncache = type { i64, i64 }
%struct.syncache_head = type { i64, i32 }

@tcp_rexmit_initial = common dso_local global i32 0, align 4
@tcp_backoff = common dso_local global i32* null, align 8
@tcp_rexmit_min = common dso_local global i32 0, align 4
@TCPTV_REXMTMAX = common dso_local global i32 0, align 4
@ticks = common dso_local global i64 0, align 8
@syncache_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.syncache*, %struct.syncache_head*, i32)* @syncache_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @syncache_timeout(%struct.syncache* %0, %struct.syncache_head* %1, i32 %2) #0 {
  %4 = alloca %struct.syncache*, align 8
  %5 = alloca %struct.syncache_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.syncache* %0, %struct.syncache** %4, align 8
  store %struct.syncache_head* %1, %struct.syncache_head** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.syncache*, %struct.syncache** %4, align 8
  %9 = getelementptr inbounds %struct.syncache, %struct.syncache* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @tcp_rexmit_initial, align 4
  store i32 %13, i32* %7, align 4
  br label %27

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @tcp_rexmit_initial, align 4
  %17 = load i32*, i32** @tcp_backoff, align 8
  %18 = load %struct.syncache*, %struct.syncache** %4, align 8
  %19 = getelementptr inbounds %struct.syncache, %struct.syncache* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %16, %22
  %24 = load i32, i32* @tcp_rexmit_min, align 4
  %25 = load i32, i32* @TCPTV_REXMTMAX, align 4
  %26 = call i32 @TCPT_RANGESET(i32 %15, i32 %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %14, %12
  %28 = load i64, i64* @ticks, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  %32 = load %struct.syncache*, %struct.syncache** %4, align 8
  %33 = getelementptr inbounds %struct.syncache, %struct.syncache* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load %struct.syncache*, %struct.syncache** %4, align 8
  %35 = getelementptr inbounds %struct.syncache, %struct.syncache* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %35, align 8
  %38 = load %struct.syncache*, %struct.syncache** %4, align 8
  %39 = getelementptr inbounds %struct.syncache, %struct.syncache* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.syncache_head*, %struct.syncache_head** %5, align 8
  %42 = getelementptr inbounds %struct.syncache_head, %struct.syncache_head* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @TSTMP_LT(i64 %40, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %27
  %47 = load %struct.syncache*, %struct.syncache** %4, align 8
  %48 = getelementptr inbounds %struct.syncache, %struct.syncache* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.syncache_head*, %struct.syncache_head** %5, align 8
  %51 = getelementptr inbounds %struct.syncache_head, %struct.syncache_head* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %46
  %55 = load %struct.syncache_head*, %struct.syncache_head** %5, align 8
  %56 = getelementptr inbounds %struct.syncache_head, %struct.syncache_head* %55, i32 0, i32 1
  %57 = load %struct.syncache_head*, %struct.syncache_head** %5, align 8
  %58 = getelementptr inbounds %struct.syncache_head, %struct.syncache_head* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @ticks, align 8
  %61 = sub nsw i64 %59, %60
  %62 = load i32, i32* @syncache_timer, align 4
  %63 = load %struct.syncache_head*, %struct.syncache_head** %5, align 8
  %64 = bitcast %struct.syncache_head* %63 to i8*
  %65 = call i32 @callout_reset(i32* %56, i64 %61, i32 %62, i8* %64)
  br label %66

66:                                               ; preds = %54, %46
  br label %67

67:                                               ; preds = %66, %27
  ret void
}

declare dso_local i32 @TCPT_RANGESET(i32, i32, i32, i32) #1

declare dso_local i64 @TSTMP_LT(i64, i64) #1

declare dso_local i32 @callout_reset(i32*, i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
