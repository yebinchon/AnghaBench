; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_intr_machdep.c_xlp_pre_ithread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_intr_machdep.c_xlp_pre_ithread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlp_intrsrc = type { i32, i32, i32 (i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @xlp_pre_ithread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlp_pre_ithread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.xlp_intrsrc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.xlp_intrsrc*
  store %struct.xlp_intrsrc* %5, %struct.xlp_intrsrc** %3, align 8
  %6 = load %struct.xlp_intrsrc*, %struct.xlp_intrsrc** %3, align 8
  %7 = getelementptr inbounds %struct.xlp_intrsrc, %struct.xlp_intrsrc* %6, i32 0, i32 2
  %8 = load i32 (i32, i32)*, i32 (i32, i32)** %7, align 8
  %9 = icmp ne i32 (i32, i32)* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.xlp_intrsrc*, %struct.xlp_intrsrc** %3, align 8
  %12 = getelementptr inbounds %struct.xlp_intrsrc, %struct.xlp_intrsrc* %11, i32 0, i32 2
  %13 = load i32 (i32, i32)*, i32 (i32, i32)** %12, align 8
  %14 = load %struct.xlp_intrsrc*, %struct.xlp_intrsrc** %3, align 8
  %15 = getelementptr inbounds %struct.xlp_intrsrc, %struct.xlp_intrsrc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.xlp_intrsrc*, %struct.xlp_intrsrc** %3, align 8
  %18 = getelementptr inbounds %struct.xlp_intrsrc, %struct.xlp_intrsrc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 %13(i32 %16, i32 %19)
  br label %21

21:                                               ; preds = %10, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
