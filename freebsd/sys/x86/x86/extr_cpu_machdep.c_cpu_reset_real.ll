; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_cpu_machdep.c_cpu_reset_real.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_cpu_machdep.c_cpu_reset_real.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.region_descriptor = type { i64, i64 }

@IO_KBD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"No known reset method worked, attempting CPU shutdown\0A\00", align 1
@CPU_GEODE1100 = common dso_local global i64 0, align 8
@cpu = common dso_local global i64 0, align 8
@elan_mmcr = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cpu_reset_real to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpu_reset_real() #0 {
  %1 = alloca %struct.region_descriptor, align 8
  %2 = alloca i32, align 4
  %3 = call i32 (...) @disable_intr()
  %4 = load i32, i32* @IO_KBD, align 4
  %5 = add nsw i32 %4, 4
  %6 = call i32 @outb(i32 %5, i32 254)
  %7 = call i32 @DELAY(i32 500000)
  %8 = call i32 @outb(i32 3321, i32 2)
  %9 = call i32 @outb(i32 3321, i32 6)
  %10 = call i32 @DELAY(i32 500000)
  %11 = call i32 @inb(i32 146)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp ne i32 %12, 255
  br i1 %13, label %14, label %27

14:                                               ; preds = %0
  %15 = load i32, i32* %2, align 4
  %16 = and i32 %15, 1
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* %2, align 4
  %20 = and i32 %19, 254
  %21 = call i32 @outb(i32 146, i32 %20)
  br label %22

22:                                               ; preds = %18, %14
  %23 = load i32, i32* %2, align 4
  %24 = or i32 %23, 1
  %25 = call i32 @outb(i32 146, i32 %24)
  %26 = call i32 @DELAY(i32 500000)
  br label %27

27:                                               ; preds = %22, %0
  %28 = call i32 @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 @DELAY(i32 1000000)
  %30 = getelementptr inbounds %struct.region_descriptor, %struct.region_descriptor* %1, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = getelementptr inbounds %struct.region_descriptor, %struct.region_descriptor* %1, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = call i32 @lidt(%struct.region_descriptor* %1)
  %33 = call i32 (...) @breakpoint()
  br label %34

34:                                               ; preds = %27, %34
  br label %34
}

declare dso_local i32 @disable_intr(...) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @lidt(%struct.region_descriptor*) #1

declare dso_local i32 @breakpoint(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
