; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_rr.c_remove_queue_q.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_rr.c_remove_queue_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rr_queue = type { i32, %struct.rr_queue* }
%struct.rr_si = type { %struct.rr_queue*, %struct.rr_queue* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rr_queue*, %struct.rr_si*)* @remove_queue_q to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_queue_q(%struct.rr_queue* %0, %struct.rr_si* %1) #0 {
  %3 = alloca %struct.rr_queue*, align 8
  %4 = alloca %struct.rr_si*, align 8
  %5 = alloca %struct.rr_queue*, align 8
  store %struct.rr_queue* %0, %struct.rr_queue** %3, align 8
  store %struct.rr_si* %1, %struct.rr_si** %4, align 8
  %6 = load %struct.rr_queue*, %struct.rr_queue** %3, align 8
  %7 = getelementptr inbounds %struct.rr_queue, %struct.rr_queue* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %56

11:                                               ; preds = %2
  %12 = load %struct.rr_queue*, %struct.rr_queue** %3, align 8
  %13 = load %struct.rr_si*, %struct.rr_si** %4, align 8
  %14 = getelementptr inbounds %struct.rr_si, %struct.rr_si* %13, i32 0, i32 1
  %15 = load %struct.rr_queue*, %struct.rr_queue** %14, align 8
  %16 = icmp eq %struct.rr_queue* %12, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load %struct.rr_si*, %struct.rr_si** %4, align 8
  %19 = call i32 @rr_remove_head(%struct.rr_si* %18)
  br label %56

20:                                               ; preds = %11
  %21 = load %struct.rr_si*, %struct.rr_si** %4, align 8
  %22 = getelementptr inbounds %struct.rr_si, %struct.rr_si* %21, i32 0, i32 1
  %23 = load %struct.rr_queue*, %struct.rr_queue** %22, align 8
  store %struct.rr_queue* %23, %struct.rr_queue** %5, align 8
  br label %24

24:                                               ; preds = %52, %20
  %25 = load %struct.rr_queue*, %struct.rr_queue** %5, align 8
  %26 = icmp ne %struct.rr_queue* %25, null
  br i1 %26, label %27, label %56

27:                                               ; preds = %24
  %28 = load %struct.rr_queue*, %struct.rr_queue** %5, align 8
  %29 = getelementptr inbounds %struct.rr_queue, %struct.rr_queue* %28, i32 0, i32 1
  %30 = load %struct.rr_queue*, %struct.rr_queue** %29, align 8
  %31 = load %struct.rr_queue*, %struct.rr_queue** %3, align 8
  %32 = icmp ne %struct.rr_queue* %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %52

34:                                               ; preds = %27
  %35 = load %struct.rr_queue*, %struct.rr_queue** %3, align 8
  %36 = getelementptr inbounds %struct.rr_queue, %struct.rr_queue* %35, i32 0, i32 1
  %37 = load %struct.rr_queue*, %struct.rr_queue** %36, align 8
  %38 = load %struct.rr_queue*, %struct.rr_queue** %5, align 8
  %39 = getelementptr inbounds %struct.rr_queue, %struct.rr_queue* %38, i32 0, i32 1
  store %struct.rr_queue* %37, %struct.rr_queue** %39, align 8
  %40 = load %struct.rr_queue*, %struct.rr_queue** %3, align 8
  %41 = load %struct.rr_si*, %struct.rr_si** %4, align 8
  %42 = getelementptr inbounds %struct.rr_si, %struct.rr_si* %41, i32 0, i32 0
  %43 = load %struct.rr_queue*, %struct.rr_queue** %42, align 8
  %44 = icmp eq %struct.rr_queue* %40, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %34
  %46 = load %struct.rr_queue*, %struct.rr_queue** %5, align 8
  %47 = load %struct.rr_si*, %struct.rr_si** %4, align 8
  %48 = getelementptr inbounds %struct.rr_si, %struct.rr_si* %47, i32 0, i32 0
  store %struct.rr_queue* %46, %struct.rr_queue** %48, align 8
  br label %49

49:                                               ; preds = %45, %34
  %50 = load %struct.rr_queue*, %struct.rr_queue** %3, align 8
  %51 = getelementptr inbounds %struct.rr_queue, %struct.rr_queue* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  br label %56

52:                                               ; preds = %33
  %53 = load %struct.rr_queue*, %struct.rr_queue** %5, align 8
  %54 = getelementptr inbounds %struct.rr_queue, %struct.rr_queue* %53, i32 0, i32 1
  %55 = load %struct.rr_queue*, %struct.rr_queue** %54, align 8
  store %struct.rr_queue* %55, %struct.rr_queue** %5, align 8
  br label %24

56:                                               ; preds = %10, %17, %49, %24
  ret void
}

declare dso_local i32 @rr_remove_head(%struct.rr_si*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
