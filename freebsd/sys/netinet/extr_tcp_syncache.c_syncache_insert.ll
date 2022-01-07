; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_syncache.c_syncache_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_syncache.c_syncache_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.syncache = type { i32, %struct.toedev*, i32 }
%struct.toedev = type { i32 (%struct.toedev*, i32)* }
%struct.syncache_head = type { i32, i64, i32, i32 }

@V_tcp_syncache = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [26 x i8] c"sch->sch_length incorrect\00", align 1
@sch_head = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i32 0, align 4
@sc_hash = common dso_local global i32 0, align 4
@ticks = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@TCPS_SYN_RECEIVED = common dso_local global i32 0, align 4
@tcps_sc_added = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.syncache*, %struct.syncache_head*)* @syncache_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @syncache_insert(%struct.syncache* %0, %struct.syncache_head* %1) #0 {
  %3 = alloca %struct.syncache*, align 8
  %4 = alloca %struct.syncache_head*, align 8
  %5 = alloca %struct.syncache*, align 8
  store %struct.syncache* %0, %struct.syncache** %3, align 8
  store %struct.syncache_head* %1, %struct.syncache_head** %4, align 8
  %6 = load %struct.syncache_head*, %struct.syncache_head** %4, align 8
  %7 = call i32 @SCH_LOCK(%struct.syncache_head* %6)
  %8 = load %struct.syncache_head*, %struct.syncache_head** %4, align 8
  %9 = getelementptr inbounds %struct.syncache_head, %struct.syncache_head* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_syncache, i32 0, i32 0), align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %2
  %14 = load %struct.syncache_head*, %struct.syncache_head** %4, align 8
  %15 = getelementptr inbounds %struct.syncache_head, %struct.syncache_head* %14, i32 0, i32 2
  %16 = call i32 @TAILQ_EMPTY(i32* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @KASSERT(i32 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.syncache*, %struct.syncache** %3, align 8
  %22 = getelementptr inbounds %struct.syncache, %struct.syncache* %21, i32 0, i32 2
  %23 = call i32 @syncache_pause(i32* %22)
  %24 = load %struct.syncache_head*, %struct.syncache_head** %4, align 8
  %25 = getelementptr inbounds %struct.syncache_head, %struct.syncache_head* %24, i32 0, i32 2
  %26 = load i32, i32* @sch_head, align 4
  %27 = call %struct.syncache* @TAILQ_LAST(i32* %25, i32 %26)
  store %struct.syncache* %27, %struct.syncache** %5, align 8
  %28 = load i32, i32* @time_uptime, align 4
  %29 = load %struct.syncache_head*, %struct.syncache_head** %4, align 8
  %30 = getelementptr inbounds %struct.syncache_head, %struct.syncache_head* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.syncache*, %struct.syncache** %5, align 8
  %32 = load %struct.syncache_head*, %struct.syncache_head** %4, align 8
  %33 = call i32 @syncache_drop(%struct.syncache* %31, %struct.syncache_head* %32)
  br label %34

34:                                               ; preds = %13, %2
  %35 = load %struct.syncache_head*, %struct.syncache_head** %4, align 8
  %36 = getelementptr inbounds %struct.syncache_head, %struct.syncache_head* %35, i32 0, i32 2
  %37 = load %struct.syncache*, %struct.syncache** %3, align 8
  %38 = load i32, i32* @sc_hash, align 4
  %39 = call i32 @TAILQ_INSERT_HEAD(i32* %36, %struct.syncache* %37, i32 %38)
  %40 = load %struct.syncache_head*, %struct.syncache_head** %4, align 8
  %41 = getelementptr inbounds %struct.syncache_head, %struct.syncache_head* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  %44 = load %struct.syncache_head*, %struct.syncache_head** %4, align 8
  %45 = getelementptr inbounds %struct.syncache_head, %struct.syncache_head* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %54

48:                                               ; preds = %34
  %49 = load i64, i64* @ticks, align 8
  %50 = load i64, i64* @INT_MAX, align 8
  %51 = add nsw i64 %49, %50
  %52 = load %struct.syncache_head*, %struct.syncache_head** %4, align 8
  %53 = getelementptr inbounds %struct.syncache_head, %struct.syncache_head* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %48, %34
  %55 = load %struct.syncache*, %struct.syncache** %3, align 8
  %56 = load %struct.syncache_head*, %struct.syncache_head** %4, align 8
  %57 = call i32 @syncache_timeout(%struct.syncache* %55, %struct.syncache_head* %56, i32 1)
  %58 = load %struct.syncache_head*, %struct.syncache_head** %4, align 8
  %59 = call i32 @SCH_UNLOCK(%struct.syncache_head* %58)
  %60 = load i32, i32* @TCPS_SYN_RECEIVED, align 4
  %61 = call i32 @TCPSTATES_INC(i32 %60)
  %62 = load i32, i32* @tcps_sc_added, align 4
  %63 = call i32 @TCPSTAT_INC(i32 %62)
  ret void
}

declare dso_local i32 @SCH_LOCK(%struct.syncache_head*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @syncache_pause(i32*) #1

declare dso_local %struct.syncache* @TAILQ_LAST(i32*, i32) #1

declare dso_local i32 @syncache_drop(%struct.syncache*, %struct.syncache_head*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.syncache*, i32) #1

declare dso_local i32 @syncache_timeout(%struct.syncache*, %struct.syncache_head*, i32) #1

declare dso_local i32 @SCH_UNLOCK(%struct.syncache_head*) #1

declare dso_local i32 @TCPSTATES_INC(i32) #1

declare dso_local i32 @TCPSTAT_INC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
