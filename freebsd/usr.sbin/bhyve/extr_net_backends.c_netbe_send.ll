; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_net_backends.c_netbe_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_net_backends.c_netbe_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_backend = type { i64, i64, i32 (%struct.net_backend*, %struct.iovec*, i32)* }
%struct.iovec = type opaque
%struct.iovec.0 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netbe_send(%struct.net_backend* %0, %struct.iovec.0* %1, i32 %2) #0 {
  %4 = alloca %struct.net_backend*, align 8
  %5 = alloca %struct.iovec.0*, align 8
  %6 = alloca i32, align 4
  store %struct.net_backend* %0, %struct.net_backend** %4, align 8
  store %struct.iovec.0* %1, %struct.iovec.0** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.net_backend*, %struct.net_backend** %4, align 8
  %8 = icmp ne %struct.net_backend* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.net_backend*, %struct.net_backend** %4, align 8
  %12 = getelementptr inbounds %struct.net_backend, %struct.net_backend* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.net_backend*, %struct.net_backend** %4, align 8
  %15 = getelementptr inbounds %struct.net_backend, %struct.net_backend* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %13, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %3
  %19 = load %struct.net_backend*, %struct.net_backend** %4, align 8
  %20 = getelementptr inbounds %struct.net_backend, %struct.net_backend* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.iovec.0*, %struct.iovec.0** %5, align 8
  %26 = load %struct.net_backend*, %struct.net_backend** %4, align 8
  %27 = getelementptr inbounds %struct.net_backend, %struct.net_backend* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call %struct.iovec.0* @iov_trim(%struct.iovec.0* %25, i32* %6, i64 %28)
  store %struct.iovec.0* %29, %struct.iovec.0** %5, align 8
  br label %30

30:                                               ; preds = %18, %3
  %31 = load %struct.net_backend*, %struct.net_backend** %4, align 8
  %32 = getelementptr inbounds %struct.net_backend, %struct.net_backend* %31, i32 0, i32 2
  %33 = load i32 (%struct.net_backend*, %struct.iovec*, i32)*, i32 (%struct.net_backend*, %struct.iovec*, i32)** %32, align 8
  %34 = load %struct.net_backend*, %struct.net_backend** %4, align 8
  %35 = load %struct.iovec.0*, %struct.iovec.0** %5, align 8
  %36 = bitcast %struct.iovec.0* %35 to %struct.iovec*
  %37 = load i32, i32* %6, align 4
  %38 = call i32 %33(%struct.net_backend* %34, %struct.iovec* %36, i32 %37)
  ret i32 %38
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.iovec.0* @iov_trim(%struct.iovec.0*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
