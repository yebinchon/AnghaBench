; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_syncache.c_syncache_hashbucket.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_syncache.c_syncache_hashbucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, %struct.syncache_head*, i32 }
%struct.syncache_head = type { i32 }
%struct.in_conninfo = type { i32 }

@V_tcp_syncache = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.syncache_head* (%struct.in_conninfo*)* @syncache_hashbucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.syncache_head* @syncache_hashbucket(%struct.in_conninfo* %0) #0 {
  %2 = alloca %struct.in_conninfo*, align 8
  %3 = alloca i64, align 8
  store %struct.in_conninfo* %0, %struct.in_conninfo** %2, align 8
  %4 = load %struct.in_conninfo*, %struct.in_conninfo** %2, align 8
  %5 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %4, i32 0, i32 0
  %6 = bitcast i32* %5 to i64*
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_syncache, i32 0, i32 2), align 8
  %8 = call i64 @jenkins_hash32(i64* %6, i32 5, i32 %7)
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_syncache, i32 0, i32 0), align 8
  %10 = and i64 %8, %9
  store i64 %10, i64* %3, align 8
  %11 = load %struct.syncache_head*, %struct.syncache_head** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_syncache, i32 0, i32 1), align 8
  %12 = load i64, i64* %3, align 8
  %13 = getelementptr inbounds %struct.syncache_head, %struct.syncache_head* %11, i64 %12
  ret %struct.syncache_head* %13
}

declare dso_local i64 @jenkins_hash32(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
