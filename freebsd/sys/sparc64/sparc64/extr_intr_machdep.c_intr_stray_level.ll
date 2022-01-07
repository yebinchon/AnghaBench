; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_intr_machdep.c_intr_stray_level.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_intr_machdep.c_intr_stray_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapframe = type { i64 }

@pil_stray_count = common dso_local global i32* null, align 8
@MAX_STRAY_LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"stray level interrupt %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"got %d stray level interrupt %ld's: not logging anymore\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trapframe*)* @intr_stray_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intr_stray_level(%struct.trapframe* %0) #0 {
  %2 = alloca %struct.trapframe*, align 8
  %3 = alloca i64, align 8
  store %struct.trapframe* %0, %struct.trapframe** %2, align 8
  %4 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %5 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %3, align 8
  %7 = load i32*, i32** @pil_stray_count, align 8
  %8 = load i64, i64* %3, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @MAX_STRAY_LOG, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %1
  %14 = load i64, i64* %3, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32*, i32** @pil_stray_count, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = load i32*, i32** @pil_stray_count, align 8
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MAX_STRAY_LOG, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %13
  %29 = load i32, i32* @MAX_STRAY_LOG, align 4
  %30 = load i64, i64* %3, align 8
  %31 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %29, i64 %30)
  br label %32

32:                                               ; preds = %28, %13
  br label %33

33:                                               ; preds = %32, %1
  ret void
}

declare dso_local i32 @printf(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
