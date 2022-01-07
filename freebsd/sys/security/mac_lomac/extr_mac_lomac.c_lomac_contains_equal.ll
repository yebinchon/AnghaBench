; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_contains_equal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_contains_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_lomac = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@MAC_LOMAC_FLAG_SINGLE = common dso_local global i32 0, align 4
@MAC_LOMAC_TYPE_EQUAL = common dso_local global i64 0, align 8
@MAC_LOMAC_FLAG_AUX = common dso_local global i32 0, align 4
@MAC_LOMAC_FLAG_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mac_lomac*)* @lomac_contains_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lomac_contains_equal(%struct.mac_lomac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mac_lomac*, align 8
  store %struct.mac_lomac* %0, %struct.mac_lomac** %3, align 8
  %4 = load %struct.mac_lomac*, %struct.mac_lomac** %3, align 8
  %5 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @MAC_LOMAC_FLAG_SINGLE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.mac_lomac*, %struct.mac_lomac** %3, align 8
  %12 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MAC_LOMAC_TYPE_EQUAL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %60

18:                                               ; preds = %10
  br label %19

19:                                               ; preds = %18, %1
  %20 = load %struct.mac_lomac*, %struct.mac_lomac** %3, align 8
  %21 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @MAC_LOMAC_FLAG_AUX, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = load %struct.mac_lomac*, %struct.mac_lomac** %3, align 8
  %28 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MAC_LOMAC_TYPE_EQUAL, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %60

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %19
  %36 = load %struct.mac_lomac*, %struct.mac_lomac** %3, align 8
  %37 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @MAC_LOMAC_FLAG_RANGE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %35
  %43 = load %struct.mac_lomac*, %struct.mac_lomac** %3, align 8
  %44 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MAC_LOMAC_TYPE_EQUAL, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i32 1, i32* %2, align 4
  br label %60

50:                                               ; preds = %42
  %51 = load %struct.mac_lomac*, %struct.mac_lomac** %3, align 8
  %52 = getelementptr inbounds %struct.mac_lomac, %struct.mac_lomac* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @MAC_LOMAC_TYPE_EQUAL, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store i32 1, i32* %2, align 4
  br label %60

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58, %35
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %57, %49, %33, %17
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
