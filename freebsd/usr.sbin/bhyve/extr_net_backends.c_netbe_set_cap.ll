; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_net_backends.c_netbe_set_cap.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_net_backends.c_netbe_set_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_backend = type { i32, {}*, i64 }

@VNET_HDR_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netbe_set_cap(%struct.net_backend* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_backend*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_backend* %0, %struct.net_backend** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.net_backend*, %struct.net_backend** %5, align 8
  %10 = icmp ne %struct.net_backend* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @VNET_HDR_LEN, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = load i32, i32* @VNET_HDR_LEN, align 4
  %23 = zext i32 %22 to i64
  %24 = sub i64 %23, 4
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 -1, i32* %4, align 4
  br label %57

27:                                               ; preds = %19, %15, %3
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.net_backend*, %struct.net_backend** %5, align 8
  %30 = getelementptr inbounds %struct.net_backend, %struct.net_backend* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.net_backend*, %struct.net_backend** %5, align 8
  %32 = getelementptr inbounds %struct.net_backend, %struct.net_backend* %31, i32 0, i32 1
  %33 = bitcast {}** %32 to i32 (%struct.net_backend*, i32, i32)**
  %34 = load i32 (%struct.net_backend*, i32, i32)*, i32 (%struct.net_backend*, i32, i32)** %33, align 8
  %35 = load %struct.net_backend*, %struct.net_backend** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 %34(%struct.net_backend* %35, i32 %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.net_backend*, %struct.net_backend** %5, align 8
  %40 = getelementptr inbounds %struct.net_backend, %struct.net_backend* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %27
  %44 = load %struct.net_backend*, %struct.net_backend** %5, align 8
  %45 = getelementptr inbounds %struct.net_backend, %struct.net_backend* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.net_backend*, %struct.net_backend** %5, align 8
  %48 = getelementptr inbounds %struct.net_backend, %struct.net_backend* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = zext i32 %49 to i64
  %51 = icmp eq i64 %46, %50
  br label %52

52:                                               ; preds = %43, %27
  %53 = phi i1 [ true, %27 ], [ %51, %43 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %52, %26
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
