; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_HighestState.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_HighestState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { %struct.datalink* }
%struct.datalink = type { i32, %struct.datalink* }

@DATALINK_CLOSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bundle_HighestState(%struct.bundle* %0) #0 {
  %2 = alloca %struct.bundle*, align 8
  %3 = alloca %struct.datalink*, align 8
  %4 = alloca i32, align 4
  store %struct.bundle* %0, %struct.bundle** %2, align 8
  %5 = load i32, i32* @DATALINK_CLOSED, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.bundle*, %struct.bundle** %2, align 8
  %7 = getelementptr inbounds %struct.bundle, %struct.bundle* %6, i32 0, i32 0
  %8 = load %struct.datalink*, %struct.datalink** %7, align 8
  store %struct.datalink* %8, %struct.datalink** %3, align 8
  br label %9

9:                                                ; preds = %23, %1
  %10 = load %struct.datalink*, %struct.datalink** %3, align 8
  %11 = icmp ne %struct.datalink* %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %9
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.datalink*, %struct.datalink** %3, align 8
  %15 = getelementptr inbounds %struct.datalink, %struct.datalink* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.datalink*, %struct.datalink** %3, align 8
  %20 = getelementptr inbounds %struct.datalink, %struct.datalink* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %18, %12
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.datalink*, %struct.datalink** %3, align 8
  %25 = getelementptr inbounds %struct.datalink, %struct.datalink* %24, i32 0, i32 1
  %26 = load %struct.datalink*, %struct.datalink** %25, align 8
  store %struct.datalink* %26, %struct.datalink** %3, align 8
  br label %9

27:                                               ; preds = %9
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
