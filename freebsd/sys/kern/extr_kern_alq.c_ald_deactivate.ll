; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_alq.c_ald_deactivate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_alq.c_ald_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alq = type { i32 }

@aq_act = common dso_local global i32 0, align 4
@AQ_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alq*)* @ald_deactivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ald_deactivate(%struct.alq* %0) #0 {
  %2 = alloca %struct.alq*, align 8
  store %struct.alq* %0, %struct.alq** %2, align 8
  %3 = load %struct.alq*, %struct.alq** %2, align 8
  %4 = load i32, i32* @aq_act, align 4
  %5 = call i32 @LIST_REMOVE(%struct.alq* %3, i32 %4)
  %6 = load i32, i32* @AQ_ACTIVE, align 4
  %7 = xor i32 %6, -1
  %8 = load %struct.alq*, %struct.alq** %2, align 8
  %9 = getelementptr inbounds %struct.alq, %struct.alq* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, %7
  store i32 %11, i32* %9, align 4
  ret void
}

declare dso_local i32 @LIST_REMOVE(%struct.alq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
