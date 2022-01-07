; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_exec_machdep.c_set_fpregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_exec_machdep.c_set_fpregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.pcb* }
%struct.pcb = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.fpreg = type { i32*, i32 }

@PCB_FPREGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_fpregs(%struct.thread* %0, %struct.fpreg* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.fpreg*, align 8
  %5 = alloca %struct.pcb*, align 8
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.fpreg* %1, %struct.fpreg** %4, align 8
  %7 = load %struct.thread*, %struct.thread** %3, align 8
  %8 = getelementptr inbounds %struct.thread, %struct.thread* %7, i32 0, i32 0
  %9 = load %struct.pcb*, %struct.pcb** %8, align 8
  store %struct.pcb* %9, %struct.pcb** %5, align 8
  %10 = load i32, i32* @PCB_FPREGS, align 4
  %11 = load %struct.pcb*, %struct.pcb** %5, align 8
  %12 = getelementptr inbounds %struct.pcb, %struct.pcb* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 8
  %15 = load %struct.pcb*, %struct.pcb** %5, align 8
  %16 = getelementptr inbounds %struct.pcb, %struct.pcb* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.fpreg*, %struct.fpreg** %4, align 8
  %19 = getelementptr inbounds %struct.fpreg, %struct.fpreg* %18, i32 0, i32 1
  %20 = call i32 @memcpy(i32* %17, i32* %19, i32 8)
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %40, %2
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 32
  br i1 %23, label %24, label %43

24:                                               ; preds = %21
  %25 = load %struct.pcb*, %struct.pcb** %5, align 8
  %26 = getelementptr inbounds %struct.pcb, %struct.pcb* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.fpreg*, %struct.fpreg** %4, align 8
  %34 = getelementptr inbounds %struct.fpreg, %struct.fpreg* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = call i32 @memcpy(i32* %32, i32* %38, i32 8)
  br label %40

40:                                               ; preds = %24
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %21

43:                                               ; preds = %21
  ret i32 0
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
