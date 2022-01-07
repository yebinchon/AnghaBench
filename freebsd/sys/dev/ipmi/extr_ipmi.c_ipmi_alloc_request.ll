; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi.c_ipmi_alloc_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi.c_ipmi_alloc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_request = type { i32 }
%struct.ipmi_device = type { i32 }

@M_IPMI = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ipmi_request* @ipmi_alloc_request(%struct.ipmi_device* %0, i64 %1, i32 %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.ipmi_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ipmi_request*, align 8
  store %struct.ipmi_device* %0, %struct.ipmi_device** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load i64, i64* %11, align 8
  %15 = add i64 4, %14
  %16 = load i64, i64* %12, align 8
  %17 = add i64 %15, %16
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* @M_IPMI, align 4
  %20 = load i32, i32* @M_WAITOK, align 4
  %21 = load i32, i32* @M_ZERO, align 4
  %22 = or i32 %20, %21
  %23 = call %struct.ipmi_request* @malloc(i32 %18, i32 %19, i32 %22)
  store %struct.ipmi_request* %23, %struct.ipmi_request** %13, align 8
  %24 = load %struct.ipmi_request*, %struct.ipmi_request** %13, align 8
  %25 = load %struct.ipmi_device*, %struct.ipmi_device** %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* %12, align 8
  %31 = call i32 @ipmi_init_request(%struct.ipmi_request* %24, %struct.ipmi_device* %25, i64 %26, i32 %27, i32 %28, i64 %29, i64 %30)
  %32 = load %struct.ipmi_request*, %struct.ipmi_request** %13, align 8
  ret %struct.ipmi_request* %32
}

declare dso_local %struct.ipmi_request* @malloc(i32, i32, i32) #1

declare dso_local i32 @ipmi_init_request(%struct.ipmi_request*, %struct.ipmi_device*, i64, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
