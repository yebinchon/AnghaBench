; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apm_do_standby.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apm_do_standby.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apm_softc = type { i64, i64, i64 }

@apm_softc = common dso_local global %struct.apm_softc zeroinitializer, align 8
@apm_op_inprog = common dso_local global i64 0, align 8
@PMST_STANDBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @apm_do_standby to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apm_do_standby() #0 {
  %1 = alloca %struct.apm_softc*, align 8
  store %struct.apm_softc* @apm_softc, %struct.apm_softc** %1, align 8
  %2 = load %struct.apm_softc*, %struct.apm_softc** %1, align 8
  %3 = icmp eq %struct.apm_softc* %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %0
  %5 = load %struct.apm_softc*, %struct.apm_softc** %1, align 8
  %6 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %4, %0
  br label %21

10:                                               ; preds = %4
  store i64 0, i64* @apm_op_inprog, align 8
  %11 = load %struct.apm_softc*, %struct.apm_softc** %1, align 8
  %12 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load %struct.apm_softc*, %struct.apm_softc** %1, align 8
  %14 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* @PMST_STANDBY, align 4
  %16 = call i64 @apm_suspend_system(i32 %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = call i32 (...) @apm_processevent()
  br label %20

20:                                               ; preds = %18, %10
  br label %21

21:                                               ; preds = %20, %9
  ret void
}

declare dso_local i64 @apm_suspend_system(i32) #1

declare dso_local i32 @apm_processevent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
