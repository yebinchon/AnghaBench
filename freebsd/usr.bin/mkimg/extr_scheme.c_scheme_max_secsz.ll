; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_scheme.c_scheme_max_secsz.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_scheme.c_scheme_max_secsz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@scheme = common dso_local global %struct.TYPE_2__* null, align 8
@INT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @scheme_max_secsz() #0 {
  %1 = load %struct.TYPE_2__*, %struct.TYPE_2__** @scheme, align 8
  %2 = icmp eq %struct.TYPE_2__* %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i64, i64* @INT_MAX, align 8
  %5 = add nsw i64 %4, 1
  br label %10

6:                                                ; preds = %0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @scheme, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  br label %10

10:                                               ; preds = %6, %3
  %11 = phi i64 [ %5, %3 ], [ %9, %6 ]
  ret i64 %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
