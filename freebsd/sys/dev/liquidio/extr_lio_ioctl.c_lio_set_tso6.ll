; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_ioctl.c_lio_set_tso6.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_ioctl.c_lio_set_tso6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.lio = type { i32 }

@IFCAP_TSO6 = common dso_local global i32 0, align 4
@CSUM_IP6_TSO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"TSO6 capability not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*)* @lio_set_tso6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_set_tso6(%struct.ifnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.lio*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  %5 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %6 = call %struct.lio* @if_getsoftc(%struct.ifnet* %5)
  store %struct.lio* %6, %struct.lio** %4, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %8 = call i32 @if_getcapabilities(%struct.ifnet* %7)
  %9 = load i32, i32* @IFCAP_TSO6, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %1
  %13 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %14 = load i32, i32* @IFCAP_TSO6, align 4
  %15 = call i32 @if_togglecapenable(%struct.ifnet* %13, i32 %14)
  %16 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %17 = call i32 @if_getcapenable(%struct.ifnet* %16)
  %18 = load i32, i32* @IFCAP_TSO6, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %12
  %22 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %23 = load i32, i32* @CSUM_IP6_TSO, align 4
  %24 = call i32 @if_sethwassistbits(%struct.ifnet* %22, i32 %23, i32 0)
  br label %29

25:                                               ; preds = %12
  %26 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %27 = load i32, i32* @CSUM_IP6_TSO, align 4
  %28 = call i32 @if_sethwassistbits(%struct.ifnet* %26, i32 0, i32 %27)
  br label %29

29:                                               ; preds = %25, %21
  br label %36

30:                                               ; preds = %1
  %31 = load %struct.lio*, %struct.lio** %4, align 8
  %32 = getelementptr inbounds %struct.lio, %struct.lio* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @lio_dev_info(i32 %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %2, align 4
  br label %37

36:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %30
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.lio* @if_getsoftc(%struct.ifnet*) #1

declare dso_local i32 @if_getcapabilities(%struct.ifnet*) #1

declare dso_local i32 @if_togglecapenable(%struct.ifnet*, i32) #1

declare dso_local i32 @if_getcapenable(%struct.ifnet*) #1

declare dso_local i32 @if_sethwassistbits(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @lio_dev_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
