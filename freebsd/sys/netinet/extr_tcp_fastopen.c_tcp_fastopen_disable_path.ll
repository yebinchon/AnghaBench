; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_fastopen.c_tcp_fastopen_disable_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_fastopen.c_tcp_fastopen_disable_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.in_conninfo }
%struct.in_conninfo = type { i32 }
%struct.tcp_fastopen_ccache_bucket = type { i32 }
%struct.tcp_fastopen_ccache_entry = type { i64, i64, i64 }

@TCP_FASTOPEN_MAX_COOKIE_LEN = common dso_local global i64 0, align 8
@TF_FASTOPEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_fastopen_disable_path(%struct.tcpcb* %0) #0 {
  %2 = alloca %struct.tcpcb*, align 8
  %3 = alloca %struct.in_conninfo*, align 8
  %4 = alloca %struct.tcp_fastopen_ccache_bucket*, align 8
  %5 = alloca %struct.tcp_fastopen_ccache_entry*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %2, align 8
  %6 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %7 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.in_conninfo* %9, %struct.in_conninfo** %3, align 8
  %10 = load %struct.in_conninfo*, %struct.in_conninfo** %3, align 8
  %11 = call %struct.tcp_fastopen_ccache_entry* @tcp_fastopen_ccache_lookup(%struct.in_conninfo* %10, %struct.tcp_fastopen_ccache_bucket** %4)
  store %struct.tcp_fastopen_ccache_entry* %11, %struct.tcp_fastopen_ccache_entry** %5, align 8
  %12 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %5, align 8
  %13 = icmp ne %struct.tcp_fastopen_ccache_entry* %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %1
  %15 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %5, align 8
  %16 = getelementptr inbounds %struct.tcp_fastopen_ccache_entry, %struct.tcp_fastopen_ccache_entry* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %5, align 8
  %18 = getelementptr inbounds %struct.tcp_fastopen_ccache_entry, %struct.tcp_fastopen_ccache_entry* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %5, align 8
  %20 = getelementptr inbounds %struct.tcp_fastopen_ccache_entry, %struct.tcp_fastopen_ccache_entry* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %14
  %24 = call i64 (...) @getsbinuptime()
  %25 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %5, align 8
  %26 = getelementptr inbounds %struct.tcp_fastopen_ccache_entry, %struct.tcp_fastopen_ccache_entry* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %23, %14
  br label %34

28:                                               ; preds = %1
  %29 = load %struct.tcp_fastopen_ccache_bucket*, %struct.tcp_fastopen_ccache_bucket** %4, align 8
  %30 = load %struct.in_conninfo*, %struct.in_conninfo** %3, align 8
  %31 = load i64, i64* @TCP_FASTOPEN_MAX_COOKIE_LEN, align 8
  %32 = add nsw i64 %31, 1
  %33 = call i32 @tcp_fastopen_ccache_create(%struct.tcp_fastopen_ccache_bucket* %29, %struct.in_conninfo* %30, i32 0, i64 %32, i32* null)
  br label %34

34:                                               ; preds = %28, %27
  %35 = load %struct.tcp_fastopen_ccache_bucket*, %struct.tcp_fastopen_ccache_bucket** %4, align 8
  %36 = call i32 @CCB_UNLOCK(%struct.tcp_fastopen_ccache_bucket* %35)
  %37 = load i32, i32* @TF_FASTOPEN, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %40 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 8
  ret void
}

declare dso_local %struct.tcp_fastopen_ccache_entry* @tcp_fastopen_ccache_lookup(%struct.in_conninfo*, %struct.tcp_fastopen_ccache_bucket**) #1

declare dso_local i64 @getsbinuptime(...) #1

declare dso_local i32 @tcp_fastopen_ccache_create(%struct.tcp_fastopen_ccache_bucket*, %struct.in_conninfo*, i32, i64, i32*) #1

declare dso_local i32 @CCB_UNLOCK(%struct.tcp_fastopen_ccache_bucket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
