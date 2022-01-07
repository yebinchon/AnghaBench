; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_tbolt.c_mfi_intr_tbolt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_tbolt.c_mfi_intr_tbolt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_softc = type { i32 (%struct.mfi_softc*)*, i32, i32, i64 }

@MFI_FLAGS_QFRZN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mfi_intr_tbolt(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mfi_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.mfi_softc*
  store %struct.mfi_softc* %5, %struct.mfi_softc** %3, align 8
  %6 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %7 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %6, i32 0, i32 0
  %8 = load i32 (%struct.mfi_softc*)*, i32 (%struct.mfi_softc*)** %7, align 8
  %9 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %10 = call i32 %8(%struct.mfi_softc* %9)
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %36

13:                                               ; preds = %1
  %14 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %15 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %36

19:                                               ; preds = %13
  %20 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %21 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %20, i32 0, i32 1
  %22 = call i32 @mtx_lock(i32* %21)
  %23 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %24 = call i32 @mfi_tbolt_complete_cmd(%struct.mfi_softc* %23)
  %25 = load i32, i32* @MFI_FLAGS_QFRZN, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %28 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %32 = call i32 @mfi_startio(%struct.mfi_softc* %31)
  %33 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %34 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %33, i32 0, i32 1
  %35 = call i32 @mtx_unlock(i32* %34)
  br label %36

36:                                               ; preds = %19, %18, %12
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mfi_tbolt_complete_cmd(%struct.mfi_softc*) #1

declare dso_local i32 @mfi_startio(%struct.mfi_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
