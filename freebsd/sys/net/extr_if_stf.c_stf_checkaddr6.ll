; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_stf.c_stf_checkaddr6.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_stf.c_stf_checkaddr6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stf_softc = type { i32 }
%struct.in6_addr = type { i32 }
%struct.ifnet = type { i32 }
%struct.in_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stf_softc*, %struct.in6_addr*, %struct.ifnet*)* @stf_checkaddr6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stf_checkaddr6(%struct.stf_softc* %0, %struct.in6_addr* %1, %struct.ifnet* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stf_softc*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %struct.in_addr, align 4
  store %struct.stf_softc* %0, %struct.stf_softc** %5, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %6, align 8
  store %struct.ifnet* %2, %struct.ifnet** %7, align 8
  %9 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %10 = call i64 @IN6_IS_ADDR_6TO4(%struct.in6_addr* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %14 = call i32 @GET_V4(%struct.in6_addr* %13)
  %15 = call i32 @bcopy(i32 %14, %struct.in_addr* %8, i32 4)
  %16 = load %struct.stf_softc*, %struct.stf_softc** %5, align 8
  %17 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %18 = call i32 @stf_checkaddr4(%struct.stf_softc* %16, %struct.in_addr* %8, %struct.ifnet* %17)
  store i32 %18, i32* %4, align 4
  br label %29

19:                                               ; preds = %3
  %20 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %21 = call i64 @IN6_IS_ADDR_V4COMPAT(%struct.in6_addr* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %25 = call i64 @IN6_IS_ADDR_V4MAPPED(%struct.in6_addr* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %19
  store i32 -1, i32* %4, align 4
  br label %29

28:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %28, %27, %12
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i64 @IN6_IS_ADDR_6TO4(%struct.in6_addr*) #1

declare dso_local i32 @bcopy(i32, %struct.in_addr*, i32) #1

declare dso_local i32 @GET_V4(%struct.in6_addr*) #1

declare dso_local i32 @stf_checkaddr4(%struct.stf_softc*, %struct.in_addr*, %struct.ifnet*) #1

declare dso_local i64 @IN6_IS_ADDR_V4COMPAT(%struct.in6_addr*) #1

declare dso_local i64 @IN6_IS_ADDR_V4MAPPED(%struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
