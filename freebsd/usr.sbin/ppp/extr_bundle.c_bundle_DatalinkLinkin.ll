; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_DatalinkLinkin.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_DatalinkLinkin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { %struct.TYPE_2__, %struct.datalink* }
%struct.TYPE_2__ = type { i32 }
%struct.datalink = type { %struct.datalink* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bundle*, %struct.datalink*)* @bundle_DatalinkLinkin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bundle_DatalinkLinkin(%struct.bundle* %0, %struct.datalink* %1) #0 {
  %3 = alloca %struct.bundle*, align 8
  %4 = alloca %struct.datalink*, align 8
  %5 = alloca %struct.datalink**, align 8
  store %struct.bundle* %0, %struct.bundle** %3, align 8
  store %struct.datalink* %1, %struct.datalink** %4, align 8
  %6 = load %struct.bundle*, %struct.bundle** %3, align 8
  %7 = getelementptr inbounds %struct.bundle, %struct.bundle* %6, i32 0, i32 1
  store %struct.datalink** %7, %struct.datalink*** %5, align 8
  br label %8

8:                                                ; preds = %12, %2
  %9 = load %struct.datalink**, %struct.datalink*** %5, align 8
  %10 = load %struct.datalink*, %struct.datalink** %9, align 8
  %11 = icmp ne %struct.datalink* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load %struct.datalink**, %struct.datalink*** %5, align 8
  %14 = load %struct.datalink*, %struct.datalink** %13, align 8
  %15 = getelementptr inbounds %struct.datalink, %struct.datalink* %14, i32 0, i32 0
  store %struct.datalink** %15, %struct.datalink*** %5, align 8
  br label %8

16:                                               ; preds = %8
  %17 = load %struct.datalink*, %struct.datalink** %4, align 8
  %18 = load %struct.datalink**, %struct.datalink*** %5, align 8
  store %struct.datalink* %17, %struct.datalink** %18, align 8
  %19 = load %struct.datalink*, %struct.datalink** %4, align 8
  %20 = getelementptr inbounds %struct.datalink, %struct.datalink* %19, i32 0, i32 0
  store %struct.datalink* null, %struct.datalink** %20, align 8
  %21 = load %struct.bundle*, %struct.bundle** %3, align 8
  %22 = load %struct.datalink*, %struct.datalink** %4, align 8
  %23 = call i32 @bundle_LinkAdded(%struct.bundle* %21, %struct.datalink* %22)
  %24 = load %struct.bundle*, %struct.bundle** %3, align 8
  %25 = getelementptr inbounds %struct.bundle, %struct.bundle* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @mp_CheckAutoloadTimer(i32* %26)
  ret void
}

declare dso_local i32 @bundle_LinkAdded(%struct.bundle*, %struct.datalink*) #1

declare dso_local i32 @mp_CheckAutoloadTimer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
