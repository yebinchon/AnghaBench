; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_pcbgroup.c_in_pcbwild_update_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_pcbgroup.c_in_pcbwild_update_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32 }

@INP_PCBGROUPWILD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inpcb*)* @in_pcbwild_update_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @in_pcbwild_update_internal(%struct.inpcb* %0) #0 {
  %2 = alloca %struct.inpcb*, align 8
  %3 = alloca i32, align 4
  store %struct.inpcb* %0, %struct.inpcb** %2, align 8
  %4 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %5 = call i32 @in_pcbwild_needed(%struct.inpcb* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %10 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @INP_PCBGROUPWILD, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %8
  %16 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %17 = call i32 @in_pcbwild_add(%struct.inpcb* %16)
  br label %32

18:                                               ; preds = %8, %1
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %23 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @INP_PCBGROUPWILD, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %30 = call i32 @in_pcbwild_remove(%struct.inpcb* %29)
  br label %31

31:                                               ; preds = %28, %21, %18
  br label %32

32:                                               ; preds = %31, %15
  ret void
}

declare dso_local i32 @in_pcbwild_needed(%struct.inpcb*) #1

declare dso_local i32 @in_pcbwild_add(%struct.inpcb*) #1

declare dso_local i32 @in_pcbwild_remove(%struct.inpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
