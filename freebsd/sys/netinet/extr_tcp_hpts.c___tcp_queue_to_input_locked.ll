; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_hpts.c___tcp_queue_to_input_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_hpts.c___tcp_queue_to_input_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i64 }
%struct.tcp_hpts_entry = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__tcp_queue_to_input_locked(%struct.inpcb* %0, %struct.tcp_hpts_entry* %1, i32 %2) #0 {
  %4 = alloca %struct.inpcb*, align 8
  %5 = alloca %struct.tcp_hpts_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.inpcb* %0, %struct.inpcb** %4, align 8
  store %struct.tcp_hpts_entry* %1, %struct.tcp_hpts_entry** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %5, align 8
  %9 = call i32 @HPTS_MTX_ASSERT(%struct.tcp_hpts_entry* %8)
  %10 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %11 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %3
  %15 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %5, align 8
  %16 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @hpts_sane_input_insert(%struct.tcp_hpts_entry* %15, %struct.inpcb* %16, i32 %17)
  store i32 1, i32* %7, align 4
  %19 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %5, align 8
  %20 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %14
  store i32 2, i32* %7, align 4
  %24 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %5, align 8
  %25 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %24, i32 0, i32 1
  store i32 1, i32* %25, align 8
  %26 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %5, align 8
  %27 = call i32 @tcp_wakeinput(%struct.tcp_hpts_entry* %26)
  br label %28

28:                                               ; preds = %23, %14
  br label %40

29:                                               ; preds = %3
  %30 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %5, align 8
  %31 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  store i32 4, i32* %7, align 4
  %35 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %5, align 8
  %36 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %35, i32 0, i32 1
  store i32 1, i32* %36, align 8
  %37 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %5, align 8
  %38 = call i32 @tcp_wakeinput(%struct.tcp_hpts_entry* %37)
  br label %39

39:                                               ; preds = %34, %29
  br label %40

40:                                               ; preds = %39, %28
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32 @HPTS_MTX_ASSERT(%struct.tcp_hpts_entry*) #1

declare dso_local i32 @hpts_sane_input_insert(%struct.tcp_hpts_entry*, %struct.inpcb*, i32) #1

declare dso_local i32 @tcp_wakeinput(%struct.tcp_hpts_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
