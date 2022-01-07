; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_npx.c_fpu_kern_alloc_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_npx.c_fpu_kern_alloc_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpu_kern_ctx = type { i32 }

@XSAVE_AREA_ALIGN = common dso_local global i32 0, align 4
@cpu_max_ext_state_size = common dso_local global i32 0, align 4
@M_FPUKERN_CTX = common dso_local global i32 0, align 4
@FPU_KERN_NOWAIT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fpu_kern_ctx* @fpu_kern_alloc_ctx(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fpu_kern_ctx*, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @XSAVE_AREA_ALIGN, align 4
  %6 = sext i32 %5 to i64
  %7 = add i64 4, %6
  %8 = load i32, i32* @cpu_max_ext_state_size, align 4
  %9 = sext i32 %8 to i64
  %10 = add i64 %7, %9
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i32, i32* @M_FPUKERN_CTX, align 4
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @FPU_KERN_NOWAIT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @M_NOWAIT, align 4
  br label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @M_WAITOK, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = load i32, i32* @M_ZERO, align 4
  %24 = or i32 %22, %23
  %25 = call %struct.fpu_kern_ctx* @malloc(i64 %11, i32 %12, i32 %24)
  store %struct.fpu_kern_ctx* %25, %struct.fpu_kern_ctx** %3, align 8
  %26 = load %struct.fpu_kern_ctx*, %struct.fpu_kern_ctx** %3, align 8
  ret %struct.fpu_kern_ctx* %26
}

declare dso_local %struct.fpu_kern_ctx* @malloc(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
