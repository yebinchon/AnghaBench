; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_atpic.c_i8259_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_atpic.c_i8259_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atpic = type { i32, i32, i32 }

@ICW1_RESET = common dso_local global i32 0, align 4
@ICW1_IC4 = common dso_local global i32 0, align 4
@ICU_IMR_OFFSET = common dso_local global i32 0, align 4
@ICU_SLAVEID = common dso_local global i32 0, align 4
@SLAVE_MODE = common dso_local global i32 0, align 4
@MASTER_MODE = common dso_local global i32 0, align 4
@OCW3_SEL = common dso_local global i32 0, align 4
@OCW3_RR = common dso_local global i32 0, align 4
@OCW2_R = common dso_local global i32 0, align 4
@OCW2_SL = common dso_local global i32 0, align 4
@OCW2_L1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atpic*, i32)* @i8259_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i8259_init(%struct.atpic* %0, i32 %1) #0 {
  %3 = alloca %struct.atpic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.atpic* %0, %struct.atpic** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @spinlock_enter()
  %7 = load %struct.atpic*, %struct.atpic** %3, align 8
  %8 = getelementptr inbounds %struct.atpic, %struct.atpic* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @ICW1_RESET, align 4
  %11 = load i32, i32* @ICW1_IC4, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @outb(i32 %9, i32 %12)
  %14 = load %struct.atpic*, %struct.atpic** %3, align 8
  %15 = getelementptr inbounds %struct.atpic, %struct.atpic* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ICU_IMR_OFFSET, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.atpic*, %struct.atpic** %3, align 8
  %21 = getelementptr inbounds %struct.atpic, %struct.atpic* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @outb(i32 %19, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @ICU_SLAVEID, align 4
  %29 = call i32 @outb(i32 %27, i32 %28)
  br label %35

30:                                               ; preds = %2
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @ICU_SLAVEID, align 4
  %33 = call i32 @IRQ_MASK(i32 %32)
  %34 = call i32 @outb(i32 %31, i32 %33)
  br label %35

35:                                               ; preds = %30, %26
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @SLAVE_MODE, align 4
  %41 = call i32 @outb(i32 %39, i32 %40)
  br label %46

42:                                               ; preds = %35
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @MASTER_MODE, align 4
  %45 = call i32 @outb(i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %38
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.atpic*, %struct.atpic** %3, align 8
  %49 = getelementptr inbounds %struct.atpic, %struct.atpic* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @outb(i32 %47, i32 %50)
  %52 = load %struct.atpic*, %struct.atpic** %3, align 8
  %53 = getelementptr inbounds %struct.atpic, %struct.atpic* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @OCW3_SEL, align 4
  %56 = load i32, i32* @OCW3_RR, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @outb(i32 %54, i32 %57)
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %46
  %62 = load %struct.atpic*, %struct.atpic** %3, align 8
  %63 = getelementptr inbounds %struct.atpic, %struct.atpic* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @OCW2_R, align 4
  %66 = load i32, i32* @OCW2_SL, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @OCW2_L1, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @outb(i32 %64, i32 %69)
  br label %71

71:                                               ; preds = %61, %46
  %72 = call i32 (...) @spinlock_exit()
  ret void
}

declare dso_local i32 @spinlock_enter(...) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @IRQ_MASK(i32) #1

declare dso_local i32 @spinlock_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
