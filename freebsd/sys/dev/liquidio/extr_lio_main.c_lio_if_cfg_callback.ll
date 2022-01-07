; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_if_cfg_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_if_cfg_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.lio_soft_command = type { i64, i64 }
%struct.lio_if_cfg_resp = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i8* }
%struct.lio_if_cfg_context = type { i32, i32 }

@.str = private unnamed_addr constant [54 x i8] c"nic if cfg instruction failed. Status: %llx (0x%08x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*, i32, i8*)* @lio_if_cfg_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_if_cfg_callback(%struct.octeon_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.lio_soft_command*, align 8
  %8 = alloca %struct.lio_if_cfg_resp*, align 8
  %9 = alloca %struct.lio_if_cfg_context*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.lio_soft_command*
  store %struct.lio_soft_command* %11, %struct.lio_soft_command** %7, align 8
  %12 = load %struct.lio_soft_command*, %struct.lio_soft_command** %7, align 8
  %13 = getelementptr inbounds %struct.lio_soft_command, %struct.lio_soft_command* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.lio_if_cfg_resp*
  store %struct.lio_if_cfg_resp* %15, %struct.lio_if_cfg_resp** %8, align 8
  %16 = load %struct.lio_soft_command*, %struct.lio_soft_command** %7, align 8
  %17 = getelementptr inbounds %struct.lio_soft_command, %struct.lio_soft_command* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.lio_if_cfg_context*
  store %struct.lio_if_cfg_context* %19, %struct.lio_if_cfg_context** %9, align 8
  %20 = load %struct.lio_if_cfg_context*, %struct.lio_if_cfg_context** %9, align 8
  %21 = getelementptr inbounds %struct.lio_if_cfg_context, %struct.lio_if_cfg_context* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.octeon_device* @lio_get_device(i32 %22)
  store %struct.octeon_device* %23, %struct.octeon_device** %4, align 8
  %24 = load %struct.lio_if_cfg_resp*, %struct.lio_if_cfg_resp** %8, align 8
  %25 = getelementptr inbounds %struct.lio_if_cfg_resp, %struct.lio_if_cfg_resp* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %3
  %29 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %30 = load %struct.lio_if_cfg_resp*, %struct.lio_if_cfg_resp** %8, align 8
  %31 = getelementptr inbounds %struct.lio_if_cfg_resp, %struct.lio_if_cfg_resp* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @LIO_CAST64(i64 %32)
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @lio_dev_err(%struct.octeon_device* %29, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %28, %3
  %37 = load %struct.lio_if_cfg_context*, %struct.lio_if_cfg_context** %9, align 8
  %38 = getelementptr inbounds %struct.lio_if_cfg_context, %struct.lio_if_cfg_context* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %40 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.lio_if_cfg_resp*, %struct.lio_if_cfg_resp** %8, align 8
  %44 = getelementptr inbounds %struct.lio_if_cfg_resp, %struct.lio_if_cfg_resp* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @snprintf(i32 %42, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  %48 = call i32 (...) @wmb()
  ret void
}

declare dso_local %struct.octeon_device* @lio_get_device(i32) #1

declare dso_local i32 @lio_dev_err(%struct.octeon_device*, i8*, i32, i32) #1

declare dso_local i32 @LIO_CAST64(i64) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
