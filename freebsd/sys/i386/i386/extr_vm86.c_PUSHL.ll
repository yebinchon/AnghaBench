; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_vm86.c_PUSHL.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_vm86.c_PUSHL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm86frame = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.vm86frame*)* @PUSHL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PUSHL(i32 %0, %struct.vm86frame* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm86frame*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.vm86frame* %1, %struct.vm86frame** %4, align 8
  %5 = load %struct.vm86frame*, %struct.vm86frame** %4, align 8
  %6 = getelementptr inbounds %struct.vm86frame, %struct.vm86frame* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = sub nsw i32 %7, 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.vm86frame*, %struct.vm86frame** %4, align 8
  %10 = getelementptr inbounds %struct.vm86frame, %struct.vm86frame* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.vm86frame*, %struct.vm86frame** %4, align 8
  %13 = getelementptr inbounds %struct.vm86frame, %struct.vm86frame* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @MAKE_ADDR(i32 %11, i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @vm86_suword(i32 %15, i32 %16)
  ret void
}

declare dso_local i32 @vm86_suword(i32, i32) #1

declare dso_local i32 @MAKE_ADDR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
