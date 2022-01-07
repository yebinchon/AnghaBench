; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_softc = type { i64, %struct.TYPE_2__*, i32 (%struct.mfi_softc*)*, i32, i32, %struct.mfi_command*, i64 (%struct.mfi_softc*)* }
%struct.TYPE_2__ = type { i64, i64, i64* }
%struct.mfi_command = type { i64 }

@MFI_FLAGS_QFRZN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mfi_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mfi_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mfi_softc*, align 8
  %4 = alloca %struct.mfi_command*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.mfi_softc*
  store %struct.mfi_softc* %9, %struct.mfi_softc** %3, align 8
  %10 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %11 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %10, i32 0, i32 6
  %12 = load i64 (%struct.mfi_softc*)*, i64 (%struct.mfi_softc*)** %11, align 8
  %13 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %14 = call i64 %12(%struct.mfi_softc* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %104

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %102, %17
  %19 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %20 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %5, align 8
  %24 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %25 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %6, align 8
  %29 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %30 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %29, i32 0, i32 3
  %31 = call i32 @mtx_lock(i32* %30)
  br label %32

32:                                               ; preds = %72, %18
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %73

36:                                               ; preds = %32
  %37 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %38 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %47 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ult i64 %45, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %36
  %51 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %52 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %51, i32 0, i32 5
  %53 = load %struct.mfi_command*, %struct.mfi_command** %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %53, i64 %54
  store %struct.mfi_command* %55, %struct.mfi_command** %4, align 8
  %56 = load %struct.mfi_command*, %struct.mfi_command** %4, align 8
  %57 = call i32 @mfi_remove_busy(%struct.mfi_command* %56)
  %58 = load %struct.mfi_command*, %struct.mfi_command** %4, align 8
  %59 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  %60 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %61 = load %struct.mfi_command*, %struct.mfi_command** %4, align 8
  %62 = call i32 @mfi_complete(%struct.mfi_softc* %60, %struct.mfi_command* %61)
  br label %63

63:                                               ; preds = %50, %36
  %64 = load i64, i64* %6, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %6, align 8
  %66 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %67 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %68, 1
  %70 = icmp eq i64 %65, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  store i64 0, i64* %6, align 8
  br label %72

72:                                               ; preds = %71, %63
  br label %32

73:                                               ; preds = %32
  %74 = load i64, i64* %6, align 8
  %75 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %76 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  store i64 %74, i64* %78, align 8
  %79 = load i32, i32* @MFI_FLAGS_QFRZN, align 4
  %80 = xor i32 %79, -1
  %81 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %82 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, %80
  store i32 %84, i32* %82, align 4
  %85 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %86 = call i32 @mfi_startio(%struct.mfi_softc* %85)
  %87 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %88 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %87, i32 0, i32 3
  %89 = call i32 @mtx_unlock(i32* %88)
  %90 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %91 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %90, i32 0, i32 2
  %92 = load i32 (%struct.mfi_softc*)*, i32 (%struct.mfi_softc*)** %91, align 8
  %93 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %94 = call i32 %92(%struct.mfi_softc* %93)
  %95 = load i64, i64* %5, align 8
  %96 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %97 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %96, i32 0, i32 1
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %95, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %73
  br label %18

103:                                              ; preds = %73
  br label %104

104:                                              ; preds = %103, %16
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mfi_remove_busy(%struct.mfi_command*) #1

declare dso_local i32 @mfi_complete(%struct.mfi_softc*, %struct.mfi_command*) #1

declare dso_local i32 @mfi_startio(%struct.mfi_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
