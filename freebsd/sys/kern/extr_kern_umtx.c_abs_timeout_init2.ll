; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_abs_timeout_init2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_abs_timeout_init2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abs_timeout = type { i32 }
%struct._umtx_time = type { i32, i32, i32 }

@UMTX_ABSTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.abs_timeout*, %struct._umtx_time*)* @abs_timeout_init2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @abs_timeout_init2(%struct.abs_timeout* %0, %struct._umtx_time* %1) #0 {
  %3 = alloca %struct.abs_timeout*, align 8
  %4 = alloca %struct._umtx_time*, align 8
  store %struct.abs_timeout* %0, %struct.abs_timeout** %3, align 8
  store %struct._umtx_time* %1, %struct._umtx_time** %4, align 8
  %5 = load %struct.abs_timeout*, %struct.abs_timeout** %3, align 8
  %6 = load %struct._umtx_time*, %struct._umtx_time** %4, align 8
  %7 = getelementptr inbounds %struct._umtx_time, %struct._umtx_time* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct._umtx_time*, %struct._umtx_time** %4, align 8
  %10 = getelementptr inbounds %struct._umtx_time, %struct._umtx_time* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @UMTX_ABSTIME, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = load %struct._umtx_time*, %struct._umtx_time** %4, align 8
  %17 = getelementptr inbounds %struct._umtx_time, %struct._umtx_time* %16, i32 0, i32 1
  %18 = call i32 @abs_timeout_init(%struct.abs_timeout* %5, i32 %8, i32 %15, i32* %17)
  ret void
}

declare dso_local i32 @abs_timeout_init(%struct.abs_timeout*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
