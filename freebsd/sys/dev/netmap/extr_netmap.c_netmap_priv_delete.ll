; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_priv_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_priv_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_priv_d = type { i64, i32, %struct.netmap_adapter* }
%struct.netmap_adapter = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netmap_priv_delete(%struct.netmap_priv_d* %0) #0 {
  %2 = alloca %struct.netmap_priv_d*, align 8
  %3 = alloca %struct.netmap_adapter*, align 8
  store %struct.netmap_priv_d* %0, %struct.netmap_priv_d** %2, align 8
  %4 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %2, align 8
  %5 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %4, i32 0, i32 2
  %6 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  store %struct.netmap_adapter* %6, %struct.netmap_adapter** %3, align 8
  %7 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %2, align 8
  %8 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, -1
  store i64 %10, i64* %8, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %30

13:                                               ; preds = %1
  %14 = call i32 (...) @nm_os_put_module()
  %15 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %16 = icmp ne %struct.netmap_adapter* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %2, align 8
  %19 = call i32 @netmap_do_unregif(%struct.netmap_priv_d* %18)
  br label %20

20:                                               ; preds = %17, %13
  %21 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %22 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %2, align 8
  %23 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @netmap_unget_na(%struct.netmap_adapter* %21, i32 %24)
  %26 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %2, align 8
  %27 = call i32 @bzero(%struct.netmap_priv_d* %26, i32 24)
  %28 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %2, align 8
  %29 = call i32 @nm_os_free(%struct.netmap_priv_d* %28)
  br label %30

30:                                               ; preds = %20, %12
  ret void
}

declare dso_local i32 @nm_os_put_module(...) #1

declare dso_local i32 @netmap_do_unregif(%struct.netmap_priv_d*) #1

declare dso_local i32 @netmap_unget_na(%struct.netmap_adapter*, i32) #1

declare dso_local i32 @bzero(%struct.netmap_priv_d*, i32) #1

declare dso_local i32 @nm_os_free(%struct.netmap_priv_d*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
