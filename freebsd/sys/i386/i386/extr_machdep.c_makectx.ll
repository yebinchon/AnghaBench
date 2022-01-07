; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_machdep.c_makectx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_machdep.c_makectx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapframe = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.pcb = type { i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @makectx(%struct.trapframe* %0, %struct.pcb* %1) #0 {
  %3 = alloca %struct.trapframe*, align 8
  %4 = alloca %struct.pcb*, align 8
  store %struct.trapframe* %0, %struct.trapframe** %3, align 8
  store %struct.pcb* %1, %struct.pcb** %4, align 8
  %5 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %6 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.pcb*, %struct.pcb** %4, align 8
  %9 = getelementptr inbounds %struct.pcb, %struct.pcb* %8, i32 0, i32 6
  store i32 %7, i32* %9, align 4
  %10 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %11 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.pcb*, %struct.pcb** %4, align 8
  %14 = getelementptr inbounds %struct.pcb, %struct.pcb* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 4
  %15 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %16 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.pcb*, %struct.pcb** %4, align 8
  %19 = getelementptr inbounds %struct.pcb, %struct.pcb* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 4
  %20 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %21 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.pcb*, %struct.pcb** %4, align 8
  %24 = getelementptr inbounds %struct.pcb, %struct.pcb* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %26 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.pcb*, %struct.pcb** %4, align 8
  %29 = getelementptr inbounds %struct.pcb, %struct.pcb* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %31 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @ISPL(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %2
  %36 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %37 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  br label %44

39:                                               ; preds = %2
  %40 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %41 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %40, i64 1
  %42 = ptrtoint %struct.trapframe* %41 to i32
  %43 = sub nsw i32 %42, 8
  br label %44

44:                                               ; preds = %39, %35
  %45 = phi i32 [ %38, %35 ], [ %43, %39 ]
  %46 = load %struct.pcb*, %struct.pcb** %4, align 8
  %47 = getelementptr inbounds %struct.pcb, %struct.pcb* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = call i32 (...) @rgs()
  %49 = load %struct.pcb*, %struct.pcb** %4, align 8
  %50 = getelementptr inbounds %struct.pcb, %struct.pcb* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  ret void
}

declare dso_local i64 @ISPL(i32) #1

declare dso_local i32 @rgs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
