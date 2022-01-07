; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_vm86.c_vm86_trap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_vm86.c_vm86_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm86frame = type { i32, i32, i32, i32 }

@PSL_VM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"vm86_trap called, but not in vm86 mode\00", align 1
@HLT = common dso_local global i64 0, align 8
@PSL_C = common dso_local global i32 0, align 4
@vm86_biosret = common dso_local global i64 0, align 8
@setidt_disp = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm86_trap(%struct.vm86frame* %0) #0 {
  %2 = alloca %struct.vm86frame*, align 8
  %3 = alloca void (%struct.vm86frame*)*, align 8
  %4 = alloca i64, align 8
  store %struct.vm86frame* %0, %struct.vm86frame** %2, align 8
  %5 = load %struct.vm86frame*, %struct.vm86frame** %2, align 8
  %6 = getelementptr inbounds %struct.vm86frame, %struct.vm86frame* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @PSL_VM, align 4
  %9 = and i32 %7, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %1
  %14 = load %struct.vm86frame*, %struct.vm86frame** %2, align 8
  %15 = getelementptr inbounds %struct.vm86frame, %struct.vm86frame* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.vm86frame*, %struct.vm86frame** %2, align 8
  %18 = getelementptr inbounds %struct.vm86frame, %struct.vm86frame* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @MAKE_ADDR(i32 %16, i32 %19)
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = inttoptr i64 %21 to i64*
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @HLT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %13
  %27 = load %struct.vm86frame*, %struct.vm86frame** %2, align 8
  %28 = getelementptr inbounds %struct.vm86frame, %struct.vm86frame* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @PSL_C, align 4
  %31 = and i32 %29, %30
  %32 = load %struct.vm86frame*, %struct.vm86frame** %2, align 8
  %33 = getelementptr inbounds %struct.vm86frame, %struct.vm86frame* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  br label %41

34:                                               ; preds = %13
  %35 = load %struct.vm86frame*, %struct.vm86frame** %2, align 8
  %36 = getelementptr inbounds %struct.vm86frame, %struct.vm86frame* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 16
  %39 = load %struct.vm86frame*, %struct.vm86frame** %2, align 8
  %40 = getelementptr inbounds %struct.vm86frame, %struct.vm86frame* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %34, %26
  %42 = load i64, i64* @vm86_biosret, align 8
  %43 = load i64, i64* @setidt_disp, align 8
  %44 = add i64 %42, %43
  %45 = inttoptr i64 %44 to void (%struct.vm86frame*)*
  store void (%struct.vm86frame*)* %45, void (%struct.vm86frame*)** %3, align 8
  %46 = load void (%struct.vm86frame*)*, void (%struct.vm86frame*)** %3, align 8
  %47 = load %struct.vm86frame*, %struct.vm86frame** %2, align 8
  call void %46(%struct.vm86frame* %47)
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @MAKE_ADDR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
