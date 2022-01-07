; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_nbr.c_nd6_dad_na_input.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_nbr.c_nd6_dad_na_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddr = type { i32 }
%struct.dadq = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"ifa == NULL in nd6_dad_na_input\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifaddr*)* @nd6_dad_na_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nd6_dad_na_input(%struct.ifaddr* %0) #0 {
  %2 = alloca %struct.ifaddr*, align 8
  %3 = alloca %struct.dadq*, align 8
  store %struct.ifaddr* %0, %struct.ifaddr** %2, align 8
  %4 = load %struct.ifaddr*, %struct.ifaddr** %2, align 8
  %5 = icmp eq %struct.ifaddr* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %1
  %9 = load %struct.ifaddr*, %struct.ifaddr** %2, align 8
  %10 = call %struct.dadq* @nd6_dad_find(%struct.ifaddr* %9, i32* null)
  store %struct.dadq* %10, %struct.dadq** %3, align 8
  %11 = load %struct.dadq*, %struct.dadq** %3, align 8
  %12 = icmp ne %struct.dadq* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = load %struct.dadq*, %struct.dadq** %3, align 8
  %15 = getelementptr inbounds %struct.dadq, %struct.dadq* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = load %struct.dadq*, %struct.dadq** %3, align 8
  %19 = call i32 @nd6_dad_rele(%struct.dadq* %18)
  br label %20

20:                                               ; preds = %13, %8
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local %struct.dadq* @nd6_dad_find(%struct.ifaddr*, i32*) #1

declare dso_local i32 @nd6_dad_rele(%struct.dadq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
