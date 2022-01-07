; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_throughput.c_throughput_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_throughput.c_throughput_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pppThroughput = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @throughput_destroy(%struct.pppThroughput* %0) #0 {
  %2 = alloca %struct.pppThroughput*, align 8
  store %struct.pppThroughput* %0, %struct.pppThroughput** %2, align 8
  %3 = load %struct.pppThroughput*, %struct.pppThroughput** %2, align 8
  %4 = icmp ne %struct.pppThroughput* %3, null
  br i1 %4, label %5, label %30

5:                                                ; preds = %1
  %6 = load %struct.pppThroughput*, %struct.pppThroughput** %2, align 8
  %7 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %30

11:                                               ; preds = %5
  %12 = load %struct.pppThroughput*, %struct.pppThroughput** %2, align 8
  %13 = call i32 @throughput_stop(%struct.pppThroughput* %12)
  %14 = load %struct.pppThroughput*, %struct.pppThroughput** %2, align 8
  %15 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @free(i32* %17)
  %19 = load %struct.pppThroughput*, %struct.pppThroughput** %2, align 8
  %20 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @free(i32* %22)
  %24 = load %struct.pppThroughput*, %struct.pppThroughput** %2, align 8
  %25 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  %27 = load %struct.pppThroughput*, %struct.pppThroughput** %2, align 8
  %28 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %11, %5, %1
  ret void
}

declare dso_local i32 @throughput_stop(%struct.pppThroughput*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
