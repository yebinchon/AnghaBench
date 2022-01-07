; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_nbr.c_nd6_dad_ns_input.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_nbr.c_nd6_dad_ns_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddr = type { i32 }
%struct.nd_opt_nonce = type { i32 }
%struct.dadq = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"ifa == NULL in nd6_dad_ns_input\00", align 1
@V_dad_enhanced = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifaddr*, %struct.nd_opt_nonce*)* @nd6_dad_ns_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nd6_dad_ns_input(%struct.ifaddr* %0, %struct.nd_opt_nonce* %1) #0 {
  %3 = alloca %struct.ifaddr*, align 8
  %4 = alloca %struct.nd_opt_nonce*, align 8
  %5 = alloca %struct.dadq*, align 8
  store %struct.ifaddr* %0, %struct.ifaddr** %3, align 8
  store %struct.nd_opt_nonce* %1, %struct.nd_opt_nonce** %4, align 8
  %6 = load %struct.ifaddr*, %struct.ifaddr** %3, align 8
  %7 = icmp eq %struct.ifaddr* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %2
  %11 = load i64, i64* @V_dad_enhanced, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store %struct.nd_opt_nonce* null, %struct.nd_opt_nonce** %4, align 8
  br label %14

14:                                               ; preds = %13, %10
  %15 = load %struct.ifaddr*, %struct.ifaddr** %3, align 8
  %16 = load %struct.nd_opt_nonce*, %struct.nd_opt_nonce** %4, align 8
  %17 = call %struct.dadq* @nd6_dad_find(%struct.ifaddr* %15, %struct.nd_opt_nonce* %16)
  store %struct.dadq* %17, %struct.dadq** %5, align 8
  %18 = load %struct.dadq*, %struct.dadq** %5, align 8
  %19 = icmp eq %struct.dadq* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %28

21:                                               ; preds = %14
  %22 = load %struct.dadq*, %struct.dadq** %5, align 8
  %23 = getelementptr inbounds %struct.dadq, %struct.dadq* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load %struct.dadq*, %struct.dadq** %5, align 8
  %27 = call i32 @nd6_dad_rele(%struct.dadq* %26)
  br label %28

28:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local %struct.dadq* @nd6_dad_find(%struct.ifaddr*, %struct.nd_opt_nonce*) #1

declare dso_local i32 @nd6_dad_rele(%struct.dadq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
