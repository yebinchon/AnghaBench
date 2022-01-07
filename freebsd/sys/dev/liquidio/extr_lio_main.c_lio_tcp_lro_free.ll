; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_tcp_lro_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_tcp_lro_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, %struct.lio_droq** }
%struct.lio_droq = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.ifnet = type { i32 }
%struct.lio = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*, %struct.ifnet*)* @lio_tcp_lro_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_tcp_lro_free(%struct.octeon_device* %0, %struct.ifnet* %1) #0 {
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.lio*, align 8
  %6 = alloca %struct.lio_droq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  store %struct.ifnet* %1, %struct.ifnet** %4, align 8
  %9 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %10 = call %struct.lio* @if_getsoftc(%struct.ifnet* %9)
  store %struct.lio* %10, %struct.lio** %5, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %48, %2
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %14 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %51

17:                                               ; preds = %11
  %18 = load %struct.lio*, %struct.lio** %5, align 8
  %19 = getelementptr inbounds %struct.lio, %struct.lio* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %29 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %28, i32 0, i32 1
  %30 = load %struct.lio_droq**, %struct.lio_droq*** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.lio_droq*, %struct.lio_droq** %30, i64 %32
  %34 = load %struct.lio_droq*, %struct.lio_droq** %33, align 8
  store %struct.lio_droq* %34, %struct.lio_droq** %6, align 8
  %35 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %36 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %17
  %41 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %42 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %41, i32 0, i32 0
  %43 = call i32 @tcp_lro_free(%struct.TYPE_8__* %42)
  %44 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %45 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %40, %17
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %11

51:                                               ; preds = %11
  ret void
}

declare dso_local %struct.lio* @if_getsoftc(%struct.ifnet*) #1

declare dso_local i32 @tcp_lro_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
