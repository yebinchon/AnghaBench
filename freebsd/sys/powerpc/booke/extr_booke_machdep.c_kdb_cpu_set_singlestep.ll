; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_booke_machdep.c_kdb_cpu_set_singlestep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_booke_machdep.c_kdb_cpu_set_singlestep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@SPR_DBCR0 = common dso_local global i32 0, align 4
@DBCR0_IC = common dso_local global i32 0, align 4
@DBCR0_IDM = common dso_local global i32 0, align 4
@PSL_DE = common dso_local global i32 0, align 4
@kdb_frame = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kdb_cpu_set_singlestep() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @SPR_DBCR0, align 4
  %3 = call i32 @mfspr(i32 %2)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* @SPR_DBCR0, align 4
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @DBCR0_IC, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @DBCR0_IDM, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @mtspr(i32 %4, i32 %9)
  %11 = load i32, i32* @PSL_DE, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kdb_frame, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  ret void
}

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @mtspr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
