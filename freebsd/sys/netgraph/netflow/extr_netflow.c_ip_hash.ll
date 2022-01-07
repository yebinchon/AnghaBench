; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/netflow/extr_netflow.c_ip_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/netflow/extr_netflow.c_ip_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_rec = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flow_rec*)* @ip_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_hash(%struct.flow_rec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.flow_rec*, align 8
  store %struct.flow_rec* %0, %struct.flow_rec** %3, align 8
  %4 = load %struct.flow_rec*, %struct.flow_rec** %3, align 8
  %5 = getelementptr inbounds %struct.flow_rec, %struct.flow_rec* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %23 [
    i32 129, label %7
    i32 128, label %7
  ]

7:                                                ; preds = %1, %1
  %8 = load %struct.flow_rec*, %struct.flow_rec** %3, align 8
  %9 = getelementptr inbounds %struct.flow_rec, %struct.flow_rec* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.flow_rec*, %struct.flow_rec** %3, align 8
  %13 = getelementptr inbounds %struct.flow_rec, %struct.flow_rec* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.flow_rec*, %struct.flow_rec** %3, align 8
  %17 = getelementptr inbounds %struct.flow_rec, %struct.flow_rec* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.flow_rec*, %struct.flow_rec** %3, align 8
  %20 = getelementptr inbounds %struct.flow_rec, %struct.flow_rec* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @FULL_HASH(i32 %11, i32 %15, i32 %18, i32 %21)
  store i32 %22, i32* %2, align 4
  br label %33

23:                                               ; preds = %1
  %24 = load %struct.flow_rec*, %struct.flow_rec** %3, align 8
  %25 = getelementptr inbounds %struct.flow_rec, %struct.flow_rec* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.flow_rec*, %struct.flow_rec** %3, align 8
  %29 = getelementptr inbounds %struct.flow_rec, %struct.flow_rec* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ADDR_HASH(i32 %27, i32 %31)
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %23, %7
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @FULL_HASH(i32, i32, i32, i32) #1

declare dso_local i32 @ADDR_HASH(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
