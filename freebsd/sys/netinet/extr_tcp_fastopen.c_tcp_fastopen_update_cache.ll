; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_fastopen.c_tcp_fastopen_update_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_fastopen.c_tcp_fastopen_update_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.in_conninfo }
%struct.in_conninfo = type { i32 }
%struct.tcp_fastopen_ccache_bucket = type { i32 }
%struct.tcp_fastopen_ccache_entry = type { i32, i64, i64, i32 }

@TCP_FASTOPEN_MIN_COOKIE_LEN = common dso_local global i32 0, align 4
@TCP_FASTOPEN_MAX_COOKIE_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_fastopen_update_cache(%struct.tcpcb* %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.tcpcb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.in_conninfo*, align 8
  %10 = alloca %struct.tcp_fastopen_ccache_bucket*, align 8
  %11 = alloca %struct.tcp_fastopen_ccache_entry*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %13 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.in_conninfo* %15, %struct.in_conninfo** %9, align 8
  %16 = load %struct.in_conninfo*, %struct.in_conninfo** %9, align 8
  %17 = call %struct.tcp_fastopen_ccache_entry* @tcp_fastopen_ccache_lookup(%struct.in_conninfo* %16, %struct.tcp_fastopen_ccache_bucket** %10)
  store %struct.tcp_fastopen_ccache_entry* %17, %struct.tcp_fastopen_ccache_entry** %11, align 8
  %18 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %11, align 8
  %19 = icmp ne %struct.tcp_fastopen_ccache_entry* %18, null
  br i1 %19, label %20, label %62

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @TCP_FASTOPEN_MIN_COOKIE_LEN, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %47

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @TCP_FASTOPEN_MAX_COOKIE_LEN, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %11, align 8
  %35 = getelementptr inbounds %struct.tcp_fastopen_ccache_entry, %struct.tcp_fastopen_ccache_entry* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %11, align 8
  %38 = getelementptr inbounds %struct.tcp_fastopen_ccache_entry, %struct.tcp_fastopen_ccache_entry* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %11, align 8
  %40 = getelementptr inbounds %struct.tcp_fastopen_ccache_entry, %struct.tcp_fastopen_ccache_entry* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @memcpy(i32 %41, i32* %42, i32 %43)
  %45 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %11, align 8
  %46 = getelementptr inbounds %struct.tcp_fastopen_ccache_entry, %struct.tcp_fastopen_ccache_entry* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  br label %61

47:                                               ; preds = %28, %24, %20
  %48 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %11, align 8
  %49 = getelementptr inbounds %struct.tcp_fastopen_ccache_entry, %struct.tcp_fastopen_ccache_entry* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  %50 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %11, align 8
  %51 = getelementptr inbounds %struct.tcp_fastopen_ccache_entry, %struct.tcp_fastopen_ccache_entry* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  %52 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %11, align 8
  %53 = getelementptr inbounds %struct.tcp_fastopen_ccache_entry, %struct.tcp_fastopen_ccache_entry* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = call i64 (...) @getsbinuptime()
  %58 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %11, align 8
  %59 = getelementptr inbounds %struct.tcp_fastopen_ccache_entry, %struct.tcp_fastopen_ccache_entry* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %56, %47
  br label %61

61:                                               ; preds = %60, %32
  br label %69

62:                                               ; preds = %4
  %63 = load %struct.tcp_fastopen_ccache_bucket*, %struct.tcp_fastopen_ccache_bucket** %10, align 8
  %64 = load %struct.in_conninfo*, %struct.in_conninfo** %9, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = call i32 @tcp_fastopen_ccache_create(%struct.tcp_fastopen_ccache_bucket* %63, %struct.in_conninfo* %64, i64 %65, i32 %66, i32* %67)
  br label %69

69:                                               ; preds = %62, %61
  %70 = load %struct.tcp_fastopen_ccache_bucket*, %struct.tcp_fastopen_ccache_bucket** %10, align 8
  %71 = call i32 @CCB_UNLOCK(%struct.tcp_fastopen_ccache_bucket* %70)
  ret void
}

declare dso_local %struct.tcp_fastopen_ccache_entry* @tcp_fastopen_ccache_lookup(%struct.in_conninfo*, %struct.tcp_fastopen_ccache_bucket**) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @getsbinuptime(...) #1

declare dso_local i32 @tcp_fastopen_ccache_create(%struct.tcp_fastopen_ccache_bucket*, %struct.in_conninfo*, i64, i32, i32*) #1

declare dso_local i32 @CCB_UNLOCK(%struct.tcp_fastopen_ccache_bucket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
