; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_hpts.c_tcp_remove_hpts_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_hpts.c_tcp_remove_hpts_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32 }
%struct.tcp_hpts_entry = type { i32 }

@INP_FREED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"inpcb:%p release ret 1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inpcb*, %struct.tcp_hpts_entry*, i32)* @tcp_remove_hpts_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_remove_hpts_ref(%struct.inpcb* %0, %struct.tcp_hpts_entry* %1, i32 %2) #0 {
  %4 = alloca %struct.inpcb*, align 8
  %5 = alloca %struct.tcp_hpts_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.inpcb* %0, %struct.inpcb** %4, align 8
  store %struct.tcp_hpts_entry* %1, %struct.tcp_hpts_entry** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %9 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @INP_FREED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  store i32 1, i32* %7, align 4
  %15 = load i32, i32* @INP_FREED, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %18 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 4
  br label %22

21:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %21, %14
  %23 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %24 = call i64 @in_pcbrele_wlocked(%struct.inpcb* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %28 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.inpcb* %27)
  br label %29

29:                                               ; preds = %26, %22
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32, i32* @INP_FREED, align 4
  %34 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %35 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %32, %29
  ret void
}

declare dso_local i64 @in_pcbrele_wlocked(%struct.inpcb*) #1

declare dso_local i32 @panic(i8*, %struct.inpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
