; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_hpts.c___tcp_hpts_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_hpts.c___tcp_hpts_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32 }
%struct.tcp_hpts_entry = type { i32 }

@HPTS_REMOVE_OUTPUT = common dso_local global i32 0, align 4
@HPTS_REMOVE_INPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__tcp_hpts_remove(%struct.inpcb* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.inpcb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcp_hpts_entry*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %9 = call i32 @INP_WLOCK_ASSERT(%struct.inpcb* %8)
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @HPTS_REMOVE_OUTPUT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %16 = call %struct.tcp_hpts_entry* @tcp_hpts_lock(%struct.inpcb* %15)
  store %struct.tcp_hpts_entry* %16, %struct.tcp_hpts_entry** %7, align 8
  %17 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %7, align 8
  %18 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @tcp_hpts_remove_locked_output(%struct.tcp_hpts_entry* %17, %struct.inpcb* %18, i32 %19, i32 %20)
  %22 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %7, align 8
  %23 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %22, i32 0, i32 0
  %24 = call i32 @mtx_unlock(i32* %23)
  br label %25

25:                                               ; preds = %14, %3
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @HPTS_REMOVE_INPUT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %32 = call %struct.tcp_hpts_entry* @tcp_input_lock(%struct.inpcb* %31)
  store %struct.tcp_hpts_entry* %32, %struct.tcp_hpts_entry** %7, align 8
  %33 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %7, align 8
  %34 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @tcp_hpts_remove_locked_input(%struct.tcp_hpts_entry* %33, %struct.inpcb* %34, i32 %35, i32 %36)
  %38 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %7, align 8
  %39 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %38, i32 0, i32 0
  %40 = call i32 @mtx_unlock(i32* %39)
  br label %41

41:                                               ; preds = %30, %25
  ret void
}

declare dso_local i32 @INP_WLOCK_ASSERT(%struct.inpcb*) #1

declare dso_local %struct.tcp_hpts_entry* @tcp_hpts_lock(%struct.inpcb*) #1

declare dso_local i32 @tcp_hpts_remove_locked_output(%struct.tcp_hpts_entry*, %struct.inpcb*, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local %struct.tcp_hpts_entry* @tcp_input_lock(%struct.inpcb*) #1

declare dso_local i32 @tcp_hpts_remove_locked_input(%struct.tcp_hpts_entry*, %struct.inpcb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
