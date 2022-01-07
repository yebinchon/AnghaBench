; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_intr.c_intr_isrc_pre_ithread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_intr.c_intr_isrc_pre_ithread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_irqsrc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @intr_isrc_pre_ithread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intr_isrc_pre_ithread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.intr_irqsrc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.intr_irqsrc*
  store %struct.intr_irqsrc* %5, %struct.intr_irqsrc** %3, align 8
  %6 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %3, align 8
  %7 = getelementptr inbounds %struct.intr_irqsrc, %struct.intr_irqsrc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %3, align 8
  %10 = call i32 @PIC_PRE_ITHREAD(i32 %8, %struct.intr_irqsrc* %9)
  ret void
}

declare dso_local i32 @PIC_PRE_ITHREAD(i32, %struct.intr_irqsrc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
