; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipv6cp.c_ipv6cp_QueueLen.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipv6cp.c_ipv6cp_QueueLen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipv6cp = type { %struct.mqueue* }
%struct.mqueue = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ipv6cp_QueueLen(%struct.ipv6cp* %0) #0 {
  %2 = alloca %struct.ipv6cp*, align 8
  %3 = alloca %struct.mqueue*, align 8
  %4 = alloca i64, align 8
  store %struct.ipv6cp* %0, %struct.ipv6cp** %2, align 8
  store i64 0, i64* %4, align 8
  %5 = load %struct.ipv6cp*, %struct.ipv6cp** %2, align 8
  %6 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %5, i32 0, i32 0
  %7 = load %struct.mqueue*, %struct.mqueue** %6, align 8
  store %struct.mqueue* %7, %struct.mqueue** %3, align 8
  br label %8

8:                                                ; preds = %24, %1
  %9 = load %struct.mqueue*, %struct.mqueue** %3, align 8
  %10 = load %struct.ipv6cp*, %struct.ipv6cp** %2, align 8
  %11 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %10, i32 0, i32 0
  %12 = load %struct.mqueue*, %struct.mqueue** %11, align 8
  %13 = load %struct.ipv6cp*, %struct.ipv6cp** %2, align 8
  %14 = call i32 @IPV6CP_QUEUES(%struct.ipv6cp* %13)
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %12, i64 %15
  %17 = icmp ult %struct.mqueue* %9, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %8
  %19 = load %struct.mqueue*, %struct.mqueue** %3, align 8
  %20 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = add i64 %22, %21
  store i64 %23, i64* %4, align 8
  br label %24

24:                                               ; preds = %18
  %25 = load %struct.mqueue*, %struct.mqueue** %3, align 8
  %26 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %25, i32 1
  store %struct.mqueue* %26, %struct.mqueue** %3, align 8
  br label %8

27:                                               ; preds = %8
  %28 = load i64, i64* %4, align 8
  ret i64 %28
}

declare dso_local i32 @IPV6CP_QUEUES(%struct.ipv6cp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
