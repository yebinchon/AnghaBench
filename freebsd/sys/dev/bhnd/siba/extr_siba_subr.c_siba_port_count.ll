; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba_subr.c_siba_port_count.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/siba/extr_siba_subr.c_siba_port_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siba_core_id = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @siba_port_count(%struct.siba_core_id* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.siba_core_id*, align 8
  %5 = alloca i32, align 4
  store %struct.siba_core_id* %0, %struct.siba_core_id** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %19 [
    i32 128, label %7
    i32 129, label %12
  ]

7:                                                ; preds = %2
  %8 = load %struct.siba_core_id*, %struct.siba_core_id** %4, align 8
  %9 = getelementptr inbounds %struct.siba_core_id, %struct.siba_core_id* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @min(i32 %10, i32 2)
  store i32 %11, i32* %3, align 4
  br label %20

12:                                               ; preds = %2
  %13 = load %struct.siba_core_id*, %struct.siba_core_id** %4, align 8
  %14 = getelementptr inbounds %struct.siba_core_id, %struct.siba_core_id* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %20

18:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %18, %17, %7
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
