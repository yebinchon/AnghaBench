; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_hpts.c___tcp_set_inp_to_drop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_hpts.c___tcp_set_inp_to_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i64, i32 }
%struct.tcp_hpts_entry = type { i64, i32, i32 }
%struct.tcpcb = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__tcp_set_inp_to_drop(%struct.inpcb* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.inpcb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcp_hpts_entry*, align 8
  %8 = alloca %struct.tcpcb*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %10 = call %struct.tcpcb* @intotcpcb(%struct.inpcb* %9)
  store %struct.tcpcb* %10, %struct.tcpcb** %8, align 8
  %11 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %12 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.tcp_hpts_entry* @tcp_input_lock(i32 %13)
  store %struct.tcp_hpts_entry* %14, %struct.tcp_hpts_entry** %7, align 8
  %15 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %16 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %3
  %20 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %7, align 8
  %21 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @hpts_sane_input_insert(%struct.tcp_hpts_entry* %20, %struct.inpcb* %21, i32 %22)
  %24 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %7, align 8
  %25 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %7, align 8
  %30 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %29, i32 0, i32 1
  store i32 1, i32* %30, align 8
  %31 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %7, align 8
  %32 = call i32 @tcp_wakeinput(%struct.tcp_hpts_entry* %31)
  br label %33

33:                                               ; preds = %28, %19
  br label %45

34:                                               ; preds = %3
  %35 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %7, align 8
  %36 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %7, align 8
  %41 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %40, i32 0, i32 1
  store i32 1, i32* %41, align 8
  %42 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %7, align 8
  %43 = call i32 @tcp_wakeinput(%struct.tcp_hpts_entry* %42)
  br label %44

44:                                               ; preds = %39, %34
  br label %45

45:                                               ; preds = %44, %33
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %48 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %7, align 8
  %50 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %49, i32 0, i32 2
  %51 = call i32 @mtx_unlock(i32* %50)
  ret void
}

declare dso_local %struct.tcpcb* @intotcpcb(%struct.inpcb*) #1

declare dso_local %struct.tcp_hpts_entry* @tcp_input_lock(i32) #1

declare dso_local i32 @hpts_sane_input_insert(%struct.tcp_hpts_entry*, %struct.inpcb*, i32) #1

declare dso_local i32 @tcp_wakeinput(%struct.tcp_hpts_entry*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
