; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_kn_list_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_kn_list_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knlist = type { i32, i32 (i32)* }
%struct.knote = type { %struct.knlist* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.knlist* (%struct.knote*)* @kn_list_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.knlist* @kn_list_lock(%struct.knote* %0) #0 {
  %2 = alloca %struct.knote*, align 8
  %3 = alloca %struct.knlist*, align 8
  store %struct.knote* %0, %struct.knote** %2, align 8
  %4 = load %struct.knote*, %struct.knote** %2, align 8
  %5 = getelementptr inbounds %struct.knote, %struct.knote* %4, i32 0, i32 0
  %6 = load %struct.knlist*, %struct.knlist** %5, align 8
  store %struct.knlist* %6, %struct.knlist** %3, align 8
  %7 = load %struct.knlist*, %struct.knlist** %3, align 8
  %8 = icmp ne %struct.knlist* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.knlist*, %struct.knlist** %3, align 8
  %11 = getelementptr inbounds %struct.knlist, %struct.knlist* %10, i32 0, i32 1
  %12 = load i32 (i32)*, i32 (i32)** %11, align 8
  %13 = load %struct.knlist*, %struct.knlist** %3, align 8
  %14 = getelementptr inbounds %struct.knlist, %struct.knlist* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 %12(i32 %15)
  br label %17

17:                                               ; preds = %9, %1
  %18 = load %struct.knlist*, %struct.knlist** %3, align 8
  ret %struct.knlist* %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
