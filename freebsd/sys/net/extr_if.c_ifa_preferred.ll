; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if.c_ifa_preferred.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if.c_ifa_preferred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddr = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifa_preferred(%struct.ifaddr* %0, %struct.ifaddr* %1) #0 {
  %3 = alloca %struct.ifaddr*, align 8
  %4 = alloca %struct.ifaddr*, align 8
  store %struct.ifaddr* %0, %struct.ifaddr** %3, align 8
  store %struct.ifaddr* %1, %struct.ifaddr** %4, align 8
  %5 = load %struct.ifaddr*, %struct.ifaddr** %3, align 8
  %6 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %2
  %10 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %11 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %9
  %15 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %16 = call i64 @carp_master_p(%struct.ifaddr* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load %struct.ifaddr*, %struct.ifaddr** %3, align 8
  %20 = call i64 @carp_master_p(%struct.ifaddr* %19)
  %21 = icmp ne i64 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %18, %14
  %24 = phi i1 [ false, %14 ], [ %22, %18 ]
  br label %25

25:                                               ; preds = %23, %9
  %26 = phi i1 [ true, %9 ], [ %24, %23 ]
  br label %27

27:                                               ; preds = %25, %2
  %28 = phi i1 [ false, %2 ], [ %26, %25 ]
  %29 = zext i1 %28 to i32
  ret i32 %29
}

declare dso_local i64 @carp_master_p(%struct.ifaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
