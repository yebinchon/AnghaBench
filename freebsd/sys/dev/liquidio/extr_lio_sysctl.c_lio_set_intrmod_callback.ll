; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_sysctl.c_lio_set_intrmod_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_sysctl.c_lio_set_intrmod_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32 }
%struct.lio_soft_command = type { i64 }
%struct.lio_intrmod_context = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*, i32, i8*)* @lio_set_intrmod_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_set_intrmod_callback(%struct.octeon_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.lio_soft_command*, align 8
  %8 = alloca %struct.lio_intrmod_context*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.lio_soft_command*
  store %struct.lio_soft_command* %10, %struct.lio_soft_command** %7, align 8
  %11 = load %struct.lio_soft_command*, %struct.lio_soft_command** %7, align 8
  %12 = getelementptr inbounds %struct.lio_soft_command, %struct.lio_soft_command* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.lio_intrmod_context*
  store %struct.lio_intrmod_context* %14, %struct.lio_intrmod_context** %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.lio_intrmod_context*, %struct.lio_intrmod_context** %8, align 8
  %17 = getelementptr inbounds %struct.lio_intrmod_context, %struct.lio_intrmod_context* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.lio_intrmod_context*, %struct.lio_intrmod_context** %8, align 8
  %19 = getelementptr inbounds %struct.lio_intrmod_context, %struct.lio_intrmod_context* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = call i32 (...) @wmb()
  ret void
}

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
