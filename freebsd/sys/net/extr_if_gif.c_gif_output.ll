; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_gif.c_gif_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_gif.c_gif_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 (%struct.ifnet*, %struct.mbuf*)* }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sockaddr = type { i64, i32 }
%struct.route = type { i32 }

@AF_UNSPEC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gif_output(%struct.ifnet* %0, %struct.mbuf* %1, %struct.sockaddr* %2, %struct.route* %3) #0 {
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.route*, align 8
  %9 = alloca i64, align 8
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %7, align 8
  store %struct.route* %3, %struct.route** %8, align 8
  %10 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %11 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AF_UNSPEC, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %17 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @bcopy(i32 %18, i64* %9, i32 8)
  br label %24

20:                                               ; preds = %4
  %21 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %22 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %9, align 8
  br label %24

24:                                               ; preds = %20, %15
  %25 = load i64, i64* %9, align 8
  %26 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %27 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i64 %25, i64* %28, align 8
  %29 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %30 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %29, i32 0, i32 0
  %31 = load i32 (%struct.ifnet*, %struct.mbuf*)*, i32 (%struct.ifnet*, %struct.mbuf*)** %30, align 8
  %32 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %33 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %34 = call i32 %31(%struct.ifnet* %32, %struct.mbuf* %33)
  ret i32 %34
}

declare dso_local i32 @bcopy(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
