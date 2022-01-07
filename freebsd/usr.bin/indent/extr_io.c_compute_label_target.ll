; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/indent/extr_io.c_compute_label_target.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/indent/extr_io.c_compute_label_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32 }

@ps = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@case_ind = common dso_local global i32 0, align 4
@opt = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@s_lab = common dso_local global i8* null, align 8
@label_offset = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compute_label_target() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 1), align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = load i32, i32* @case_ind, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 0), align 4
  %6 = mul nsw i32 %4, %5
  %7 = add nsw i32 %6, 1
  br label %23

8:                                                ; preds = %0
  %9 = load i8*, i8** @s_lab, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 35
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %21

14:                                               ; preds = %8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 0), align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 0), align 8
  %17 = load i32, i32* @label_offset, align 4
  %18 = sub nsw i32 %16, %17
  %19 = mul nsw i32 %15, %18
  %20 = add nsw i32 %19, 1
  br label %21

21:                                               ; preds = %14, %13
  %22 = phi i32 [ 1, %13 ], [ %20, %14 ]
  br label %23

23:                                               ; preds = %21, %3
  %24 = phi i32 [ %7, %3 ], [ %22, %21 ]
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
