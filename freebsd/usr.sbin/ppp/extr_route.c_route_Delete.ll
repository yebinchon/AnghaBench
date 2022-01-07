; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_route.c_route_Delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_route.c_route_Delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sticky_route = type { i32, %struct.sticky_route*, i32 }
%struct.ncprange = type { i32 }

@ROUTE_DSTANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @route_Delete(%struct.sticky_route** %0, i32 %1, %struct.ncprange* %2) #0 {
  %4 = alloca %struct.sticky_route**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ncprange*, align 8
  %7 = alloca %struct.sticky_route*, align 8
  %8 = alloca i32, align 4
  store %struct.sticky_route** %0, %struct.sticky_route*** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ncprange* %2, %struct.ncprange** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @ROUTE_DSTANY, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %8, align 4
  br label %12

12:                                               ; preds = %48, %3
  %13 = load %struct.sticky_route**, %struct.sticky_route*** %4, align 8
  %14 = load %struct.sticky_route*, %struct.sticky_route** %13, align 8
  %15 = icmp ne %struct.sticky_route* %14, null
  br i1 %15, label %16, label %52

16:                                               ; preds = %12
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.sticky_route**, %struct.sticky_route*** %4, align 8
  %22 = load %struct.sticky_route*, %struct.sticky_route** %21, align 8
  %23 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ROUTE_DSTANY, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %20, %26
  br i1 %27, label %38, label %28

28:                                               ; preds = %19, %16
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %47, label %31

31:                                               ; preds = %28
  %32 = load %struct.ncprange*, %struct.ncprange** %6, align 8
  %33 = load %struct.sticky_route**, %struct.sticky_route*** %4, align 8
  %34 = load %struct.sticky_route*, %struct.sticky_route** %33, align 8
  %35 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %34, i32 0, i32 2
  %36 = call i64 @ncprange_equal(%struct.ncprange* %32, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %31, %19
  %39 = load %struct.sticky_route**, %struct.sticky_route*** %4, align 8
  %40 = load %struct.sticky_route*, %struct.sticky_route** %39, align 8
  store %struct.sticky_route* %40, %struct.sticky_route** %7, align 8
  %41 = load %struct.sticky_route*, %struct.sticky_route** %7, align 8
  %42 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %41, i32 0, i32 1
  %43 = load %struct.sticky_route*, %struct.sticky_route** %42, align 8
  %44 = load %struct.sticky_route**, %struct.sticky_route*** %4, align 8
  store %struct.sticky_route* %43, %struct.sticky_route** %44, align 8
  %45 = load %struct.sticky_route*, %struct.sticky_route** %7, align 8
  %46 = call i32 @free(%struct.sticky_route* %45)
  br label %52

47:                                               ; preds = %31, %28
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.sticky_route**, %struct.sticky_route*** %4, align 8
  %50 = load %struct.sticky_route*, %struct.sticky_route** %49, align 8
  %51 = getelementptr inbounds %struct.sticky_route, %struct.sticky_route* %50, i32 0, i32 1
  store %struct.sticky_route** %51, %struct.sticky_route*** %4, align 8
  br label %12

52:                                               ; preds = %38, %12
  ret void
}

declare dso_local i64 @ncprange_equal(%struct.ncprange*, i32*) #1

declare dso_local i32 @free(%struct.sticky_route*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
