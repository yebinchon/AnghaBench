; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_route.c_sys_setfib.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_route.c_sys_setfib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.setfib_args = type { i64 }

@rt_numfibs = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_setfib(%struct.thread* %0, %struct.setfib_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.setfib_args*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.setfib_args* %1, %struct.setfib_args** %5, align 8
  %6 = load %struct.setfib_args*, %struct.setfib_args** %5, align 8
  %7 = getelementptr inbounds %struct.setfib_args, %struct.setfib_args* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load %struct.setfib_args*, %struct.setfib_args** %5, align 8
  %12 = getelementptr inbounds %struct.setfib_args, %struct.setfib_args* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @rt_numfibs, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %10, %2
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %3, align 4
  br label %26

18:                                               ; preds = %10
  %19 = load %struct.setfib_args*, %struct.setfib_args** %5, align 8
  %20 = getelementptr inbounds %struct.setfib_args, %struct.setfib_args* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.thread*, %struct.thread** %4, align 8
  %23 = getelementptr inbounds %struct.thread, %struct.thread* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i64 %21, i64* %25, align 8
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %18, %16
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
