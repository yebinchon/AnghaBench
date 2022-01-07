; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_sysctl.c_lio_get_intrmod_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_sysctl.c_lio_get_intrmod_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.lio_soft_command = type { i64 }
%struct.lio = type { i32 }
%struct.lio_intrmod_resp = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Failed to get intrmod\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*, i64, i8*)* @lio_get_intrmod_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_get_intrmod_callback(%struct.octeon_device* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.lio_soft_command*, align 8
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca %struct.lio*, align 8
  %10 = alloca %struct.lio_intrmod_resp*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.lio_soft_command*
  store %struct.lio_soft_command* %12, %struct.lio_soft_command** %7, align 8
  %13 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %14 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.ifnet*, %struct.ifnet** %15, align 8
  store %struct.ifnet* %16, %struct.ifnet** %8, align 8
  %17 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %18 = call %struct.lio* @if_getsoftc(%struct.ifnet* %17)
  store %struct.lio* %18, %struct.lio** %9, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %23 = call i32 @lio_dev_err(%struct.octeon_device* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %37

24:                                               ; preds = %3
  %25 = load %struct.lio_soft_command*, %struct.lio_soft_command** %7, align 8
  %26 = getelementptr inbounds %struct.lio_soft_command, %struct.lio_soft_command* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.lio_intrmod_resp*
  store %struct.lio_intrmod_resp* %28, %struct.lio_intrmod_resp** %10, align 8
  %29 = load %struct.lio_intrmod_resp*, %struct.lio_intrmod_resp** %10, align 8
  %30 = getelementptr inbounds %struct.lio_intrmod_resp, %struct.lio_intrmod_resp* %29, i32 0, i32 0
  %31 = call i32 @lio_swap_8B_data(i32* %30, i32 0)
  %32 = load %struct.lio*, %struct.lio** %9, align 8
  %33 = getelementptr inbounds %struct.lio, %struct.lio* %32, i32 0, i32 0
  %34 = load %struct.lio_intrmod_resp*, %struct.lio_intrmod_resp** %10, align 8
  %35 = getelementptr inbounds %struct.lio_intrmod_resp, %struct.lio_intrmod_resp* %34, i32 0, i32 0
  %36 = call i32 @memcpy(i32* %33, i32* %35, i32 4)
  br label %37

37:                                               ; preds = %24, %21
  %38 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %39 = load %struct.lio_soft_command*, %struct.lio_soft_command** %7, align 8
  %40 = call i32 @lio_free_soft_command(%struct.octeon_device* %38, %struct.lio_soft_command* %39)
  ret void
}

declare dso_local %struct.lio* @if_getsoftc(%struct.ifnet*) #1

declare dso_local i32 @lio_dev_err(%struct.octeon_device*, i8*) #1

declare dso_local i32 @lio_swap_8B_data(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @lio_free_soft_command(%struct.octeon_device*, %struct.lio_soft_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
