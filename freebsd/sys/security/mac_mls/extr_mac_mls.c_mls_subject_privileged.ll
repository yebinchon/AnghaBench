; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_mls/extr_mac_mls.c_mls_subject_privileged.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_mls/extr_mac_mls.c_mls_subject_privileged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_mls = type { i32, %struct.TYPE_5__, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@MAC_MLS_FLAGS_BOTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"mls_subject_privileged: subject doesn't have both labels\00", align 1
@MAC_MLS_TYPE_EQUAL = common dso_local global i64 0, align 8
@MAC_MLS_TYPE_LOW = common dso_local global i64 0, align 8
@MAC_MLS_TYPE_HIGH = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mac_mls*)* @mls_subject_privileged to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mls_subject_privileged(%struct.mac_mls* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mac_mls*, align 8
  store %struct.mac_mls* %0, %struct.mac_mls** %3, align 8
  %4 = load %struct.mac_mls*, %struct.mac_mls** %3, align 8
  %5 = getelementptr inbounds %struct.mac_mls, %struct.mac_mls* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @MAC_MLS_FLAGS_BOTH, align 4
  %8 = and i32 %6, %7
  %9 = load i32, i32* @MAC_MLS_FLAGS_BOTH, align 4
  %10 = icmp eq i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @KASSERT(i32 %11, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.mac_mls*, %struct.mac_mls** %3, align 8
  %14 = getelementptr inbounds %struct.mac_mls, %struct.mac_mls* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MAC_MLS_TYPE_EQUAL, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

20:                                               ; preds = %1
  %21 = load %struct.mac_mls*, %struct.mac_mls** %3, align 8
  %22 = getelementptr inbounds %struct.mac_mls, %struct.mac_mls* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MAC_MLS_TYPE_EQUAL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %34, label %27

27:                                               ; preds = %20
  %28 = load %struct.mac_mls*, %struct.mac_mls** %3, align 8
  %29 = getelementptr inbounds %struct.mac_mls, %struct.mac_mls* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MAC_MLS_TYPE_EQUAL, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27, %20
  store i32 0, i32* %2, align 4
  br label %52

35:                                               ; preds = %27
  %36 = load %struct.mac_mls*, %struct.mac_mls** %3, align 8
  %37 = getelementptr inbounds %struct.mac_mls, %struct.mac_mls* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MAC_MLS_TYPE_LOW, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %35
  %43 = load %struct.mac_mls*, %struct.mac_mls** %3, align 8
  %44 = getelementptr inbounds %struct.mac_mls, %struct.mac_mls* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MAC_MLS_TYPE_HIGH, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %52

50:                                               ; preds = %42, %35
  %51 = load i32, i32* @EPERM, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %49, %34, %19
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
