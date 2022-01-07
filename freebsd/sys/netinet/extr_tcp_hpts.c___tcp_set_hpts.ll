; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_hpts.c___tcp_set_hpts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_hpts.c___tcp_set_hpts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i64, i32, i32, i64, i8*, i8* }
%struct.tcp_hpts_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__tcp_set_hpts(%struct.inpcb* %0, i32 %1) #0 {
  %3 = alloca %struct.inpcb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcp_hpts_entry*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %7 = call i32 @INP_WLOCK_ASSERT(%struct.inpcb* %6)
  %8 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %9 = call %struct.tcp_hpts_entry* @tcp_hpts_lock(%struct.inpcb* %8)
  store %struct.tcp_hpts_entry* %9, %struct.tcp_hpts_entry** %5, align 8
  %10 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %11 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %16 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %21 = call i8* @hpts_cpuid(%struct.inpcb* %20)
  %22 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %23 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %22, i32 0, i32 5
  store i8* %21, i8** %23, align 8
  %24 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %25 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %24, i32 0, i32 1
  store i32 1, i32* %25, align 8
  br label %26

26:                                               ; preds = %19, %14, %2
  %27 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %5, align 8
  %28 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %27, i32 0, i32 0
  %29 = call i32 @mtx_unlock(i32* %28)
  %30 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %31 = call %struct.tcp_hpts_entry* @tcp_input_lock(%struct.inpcb* %30)
  store %struct.tcp_hpts_entry* %31, %struct.tcp_hpts_entry** %5, align 8
  %32 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %33 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %26
  %37 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %38 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %43 = call i8* @hpts_cpuid(%struct.inpcb* %42)
  %44 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %45 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  %46 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %47 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %46, i32 0, i32 2
  store i32 1, i32* %47, align 4
  br label %48

48:                                               ; preds = %41, %36, %26
  %49 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %5, align 8
  %50 = getelementptr inbounds %struct.tcp_hpts_entry, %struct.tcp_hpts_entry* %49, i32 0, i32 0
  %51 = call i32 @mtx_unlock(i32* %50)
  ret void
}

declare dso_local i32 @INP_WLOCK_ASSERT(%struct.inpcb*) #1

declare dso_local %struct.tcp_hpts_entry* @tcp_hpts_lock(%struct.inpcb*) #1

declare dso_local i8* @hpts_cpuid(%struct.inpcb*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local %struct.tcp_hpts_entry* @tcp_input_lock(%struct.inpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
