; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbdc.c_kbdc_data_ready.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbdc.c_kbdc_data_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@KBDS_ANY_BUFFER_FULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kbdc_data_ready(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call %struct.TYPE_3__* @kbdcp(i32 %3)
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %6 = call i64 @availq(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = call %struct.TYPE_3__* @kbdcp(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = call i64 @availq(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %8
  %15 = load i32, i32* %2, align 4
  %16 = call %struct.TYPE_3__* @kbdcp(i32 %15)
  %17 = call i32 @read_status(%struct.TYPE_3__* %16)
  %18 = load i32, i32* @KBDS_ANY_BUFFER_FULL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %14, %8, %1
  %22 = phi i1 [ true, %8 ], [ true, %1 ], [ %20, %14 ]
  %23 = zext i1 %22 to i32
  ret i32 %23
}

declare dso_local i64 @availq(i32*) #1

declare dso_local %struct.TYPE_3__* @kbdcp(i32) #1

declare dso_local i32 @read_status(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
