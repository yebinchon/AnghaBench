; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_get_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.t4_regdump = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.t4_regdump*, i32*)* @get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_regs(%struct.adapter* %0, %struct.t4_regdump* %1, i32* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.t4_regdump*, align 8
  %6 = alloca i32*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.t4_regdump* %1, %struct.t4_regdump** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.adapter*, %struct.adapter** %4, align 8
  %8 = call i32 @chip_id(%struct.adapter* %7)
  %9 = load %struct.adapter*, %struct.adapter** %4, align 8
  %10 = call i32 @chip_rev(%struct.adapter* %9)
  %11 = shl i32 %10, 10
  %12 = or i32 %8, %11
  %13 = load %struct.t4_regdump*, %struct.t4_regdump** %5, align 8
  %14 = getelementptr inbounds %struct.t4_regdump, %struct.t4_regdump* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.adapter*, %struct.adapter** %4, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load %struct.t4_regdump*, %struct.t4_regdump** %5, align 8
  %18 = getelementptr inbounds %struct.t4_regdump, %struct.t4_regdump* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @t4_get_regs(%struct.adapter* %15, i32* %16, i32 %19)
  ret void
}

declare dso_local i32 @chip_id(%struct.adapter*) #1

declare dso_local i32 @chip_rev(%struct.adapter*) #1

declare dso_local i32 @t4_get_regs(%struct.adapter*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
