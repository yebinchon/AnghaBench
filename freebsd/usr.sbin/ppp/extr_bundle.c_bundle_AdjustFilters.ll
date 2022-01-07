; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_AdjustFilters.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_AdjustFilters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.ncpaddr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bundle_AdjustFilters(%struct.bundle* %0, %struct.ncpaddr* %1, %struct.ncpaddr* %2) #0 {
  %4 = alloca %struct.bundle*, align 8
  %5 = alloca %struct.ncpaddr*, align 8
  %6 = alloca %struct.ncpaddr*, align 8
  store %struct.bundle* %0, %struct.bundle** %4, align 8
  store %struct.ncpaddr* %1, %struct.ncpaddr** %5, align 8
  store %struct.ncpaddr* %2, %struct.ncpaddr** %6, align 8
  %7 = load %struct.bundle*, %struct.bundle** %4, align 8
  %8 = getelementptr inbounds %struct.bundle, %struct.bundle* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 3
  %10 = load %struct.ncpaddr*, %struct.ncpaddr** %5, align 8
  %11 = load %struct.ncpaddr*, %struct.ncpaddr** %6, align 8
  %12 = call i32 @filter_AdjustAddr(i32* %9, %struct.ncpaddr* %10, %struct.ncpaddr* %11, i32* null)
  %13 = load %struct.bundle*, %struct.bundle** %4, align 8
  %14 = getelementptr inbounds %struct.bundle, %struct.bundle* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load %struct.ncpaddr*, %struct.ncpaddr** %5, align 8
  %17 = load %struct.ncpaddr*, %struct.ncpaddr** %6, align 8
  %18 = call i32 @filter_AdjustAddr(i32* %15, %struct.ncpaddr* %16, %struct.ncpaddr* %17, i32* null)
  %19 = load %struct.bundle*, %struct.bundle** %4, align 8
  %20 = getelementptr inbounds %struct.bundle, %struct.bundle* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load %struct.ncpaddr*, %struct.ncpaddr** %5, align 8
  %23 = load %struct.ncpaddr*, %struct.ncpaddr** %6, align 8
  %24 = call i32 @filter_AdjustAddr(i32* %21, %struct.ncpaddr* %22, %struct.ncpaddr* %23, i32* null)
  %25 = load %struct.bundle*, %struct.bundle** %4, align 8
  %26 = getelementptr inbounds %struct.bundle, %struct.bundle* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.ncpaddr*, %struct.ncpaddr** %5, align 8
  %29 = load %struct.ncpaddr*, %struct.ncpaddr** %6, align 8
  %30 = call i32 @filter_AdjustAddr(i32* %27, %struct.ncpaddr* %28, %struct.ncpaddr* %29, i32* null)
  ret void
}

declare dso_local i32 @filter_AdjustAddr(i32*, %struct.ncpaddr*, %struct.ncpaddr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
