; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_machdep.c_fill_frame_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_machdep.c_fill_frame_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapframe = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.reg = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fill_frame_regs(%struct.trapframe* %0, %struct.reg* %1) #0 {
  %3 = alloca %struct.trapframe*, align 8
  %4 = alloca %struct.reg*, align 8
  store %struct.trapframe* %0, %struct.trapframe** %3, align 8
  store %struct.reg* %1, %struct.reg** %4, align 8
  %5 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %6 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %5, i32 0, i32 14
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.reg*, %struct.reg** %4, align 8
  %9 = getelementptr inbounds %struct.reg, %struct.reg* %8, i32 0, i32 16
  store i32 %7, i32* %9, align 8
  %10 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %11 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %10, i32 0, i32 13
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.reg*, %struct.reg** %4, align 8
  %14 = getelementptr inbounds %struct.reg, %struct.reg* %13, i32 0, i32 15
  store i32 %12, i32* %14, align 4
  %15 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %16 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %15, i32 0, i32 12
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.reg*, %struct.reg** %4, align 8
  %19 = getelementptr inbounds %struct.reg, %struct.reg* %18, i32 0, i32 14
  store i32 %17, i32* %19, align 8
  %20 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %21 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %20, i32 0, i32 11
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.reg*, %struct.reg** %4, align 8
  %24 = getelementptr inbounds %struct.reg, %struct.reg* %23, i32 0, i32 13
  store i32 %22, i32* %24, align 4
  %25 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %26 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %25, i32 0, i32 10
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.reg*, %struct.reg** %4, align 8
  %29 = getelementptr inbounds %struct.reg, %struct.reg* %28, i32 0, i32 12
  store i32 %27, i32* %29, align 8
  %30 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %31 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.reg*, %struct.reg** %4, align 8
  %34 = getelementptr inbounds %struct.reg, %struct.reg* %33, i32 0, i32 11
  store i32 %32, i32* %34, align 4
  %35 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %36 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.reg*, %struct.reg** %4, align 8
  %39 = getelementptr inbounds %struct.reg, %struct.reg* %38, i32 0, i32 10
  store i32 %37, i32* %39, align 8
  %40 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %41 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.reg*, %struct.reg** %4, align 8
  %44 = getelementptr inbounds %struct.reg, %struct.reg* %43, i32 0, i32 9
  store i32 %42, i32* %44, align 4
  %45 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %46 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.reg*, %struct.reg** %4, align 8
  %49 = getelementptr inbounds %struct.reg, %struct.reg* %48, i32 0, i32 8
  store i32 %47, i32* %49, align 8
  %50 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %51 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.reg*, %struct.reg** %4, align 8
  %54 = getelementptr inbounds %struct.reg, %struct.reg* %53, i32 0, i32 7
  store i32 %52, i32* %54, align 4
  %55 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %56 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.reg*, %struct.reg** %4, align 8
  %59 = getelementptr inbounds %struct.reg, %struct.reg* %58, i32 0, i32 6
  store i32 %57, i32* %59, align 8
  %60 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %61 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.reg*, %struct.reg** %4, align 8
  %64 = getelementptr inbounds %struct.reg, %struct.reg* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 4
  %65 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %66 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.reg*, %struct.reg** %4, align 8
  %69 = getelementptr inbounds %struct.reg, %struct.reg* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  %70 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %71 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.reg*, %struct.reg** %4, align 8
  %74 = getelementptr inbounds %struct.reg, %struct.reg* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %76 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.reg*, %struct.reg** %4, align 8
  %79 = getelementptr inbounds %struct.reg, %struct.reg* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.reg*, %struct.reg** %4, align 8
  %81 = getelementptr inbounds %struct.reg, %struct.reg* %80, i32 0, i32 1
  store i64 0, i64* %81, align 8
  %82 = load %struct.reg*, %struct.reg** %4, align 8
  %83 = getelementptr inbounds %struct.reg, %struct.reg* %82, i32 0, i32 0
  store i64 0, i64* %83, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
