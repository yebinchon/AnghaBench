; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_net_backends.c_netbe_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_net_backends.c_netbe_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_backend = type { i32 (%struct.net_backend*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netbe_cleanup(%struct.net_backend* %0) #0 {
  %2 = alloca %struct.net_backend*, align 8
  store %struct.net_backend* %0, %struct.net_backend** %2, align 8
  %3 = load %struct.net_backend*, %struct.net_backend** %2, align 8
  %4 = icmp ne %struct.net_backend* %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load %struct.net_backend*, %struct.net_backend** %2, align 8
  %7 = getelementptr inbounds %struct.net_backend, %struct.net_backend* %6, i32 0, i32 0
  %8 = load i32 (%struct.net_backend*)*, i32 (%struct.net_backend*)** %7, align 8
  %9 = load %struct.net_backend*, %struct.net_backend** %2, align 8
  %10 = call i32 %8(%struct.net_backend* %9)
  %11 = load %struct.net_backend*, %struct.net_backend** %2, align 8
  %12 = call i32 @free(%struct.net_backend* %11)
  br label %13

13:                                               ; preds = %5, %1
  ret void
}

declare dso_local i32 @free(%struct.net_backend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
