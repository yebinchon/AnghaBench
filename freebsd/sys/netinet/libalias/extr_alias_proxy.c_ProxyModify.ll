; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_proxy.c_ProxyModify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_proxy.c_ProxyModify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32 }
%struct.alias_link = type { i32 }
%struct.ip = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ProxyModify(%struct.libalias* %0, %struct.alias_link* %1, %struct.ip* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.libalias*, align 8
  %7 = alloca %struct.alias_link*, align 8
  %8 = alloca %struct.ip*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.libalias* %0, %struct.libalias** %6, align 8
  store %struct.alias_link* %1, %struct.alias_link** %7, align 8
  store %struct.ip* %2, %struct.ip** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.libalias*, %struct.libalias** %6, align 8
  %12 = call i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias* %11)
  %13 = load %struct.libalias*, %struct.libalias** %6, align 8
  %14 = load i32, i32* %10, align 4
  switch i32 %14, label %24 [
    i32 129, label %15
    i32 128, label %19
  ]

15:                                               ; preds = %5
  %16 = load %struct.ip*, %struct.ip** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @ProxyEncodeIpHeader(%struct.ip* %16, i32 %17)
  br label %24

19:                                               ; preds = %5
  %20 = load %struct.alias_link*, %struct.alias_link** %7, align 8
  %21 = load %struct.ip*, %struct.ip** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @ProxyEncodeTcpStream(%struct.alias_link* %20, %struct.ip* %21, i32 %22)
  br label %24

24:                                               ; preds = %5, %19, %15
  ret void
}

declare dso_local i32 @LIBALIAS_LOCK_ASSERT(%struct.libalias*) #1

declare dso_local i32 @ProxyEncodeIpHeader(%struct.ip*, i32) #1

declare dso_local i32 @ProxyEncodeTcpStream(%struct.alias_link*, %struct.ip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
