; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_release_mfi_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_release_mfi_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_mfi_cmd = type { %struct.TYPE_4__, i32*, i64, i64, %struct.mrsas_softc* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mrsas_softc = type { i32, i32, i32, i32, %struct.mrsas_mpt_cmd** }
%struct.mrsas_mpt_cmd = type { %struct.TYPE_4__, i32*, i64, i64, %struct.mrsas_softc* }

@MRSAS_ULONG_MAX = common dso_local global i64 0, align 8
@next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrsas_release_mfi_cmd(%struct.mrsas_mfi_cmd* %0) #0 {
  %2 = alloca %struct.mrsas_mfi_cmd*, align 8
  %3 = alloca %struct.mrsas_softc*, align 8
  %4 = alloca %struct.mrsas_mpt_cmd*, align 8
  store %struct.mrsas_mfi_cmd* %0, %struct.mrsas_mfi_cmd** %2, align 8
  %5 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %2, align 8
  %6 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %5, i32 0, i32 4
  %7 = load %struct.mrsas_softc*, %struct.mrsas_softc** %6, align 8
  store %struct.mrsas_softc* %7, %struct.mrsas_softc** %3, align 8
  %8 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %9 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %8, i32 0, i32 0
  %10 = call i32 @mtx_lock(i32* %9)
  %11 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %2, align 8
  %12 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %46

17:                                               ; preds = %1
  %18 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %19 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %18, i32 0, i32 2
  %20 = call i32 @mtx_lock(i32* %19)
  %21 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %22 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %21, i32 0, i32 4
  %23 = load %struct.mrsas_mpt_cmd**, %struct.mrsas_mpt_cmd*** %22, align 8
  %24 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %2, align 8
  %25 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %23, i64 %30
  %32 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %31, align 8
  store %struct.mrsas_mpt_cmd* %32, %struct.mrsas_mpt_cmd** %4, align 8
  %33 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %4, align 8
  %34 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %33, i32 0, i32 3
  store i64 0, i64* %34, align 8
  %35 = load i64, i64* @MRSAS_ULONG_MAX, align 8
  %36 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %4, align 8
  %37 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  %38 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %39 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %38, i32 0, i32 3
  %40 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %4, align 8
  %41 = load i32, i32* @next, align 4
  %42 = call i32 @TAILQ_INSERT_HEAD(i32* %39, %struct.mrsas_mpt_cmd* %40, i32 %41)
  %43 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %44 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %43, i32 0, i32 2
  %45 = call i32 @mtx_unlock(i32* %44)
  br label %46

46:                                               ; preds = %17, %1
  %47 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %2, align 8
  %48 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %47, i32 0, i32 1
  store i32* null, i32** %48, align 8
  %49 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %2, align 8
  %50 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %53 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %52, i32 0, i32 1
  %54 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %2, align 8
  %55 = bitcast %struct.mrsas_mfi_cmd* %54 to %struct.mrsas_mpt_cmd*
  %56 = load i32, i32* @next, align 4
  %57 = call i32 @TAILQ_INSERT_HEAD(i32* %53, %struct.mrsas_mpt_cmd* %55, i32 %56)
  %58 = load %struct.mrsas_softc*, %struct.mrsas_softc** %3, align 8
  %59 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %58, i32 0, i32 0
  %60 = call i32 @mtx_unlock(i32* %59)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.mrsas_mpt_cmd*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
