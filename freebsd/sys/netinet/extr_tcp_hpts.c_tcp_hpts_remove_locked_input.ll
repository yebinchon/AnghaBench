; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_hpts.c_tcp_hpts_remove_locked_input.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_hpts.c_tcp_hpts_remove_locked_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_hpts_entry = type { i32 }
%struct.inpcb = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_hpts_entry*, %struct.inpcb*, i32, i32)* @tcp_hpts_remove_locked_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_hpts_remove_locked_input(%struct.tcp_hpts_entry* %0, %struct.inpcb* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.tcp_hpts_entry*, align 8
  %6 = alloca %struct.inpcb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tcp_hpts_entry* %0, %struct.tcp_hpts_entry** %5, align 8
  store %struct.inpcb* %1, %struct.inpcb** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %5, align 8
  %10 = call i32 @HPTS_MTX_ASSERT(%struct.tcp_hpts_entry* %9)
  %11 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %12 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %4
  %16 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %5, align 8
  %17 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %18 = call i32 @hpts_sane_input_remove(%struct.tcp_hpts_entry* %16, %struct.inpcb* %17, i32 1)
  %19 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %20 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %5, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @tcp_remove_hpts_ref(%struct.inpcb* %19, %struct.tcp_hpts_entry* %20, i32 %21)
  br label %23

23:                                               ; preds = %15, %4
  ret void
}

declare dso_local i32 @HPTS_MTX_ASSERT(%struct.tcp_hpts_entry*) #1

declare dso_local i32 @hpts_sane_input_remove(%struct.tcp_hpts_entry*, %struct.inpcb*, i32) #1

declare dso_local i32 @tcp_remove_hpts_ref(%struct.inpcb*, %struct.tcp_hpts_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
