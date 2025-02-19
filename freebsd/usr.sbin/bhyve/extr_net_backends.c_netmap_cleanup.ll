; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_net_backends.c_netmap_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_net_backends.c_netmap_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_backend = type { i32, i64 }
%struct.netmap_priv = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_backend*)* @netmap_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netmap_cleanup(%struct.net_backend* %0) #0 {
  %2 = alloca %struct.net_backend*, align 8
  %3 = alloca %struct.netmap_priv*, align 8
  store %struct.net_backend* %0, %struct.net_backend** %2, align 8
  %4 = load %struct.net_backend*, %struct.net_backend** %2, align 8
  %5 = getelementptr inbounds %struct.net_backend, %struct.net_backend* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.netmap_priv*
  store %struct.netmap_priv* %7, %struct.netmap_priv** %3, align 8
  %8 = load %struct.netmap_priv*, %struct.netmap_priv** %3, align 8
  %9 = getelementptr inbounds %struct.netmap_priv, %struct.netmap_priv* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.netmap_priv*, %struct.netmap_priv** %3, align 8
  %14 = getelementptr inbounds %struct.netmap_priv, %struct.netmap_priv* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @mevent_delete(i64 %15)
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.netmap_priv*, %struct.netmap_priv** %3, align 8
  %19 = getelementptr inbounds %struct.netmap_priv, %struct.netmap_priv* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.netmap_priv*, %struct.netmap_priv** %3, align 8
  %24 = getelementptr inbounds %struct.netmap_priv, %struct.netmap_priv* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @nm_close(i64 %25)
  br label %27

27:                                               ; preds = %22, %17
  %28 = load %struct.net_backend*, %struct.net_backend** %2, align 8
  %29 = getelementptr inbounds %struct.net_backend, %struct.net_backend* %28, i32 0, i32 0
  store i32 -1, i32* %29, align 8
  ret void
}

declare dso_local i32 @mevent_delete(i64) #1

declare dso_local i32 @nm_close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
