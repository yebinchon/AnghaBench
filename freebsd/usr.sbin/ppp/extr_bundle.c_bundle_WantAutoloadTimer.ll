; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_WantAutoloadTimer.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_WantAutoloadTimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { i64, %struct.datalink* }
%struct.datalink = type { i64, %struct.TYPE_2__*, %struct.datalink* }
%struct.TYPE_2__ = type { i64 }

@PHASE_NETWORK = common dso_local global i64 0, align 8
@PHYS_AUTO = common dso_local global i64 0, align 8
@DATALINK_OPEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bundle_WantAutoloadTimer(%struct.bundle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bundle*, align 8
  %4 = alloca %struct.datalink*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bundle* %0, %struct.bundle** %3, align 8
  %7 = load %struct.bundle*, %struct.bundle** %3, align 8
  %8 = getelementptr inbounds %struct.bundle, %struct.bundle* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PHASE_NETWORK, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %59

12:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  %13 = load %struct.bundle*, %struct.bundle** %3, align 8
  %14 = getelementptr inbounds %struct.bundle, %struct.bundle* %13, i32 0, i32 1
  %15 = load %struct.datalink*, %struct.datalink** %14, align 8
  store %struct.datalink* %15, %struct.datalink** %4, align 8
  br label %16

16:                                               ; preds = %54, %12
  %17 = load %struct.datalink*, %struct.datalink** %4, align 8
  %18 = icmp ne %struct.datalink* %17, null
  br i1 %18, label %19, label %58

19:                                               ; preds = %16
  %20 = load %struct.datalink*, %struct.datalink** %4, align 8
  %21 = getelementptr inbounds %struct.datalink, %struct.datalink* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PHYS_AUTO, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %19
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %27
  store i32 1, i32* %2, align 4
  br label %60

38:                                               ; preds = %34, %31
  br label %53

39:                                               ; preds = %19
  %40 = load %struct.datalink*, %struct.datalink** %4, align 8
  %41 = getelementptr inbounds %struct.datalink, %struct.datalink* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DATALINK_OPEN, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 1, i32* %2, align 4
  br label %60

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %39
  br label %53

53:                                               ; preds = %52, %38
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.datalink*, %struct.datalink** %4, align 8
  %56 = getelementptr inbounds %struct.datalink, %struct.datalink* %55, i32 0, i32 2
  %57 = load %struct.datalink*, %struct.datalink** %56, align 8
  store %struct.datalink* %57, %struct.datalink** %4, align 8
  br label %16

58:                                               ; preds = %16
  br label %59

59:                                               ; preds = %58, %1
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %50, %37
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
