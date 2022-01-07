; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/scc/extr_scc_dev_z8530.c_scc_getmreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/scc/extr_scc_dev_z8530.c_scc_getmreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scc_bas = type { i32 }

@REG_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scc_bas*, i32, i32)* @scc_getmreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scc_getmreg(%struct.scc_bas* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.scc_bas*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.scc_bas* %0, %struct.scc_bas** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.scc_bas*, %struct.scc_bas** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = load i64, i64* @REG_CTRL, align 8
  %11 = add nsw i64 %9, %10
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @scc_setreg(%struct.scc_bas* %7, i64 %11, i32 %12)
  %14 = load %struct.scc_bas*, %struct.scc_bas** %4, align 8
  %15 = call i32 @scc_barrier(%struct.scc_bas* %14)
  %16 = load %struct.scc_bas*, %struct.scc_bas** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* @REG_CTRL, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @scc_getreg(%struct.scc_bas* %16, i64 %20)
  ret i32 %21
}

declare dso_local i32 @scc_setreg(%struct.scc_bas*, i64, i32) #1

declare dso_local i32 @scc_barrier(%struct.scc_bas*) #1

declare dso_local i32 @scc_getreg(%struct.scc_bas*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
