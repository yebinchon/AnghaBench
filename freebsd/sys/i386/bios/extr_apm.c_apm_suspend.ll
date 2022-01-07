; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apm_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apm_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apm_softc = type { i64, i32, i32, i32, i32 }

@apm_softc = common dso_local global %struct.apm_softc zeroinitializer, align 8
@apm_suspend_delay = common dso_local global i32 0, align 4
@apm_standby_delay = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"apm_suspend: Unknown Suspend state 0x%x\0A\00", align 1
@apm_op_inprog = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @apm_suspend(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.apm_softc*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.apm_softc* @apm_softc, %struct.apm_softc** %3, align 8
  %4 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %5 = icmp eq %struct.apm_softc* %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %8 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6, %1
  br label %49

12:                                               ; preds = %6
  %13 = load i32, i32* %2, align 4
  switch i32 %13, label %42 [
    i32 128, label %14
    i32 129, label %28
  ]

14:                                               ; preds = %12
  %15 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %16 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %49

20:                                               ; preds = %14
  %21 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %22 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* @apm_suspend_delay, align 4
  %26 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %27 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  br label %45

28:                                               ; preds = %12
  %29 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %30 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %49

34:                                               ; preds = %28
  %35 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %36 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @apm_standby_delay, align 4
  %40 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %41 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  br label %45

42:                                               ; preds = %12
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %49

45:                                               ; preds = %34, %20
  %46 = load i32, i32* @apm_op_inprog, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* @apm_op_inprog, align 4
  %48 = call i32 (...) @apm_lastreq_notify()
  br label %49

49:                                               ; preds = %45, %42, %33, %19, %11
  ret void
}

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @apm_lastreq_notify(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
