; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_update_link_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_update_link_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%union.octeon_link_status = type { i64 }
%struct.lio = type { %struct.TYPE_6__, i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@LINK_STATE_UP = common dso_local global i32 0, align 4
@LINK_STATE_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, %union.octeon_link_status*)* @lio_update_link_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_update_link_status(%struct.ifnet* %0, %union.octeon_link_status* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %union.octeon_link_status*, align 8
  %5 = alloca %struct.lio*, align 8
  %6 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %union.octeon_link_status* %1, %union.octeon_link_status** %4, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %8 = call %struct.lio* @if_getsoftc(%struct.ifnet* %7)
  store %struct.lio* %8, %struct.lio** %5, align 8
  %9 = load %struct.lio*, %struct.lio** %5, align 8
  %10 = getelementptr inbounds %struct.lio, %struct.lio* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %union.octeon_link_status*, %union.octeon_link_status** %4, align 8
  %15 = bitcast %union.octeon_link_status* %14 to i64*
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %13, %16
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %6, align 4
  %19 = load %union.octeon_link_status*, %union.octeon_link_status** %4, align 8
  %20 = bitcast %union.octeon_link_status* %19 to i64*
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.lio*, %struct.lio** %5, align 8
  %23 = getelementptr inbounds %struct.lio, %struct.lio* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i64 %21, i64* %25, align 8
  %26 = load %struct.lio*, %struct.lio** %5, align 8
  %27 = getelementptr inbounds %struct.lio, %struct.lio* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %56

30:                                               ; preds = %2
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %30
  %34 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %35 = call i32 @print_link_info(%struct.ifnet* %34)
  %36 = load %struct.lio*, %struct.lio** %5, align 8
  %37 = getelementptr inbounds %struct.lio, %struct.lio* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = load %struct.lio*, %struct.lio** %5, align 8
  %41 = getelementptr inbounds %struct.lio, %struct.lio* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %33
  %48 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %49 = load i32, i32* @LINK_STATE_UP, align 4
  %50 = call i32 @if_link_state_change(%struct.ifnet* %48, i32 %49)
  br label %55

51:                                               ; preds = %33
  %52 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %53 = load i32, i32* @LINK_STATE_DOWN, align 4
  %54 = call i32 @if_link_state_change(%struct.ifnet* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %47
  br label %56

56:                                               ; preds = %55, %30, %2
  ret void
}

declare dso_local %struct.lio* @if_getsoftc(%struct.ifnet*) #1

declare dso_local i32 @print_link_info(%struct.ifnet*) #1

declare dso_local i32 @if_link_state_change(%struct.ifnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
