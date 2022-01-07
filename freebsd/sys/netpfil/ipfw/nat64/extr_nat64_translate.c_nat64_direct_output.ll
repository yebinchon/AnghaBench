; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64_translate.c_nat64_direct_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64_translate.c_nat64_direct_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 (%struct.ifnet*, %struct.mbuf*, %struct.sockaddr*, i32*)* }
%struct.mbuf = type { i32 }
%struct.sockaddr = type { i32 }
%struct.nat64_counters = type { i32 }

@oerrors = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.mbuf*, %struct.sockaddr*, %struct.nat64_counters*, i8*)* @nat64_direct_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nat64_direct_output(%struct.ifnet* %0, %struct.mbuf* %1, %struct.sockaddr* %2, %struct.nat64_counters* %3, i8* %4) #0 {
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca %struct.nat64_counters*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %6, align 8
  store %struct.mbuf* %1, %struct.mbuf** %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store %struct.nat64_counters* %3, %struct.nat64_counters** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load i8*, i8** %10, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %5
  %15 = load i8*, i8** %10, align 8
  %16 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %17 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %18 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @nat64_log(i8* %15, %struct.mbuf* %16, i32 %19)
  br label %21

21:                                               ; preds = %14, %5
  %22 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %23 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %22, i32 0, i32 0
  %24 = load i32 (%struct.ifnet*, %struct.mbuf*, %struct.sockaddr*, i32*)*, i32 (%struct.ifnet*, %struct.mbuf*, %struct.sockaddr*, i32*)** %23, align 8
  %25 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %26 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %27 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %28 = call i32 %24(%struct.ifnet* %25, %struct.mbuf* %26, %struct.sockaddr* %27, i32* null)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %21
  %32 = load %struct.nat64_counters*, %struct.nat64_counters** %9, align 8
  %33 = load i32, i32* @oerrors, align 4
  %34 = call i32 @NAT64STAT_INC(%struct.nat64_counters* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %21
  %36 = load i32, i32* %11, align 4
  ret i32 %36
}

declare dso_local i32 @nat64_log(i8*, %struct.mbuf*, i32) #1

declare dso_local i32 @NAT64STAT_INC(%struct.nat64_counters*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
