; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_AdjustDNS.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_AdjustDNS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.in_addr* }
%struct.in_addr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bundle_AdjustDNS(%struct.bundle* %0) #0 {
  %2 = alloca %struct.bundle*, align 8
  %3 = alloca %struct.in_addr*, align 8
  store %struct.bundle* %0, %struct.bundle** %2, align 8
  %4 = load %struct.bundle*, %struct.bundle** %2, align 8
  %5 = getelementptr inbounds %struct.bundle, %struct.bundle* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.in_addr*, %struct.in_addr** %8, align 8
  store %struct.in_addr* %9, %struct.in_addr** %3, align 8
  %10 = load %struct.bundle*, %struct.bundle** %2, align 8
  %11 = getelementptr inbounds %struct.bundle, %struct.bundle* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 3
  %13 = load %struct.in_addr*, %struct.in_addr** %3, align 8
  %14 = call i32 @filter_AdjustAddr(i32* %12, i32* null, i32* null, %struct.in_addr* %13)
  %15 = load %struct.bundle*, %struct.bundle** %2, align 8
  %16 = getelementptr inbounds %struct.bundle, %struct.bundle* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %18 = load %struct.in_addr*, %struct.in_addr** %3, align 8
  %19 = call i32 @filter_AdjustAddr(i32* %17, i32* null, i32* null, %struct.in_addr* %18)
  %20 = load %struct.bundle*, %struct.bundle** %2, align 8
  %21 = getelementptr inbounds %struct.bundle, %struct.bundle* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load %struct.in_addr*, %struct.in_addr** %3, align 8
  %24 = call i32 @filter_AdjustAddr(i32* %22, i32* null, i32* null, %struct.in_addr* %23)
  %25 = load %struct.bundle*, %struct.bundle** %2, align 8
  %26 = getelementptr inbounds %struct.bundle, %struct.bundle* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.in_addr*, %struct.in_addr** %3, align 8
  %29 = call i32 @filter_AdjustAddr(i32* %27, i32* null, i32* null, %struct.in_addr* %28)
  ret void
}

declare dso_local i32 @filter_AdjustAddr(i32*, i32*, i32*, %struct.in_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
