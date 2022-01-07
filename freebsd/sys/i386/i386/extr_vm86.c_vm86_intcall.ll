; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_vm86.c_vm86_intcall.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_vm86.c_vm86_intcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm86frame = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@vm86_bioscall = common dso_local global i64 0, align 8
@setidt_disp = common dso_local global i64 0, align 8
@vm86_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm86_intcall(i32 %0, %struct.vm86frame* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm86frame*, align 8
  %6 = alloca i32 (%struct.vm86frame*)*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.vm86frame* %1, %struct.vm86frame** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp sgt i32 %11, 255
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %3, align 4
  br label %31

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.vm86frame*, %struct.vm86frame** %5, align 8
  %18 = getelementptr inbounds %struct.vm86frame, %struct.vm86frame* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i64, i64* @vm86_bioscall, align 8
  %20 = load i64, i64* @setidt_disp, align 8
  %21 = add i64 %19, %20
  %22 = inttoptr i64 %21 to i32 (%struct.vm86frame*)*
  store i32 (%struct.vm86frame*)* %22, i32 (%struct.vm86frame*)** %6, align 8
  %23 = call i32 @mtx_lock(i32* @vm86_lock)
  %24 = call i32 (...) @critical_enter()
  %25 = load i32 (%struct.vm86frame*)*, i32 (%struct.vm86frame*)** %6, align 8
  %26 = load %struct.vm86frame*, %struct.vm86frame** %5, align 8
  %27 = call i32 %25(%struct.vm86frame* %26)
  store i32 %27, i32* %7, align 4
  %28 = call i32 (...) @critical_exit()
  %29 = call i32 @mtx_unlock(i32* @vm86_lock)
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %15, %13
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @critical_exit(...) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
