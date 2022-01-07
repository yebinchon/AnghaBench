; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_nbr.c_nd6_dad_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_nbr.c_nd6_dad_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddr = type { i32 }
%struct.dadq = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nd6_dad_stop(%struct.ifaddr* %0) #0 {
  %2 = alloca %struct.ifaddr*, align 8
  %3 = alloca %struct.dadq*, align 8
  store %struct.ifaddr* %0, %struct.ifaddr** %2, align 8
  %4 = load %struct.ifaddr*, %struct.ifaddr** %2, align 8
  %5 = call %struct.dadq* @nd6_dad_find(%struct.ifaddr* %4, i32* null)
  store %struct.dadq* %5, %struct.dadq** %3, align 8
  %6 = load %struct.dadq*, %struct.dadq** %3, align 8
  %7 = icmp ne %struct.dadq* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %16

9:                                                ; preds = %1
  %10 = load %struct.dadq*, %struct.dadq** %3, align 8
  %11 = call i32 @nd6_dad_stoptimer(%struct.dadq* %10)
  %12 = load %struct.dadq*, %struct.dadq** %3, align 8
  %13 = call i32 @nd6_dad_del(%struct.dadq* %12)
  %14 = load %struct.dadq*, %struct.dadq** %3, align 8
  %15 = call i32 @nd6_dad_rele(%struct.dadq* %14)
  br label %16

16:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.dadq* @nd6_dad_find(%struct.ifaddr*, i32*) #1

declare dso_local i32 @nd6_dad_stoptimer(%struct.dadq*) #1

declare dso_local i32 @nd6_dad_del(%struct.dadq*) #1

declare dso_local i32 @nd6_dad_rele(%struct.dadq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
