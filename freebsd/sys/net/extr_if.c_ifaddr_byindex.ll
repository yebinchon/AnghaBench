; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if.c_ifaddr_byindex.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if.c_ifaddr_byindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddr = type { i32 }
%struct.ifnet = type { %struct.ifaddr* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ifaddr* @ifaddr_byindex(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ifaddr*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.ifaddr* null, %struct.ifaddr** %4, align 8
  %5 = call i32 (...) @NET_EPOCH_ASSERT()
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.ifnet* @ifnet_byindex(i32 %6)
  store %struct.ifnet* %7, %struct.ifnet** %3, align 8
  %8 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %9 = icmp ne %struct.ifnet* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 0
  %13 = load %struct.ifaddr*, %struct.ifaddr** %12, align 8
  store %struct.ifaddr* %13, %struct.ifaddr** %4, align 8
  %14 = icmp ne %struct.ifaddr* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %17 = call i32 @ifa_ref(%struct.ifaddr* %16)
  br label %18

18:                                               ; preds = %15, %10, %1
  %19 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  ret %struct.ifaddr* %19
}

declare dso_local i32 @NET_EPOCH_ASSERT(...) #1

declare dso_local %struct.ifnet* @ifnet_byindex(i32) #1

declare dso_local i32 @ifa_ref(%struct.ifaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
