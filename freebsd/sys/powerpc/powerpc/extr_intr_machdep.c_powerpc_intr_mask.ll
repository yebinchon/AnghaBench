; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_intr_machdep.c_powerpc_intr_mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_intr_machdep.c_powerpc_intr_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powerpc_intr = type { i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @powerpc_intr_mask(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.powerpc_intr*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.powerpc_intr* @intr_lookup(i32 %4)
  store %struct.powerpc_intr* %5, %struct.powerpc_intr** %3, align 8
  %6 = load %struct.powerpc_intr*, %struct.powerpc_intr** %3, align 8
  %7 = icmp eq %struct.powerpc_intr* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.powerpc_intr*, %struct.powerpc_intr** %3, align 8
  %10 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %1
  br label %25

14:                                               ; preds = %8
  %15 = load %struct.powerpc_intr*, %struct.powerpc_intr** %3, align 8
  %16 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.powerpc_intr*, %struct.powerpc_intr** %3, align 8
  %19 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.powerpc_intr*, %struct.powerpc_intr** %3, align 8
  %22 = getelementptr inbounds %struct.powerpc_intr, %struct.powerpc_intr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @PIC_MASK(i32* %17, i32 %20, i32 %23)
  br label %25

25:                                               ; preds = %14, %13
  ret void
}

declare dso_local %struct.powerpc_intr* @intr_lookup(i32) #1

declare dso_local i32 @PIC_MASK(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
