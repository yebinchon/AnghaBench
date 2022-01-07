; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_tcp_lro_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_tcp_lro_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, %struct.lio_droq** }
%struct.lio_droq = type { %struct.lro_ctrl }
%struct.lro_ctrl = type { %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.lio = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"LRO Initialization failed ret %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_device*, %struct.ifnet*)* @lio_tcp_lro_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_tcp_lro_init(%struct.octeon_device* %0, %struct.ifnet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.lio*, align 8
  %7 = alloca %struct.lio_droq*, align 8
  %8 = alloca %struct.lro_ctrl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %4, align 8
  store %struct.ifnet* %1, %struct.ifnet** %5, align 8
  %12 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %13 = call %struct.lio* @if_getsoftc(%struct.ifnet* %12)
  store %struct.lio* %13, %struct.lio** %6, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %52, %2
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %17 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %55

20:                                               ; preds = %14
  %21 = load %struct.lio*, %struct.lio** %6, align 8
  %22 = getelementptr inbounds %struct.lio, %struct.lio* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %10, align 4
  %31 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %32 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %31, i32 0, i32 1
  %33 = load %struct.lio_droq**, %struct.lio_droq*** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.lio_droq*, %struct.lio_droq** %33, i64 %35
  %37 = load %struct.lio_droq*, %struct.lio_droq** %36, align 8
  store %struct.lio_droq* %37, %struct.lio_droq** %7, align 8
  %38 = load %struct.lio_droq*, %struct.lio_droq** %7, align 8
  %39 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %38, i32 0, i32 0
  store %struct.lro_ctrl* %39, %struct.lro_ctrl** %8, align 8
  %40 = load %struct.lro_ctrl*, %struct.lro_ctrl** %8, align 8
  %41 = call i32 @tcp_lro_init(%struct.lro_ctrl* %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %20
  %45 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @lio_dev_err(%struct.octeon_device* %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %57

48:                                               ; preds = %20
  %49 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %50 = load %struct.lro_ctrl*, %struct.lro_ctrl** %8, align 8
  %51 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %50, i32 0, i32 0
  store %struct.ifnet* %49, %struct.ifnet** %51, align 8
  br label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %14

55:                                               ; preds = %14
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %3, align 4
  br label %62

57:                                               ; preds = %44
  %58 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %59 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %60 = call i32 @lio_tcp_lro_free(%struct.octeon_device* %58, %struct.ifnet* %59)
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %57, %55
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.lio* @if_getsoftc(%struct.ifnet*) #1

declare dso_local i32 @tcp_lro_init(%struct.lro_ctrl*) #1

declare dso_local i32 @lio_dev_err(%struct.octeon_device*, i8*, i32) #1

declare dso_local i32 @lio_tcp_lro_free(%struct.octeon_device*, %struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
