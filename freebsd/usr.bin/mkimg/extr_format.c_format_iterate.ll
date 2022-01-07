; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_format.c_format_iterate.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mkimg/extr_format.c_format_iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mkimg_format = type { %struct.mkimg_format* }

@first = common dso_local global %struct.mkimg_format* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mkimg_format* @format_iterate(%struct.mkimg_format* %0) #0 {
  %2 = alloca %struct.mkimg_format*, align 8
  store %struct.mkimg_format* %0, %struct.mkimg_format** %2, align 8
  %3 = load %struct.mkimg_format*, %struct.mkimg_format** %2, align 8
  %4 = icmp eq %struct.mkimg_format* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load %struct.mkimg_format*, %struct.mkimg_format** @first, align 8
  br label %11

7:                                                ; preds = %1
  %8 = load %struct.mkimg_format*, %struct.mkimg_format** %2, align 8
  %9 = getelementptr inbounds %struct.mkimg_format, %struct.mkimg_format* %8, i32 0, i32 0
  %10 = load %struct.mkimg_format*, %struct.mkimg_format** %9, align 8
  br label %11

11:                                               ; preds = %7, %5
  %12 = phi %struct.mkimg_format* [ %6, %5 ], [ %10, %7 ]
  ret %struct.mkimg_format* %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
