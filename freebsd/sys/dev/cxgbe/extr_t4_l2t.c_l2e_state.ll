; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_l2t.c_l2e_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_l2t.c_l2e_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2t_entry = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.l2t_entry*)* @l2e_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @l2e_state(%struct.l2t_entry* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.l2t_entry*, align 8
  store %struct.l2t_entry* %0, %struct.l2t_entry** %3, align 8
  %4 = load %struct.l2t_entry*, %struct.l2t_entry** %3, align 8
  %5 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %19 [
    i32 128, label %7
    i32 131, label %8
    i32 129, label %9
    i32 132, label %10
    i32 130, label %18
  ]

7:                                                ; preds = %1
  store i8 86, i8* %2, align 1
  br label %20

8:                                                ; preds = %1
  store i8 83, i8* %2, align 1
  br label %20

9:                                                ; preds = %1
  store i8 87, i8* %2, align 1
  br label %20

10:                                               ; preds = %1
  %11 = load %struct.l2t_entry*, %struct.l2t_entry** %3, align 8
  %12 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %11, i32 0, i32 1
  %13 = call i32 @STAILQ_EMPTY(i32* %12)
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 82, i32 65
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %2, align 1
  br label %20

18:                                               ; preds = %1
  store i8 88, i8* %2, align 1
  br label %20

19:                                               ; preds = %1
  store i8 85, i8* %2, align 1
  br label %20

20:                                               ; preds = %19, %18, %10, %9, %8, %7
  %21 = load i8, i8* %2, align 1
  ret i8 %21
}

declare dso_local i32 @STAILQ_EMPTY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
