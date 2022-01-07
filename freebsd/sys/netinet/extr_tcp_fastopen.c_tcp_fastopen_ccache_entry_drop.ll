; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_fastopen.c_tcp_fastopen_ccache_entry_drop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_fastopen.c_tcp_fastopen_ccache_entry_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.tcp_fastopen_ccache_entry = type { i32 }
%struct.tcp_fastopen_ccache_bucket = type { i32, i32 }

@cce_link = common dso_local global i32 0, align 4
@V_tcp_fastopen_ccache = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_bucket*)* @tcp_fastopen_ccache_entry_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_fastopen_ccache_entry_drop(%struct.tcp_fastopen_ccache_entry* %0, %struct.tcp_fastopen_ccache_bucket* %1) #0 {
  %3 = alloca %struct.tcp_fastopen_ccache_entry*, align 8
  %4 = alloca %struct.tcp_fastopen_ccache_bucket*, align 8
  store %struct.tcp_fastopen_ccache_entry* %0, %struct.tcp_fastopen_ccache_entry** %3, align 8
  store %struct.tcp_fastopen_ccache_bucket* %1, %struct.tcp_fastopen_ccache_bucket** %4, align 8
  %5 = load %struct.tcp_fastopen_ccache_bucket*, %struct.tcp_fastopen_ccache_bucket** %4, align 8
  %6 = call i32 @CCB_LOCK_ASSERT(%struct.tcp_fastopen_ccache_bucket* %5)
  %7 = load %struct.tcp_fastopen_ccache_bucket*, %struct.tcp_fastopen_ccache_bucket** %4, align 8
  %8 = getelementptr inbounds %struct.tcp_fastopen_ccache_bucket, %struct.tcp_fastopen_ccache_bucket* %7, i32 0, i32 1
  %9 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %3, align 8
  %10 = load i32, i32* @cce_link, align 4
  %11 = call i32 @TAILQ_REMOVE(i32* %8, %struct.tcp_fastopen_ccache_entry* %9, i32 %10)
  %12 = load %struct.tcp_fastopen_ccache_bucket*, %struct.tcp_fastopen_ccache_bucket** %4, align 8
  %13 = getelementptr inbounds %struct.tcp_fastopen_ccache_bucket, %struct.tcp_fastopen_ccache_bucket* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @V_tcp_fastopen_ccache, i32 0, i32 0), align 4
  %17 = load %struct.tcp_fastopen_ccache_entry*, %struct.tcp_fastopen_ccache_entry** %3, align 8
  %18 = call i32 @uma_zfree(i32 %16, %struct.tcp_fastopen_ccache_entry* %17)
  ret void
}

declare dso_local i32 @CCB_LOCK_ASSERT(%struct.tcp_fastopen_ccache_bucket*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.tcp_fastopen_ccache_entry*, i32) #1

declare dso_local i32 @uma_zfree(i32, %struct.tcp_fastopen_ccache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
