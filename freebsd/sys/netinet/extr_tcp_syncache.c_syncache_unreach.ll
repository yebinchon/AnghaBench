; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_syncache.c_syncache_unreach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_syncache.c_syncache_unreach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_conninfo = type { i32 }
%struct.syncache = type { i64, i32, i32 }
%struct.syncache_head = type { i32 }

@SCF_UNREACH = common dso_local global i32 0, align 4
@tcps_sc_unreach = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @syncache_unreach(%struct.in_conninfo* %0, i32 %1) #0 {
  %3 = alloca %struct.in_conninfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.syncache*, align 8
  %6 = alloca %struct.syncache_head*, align 8
  store %struct.in_conninfo* %0, %struct.in_conninfo** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i64 (...) @syncache_cookiesonly()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %53

10:                                               ; preds = %2
  %11 = load %struct.in_conninfo*, %struct.in_conninfo** %3, align 8
  %12 = call %struct.syncache* @syncache_lookup(%struct.in_conninfo* %11, %struct.syncache_head** %6)
  store %struct.syncache* %12, %struct.syncache** %5, align 8
  %13 = load %struct.syncache_head*, %struct.syncache_head** %6, align 8
  %14 = call i32 @SCH_LOCK_ASSERT(%struct.syncache_head* %13)
  %15 = load %struct.syncache*, %struct.syncache** %5, align 8
  %16 = icmp eq %struct.syncache* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %50

18:                                               ; preds = %10
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @ntohl(i32 %19)
  %21 = load %struct.syncache*, %struct.syncache** %5, align 8
  %22 = getelementptr inbounds %struct.syncache, %struct.syncache* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %50

26:                                               ; preds = %18
  %27 = load %struct.syncache*, %struct.syncache** %5, align 8
  %28 = getelementptr inbounds %struct.syncache, %struct.syncache* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SCF_UNREACH, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %26
  %34 = load %struct.syncache*, %struct.syncache** %5, align 8
  %35 = getelementptr inbounds %struct.syncache, %struct.syncache* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %36, 4
  br i1 %37, label %38, label %44

38:                                               ; preds = %33, %26
  %39 = load i32, i32* @SCF_UNREACH, align 4
  %40 = load %struct.syncache*, %struct.syncache** %5, align 8
  %41 = getelementptr inbounds %struct.syncache, %struct.syncache* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %50

44:                                               ; preds = %33
  %45 = load %struct.syncache*, %struct.syncache** %5, align 8
  %46 = load %struct.syncache_head*, %struct.syncache_head** %6, align 8
  %47 = call i32 @syncache_drop(%struct.syncache* %45, %struct.syncache_head* %46)
  %48 = load i32, i32* @tcps_sc_unreach, align 4
  %49 = call i32 @TCPSTAT_INC(i32 %48)
  br label %50

50:                                               ; preds = %44, %38, %25, %17
  %51 = load %struct.syncache_head*, %struct.syncache_head** %6, align 8
  %52 = call i32 @SCH_UNLOCK(%struct.syncache_head* %51)
  br label %53

53:                                               ; preds = %50, %9
  ret void
}

declare dso_local i64 @syncache_cookiesonly(...) #1

declare dso_local %struct.syncache* @syncache_lookup(%struct.in_conninfo*, %struct.syncache_head**) #1

declare dso_local i32 @SCH_LOCK_ASSERT(%struct.syncache_head*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @syncache_drop(%struct.syncache*, %struct.syncache_head*) #1

declare dso_local i32 @TCPSTAT_INC(i32) #1

declare dso_local i32 @SCH_UNLOCK(%struct.syncache_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
