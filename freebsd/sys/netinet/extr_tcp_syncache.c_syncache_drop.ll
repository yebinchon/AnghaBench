; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_syncache.c_syncache_drop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_syncache.c_syncache_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.syncache = type { i32, %struct.toedev* }
%struct.toedev = type { i32 (%struct.toedev*, i32)* }
%struct.syncache_head = type { i32, i32 }

@TCPS_SYN_RECEIVED = common dso_local global i32 0, align 4
@sc_hash = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.syncache*, %struct.syncache_head*)* @syncache_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @syncache_drop(%struct.syncache* %0, %struct.syncache_head* %1) #0 {
  %3 = alloca %struct.syncache*, align 8
  %4 = alloca %struct.syncache_head*, align 8
  store %struct.syncache* %0, %struct.syncache** %3, align 8
  store %struct.syncache_head* %1, %struct.syncache_head** %4, align 8
  %5 = load %struct.syncache_head*, %struct.syncache_head** %4, align 8
  %6 = call i32 @SCH_LOCK_ASSERT(%struct.syncache_head* %5)
  %7 = load i32, i32* @TCPS_SYN_RECEIVED, align 4
  %8 = call i32 @TCPSTATES_DEC(i32 %7)
  %9 = load %struct.syncache_head*, %struct.syncache_head** %4, align 8
  %10 = getelementptr inbounds %struct.syncache_head, %struct.syncache_head* %9, i32 0, i32 1
  %11 = load %struct.syncache*, %struct.syncache** %3, align 8
  %12 = load i32, i32* @sc_hash, align 4
  %13 = call i32 @TAILQ_REMOVE(i32* %10, %struct.syncache* %11, i32 %12)
  %14 = load %struct.syncache_head*, %struct.syncache_head** %4, align 8
  %15 = getelementptr inbounds %struct.syncache_head, %struct.syncache_head* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %15, align 4
  %18 = load %struct.syncache*, %struct.syncache** %3, align 8
  %19 = call i32 @syncache_free(%struct.syncache* %18)
  ret void
}

declare dso_local i32 @SCH_LOCK_ASSERT(%struct.syncache_head*) #1

declare dso_local i32 @TCPSTATES_DEC(i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.syncache*, i32) #1

declare dso_local i32 @syncache_free(%struct.syncache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
