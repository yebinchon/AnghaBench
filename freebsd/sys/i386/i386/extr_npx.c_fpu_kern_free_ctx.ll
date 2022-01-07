; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_npx.c_fpu_kern_free_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_npx.c_fpu_kern_free_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpu_kern_ctx = type { i32 }

@FPU_KERN_CTX_INUSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"free'ing inuse ctx\00", align 1
@M_FPUKERN_CTX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fpu_kern_free_ctx(%struct.fpu_kern_ctx* %0) #0 {
  %2 = alloca %struct.fpu_kern_ctx*, align 8
  store %struct.fpu_kern_ctx* %0, %struct.fpu_kern_ctx** %2, align 8
  %3 = load %struct.fpu_kern_ctx*, %struct.fpu_kern_ctx** %2, align 8
  %4 = getelementptr inbounds %struct.fpu_kern_ctx, %struct.fpu_kern_ctx* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @FPU_KERN_CTX_INUSE, align 4
  %7 = and i32 %5, %6
  %8 = icmp eq i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @KASSERT(i32 %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.fpu_kern_ctx*, %struct.fpu_kern_ctx** %2, align 8
  %12 = load i32, i32* @M_FPUKERN_CTX, align 4
  %13 = call i32 @free(%struct.fpu_kern_ctx* %11, i32 %12)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @free(%struct.fpu_kern_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
