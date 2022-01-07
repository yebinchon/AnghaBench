; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_mls/extr_mac_mls.c_mls_contains_equal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_mls/extr_mac_mls.c_mls_contains_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_mls = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@MAC_MLS_FLAG_EFFECTIVE = common dso_local global i32 0, align 4
@MAC_MLS_TYPE_EQUAL = common dso_local global i64 0, align 8
@MAC_MLS_FLAG_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mac_mls*)* @mls_contains_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mls_contains_equal(%struct.mac_mls* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mac_mls*, align 8
  store %struct.mac_mls* %0, %struct.mac_mls** %3, align 8
  %4 = load %struct.mac_mls*, %struct.mac_mls** %3, align 8
  %5 = getelementptr inbounds %struct.mac_mls, %struct.mac_mls* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @MAC_MLS_FLAG_EFFECTIVE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.mac_mls*, %struct.mac_mls** %3, align 8
  %12 = getelementptr inbounds %struct.mac_mls, %struct.mac_mls* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MAC_MLS_TYPE_EQUAL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %44

18:                                               ; preds = %10
  br label %19

19:                                               ; preds = %18, %1
  %20 = load %struct.mac_mls*, %struct.mac_mls** %3, align 8
  %21 = getelementptr inbounds %struct.mac_mls, %struct.mac_mls* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @MAC_MLS_FLAG_RANGE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %19
  %27 = load %struct.mac_mls*, %struct.mac_mls** %3, align 8
  %28 = getelementptr inbounds %struct.mac_mls, %struct.mac_mls* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MAC_MLS_TYPE_EQUAL, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %44

34:                                               ; preds = %26
  %35 = load %struct.mac_mls*, %struct.mac_mls** %3, align 8
  %36 = getelementptr inbounds %struct.mac_mls, %struct.mac_mls* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MAC_MLS_TYPE_EQUAL, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 1, i32* %2, align 4
  br label %44

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42, %19
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %41, %33, %17
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
