; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_complete_outstanding_ioctls.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_complete_outstanding_ioctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i64, i32, %struct.mrsas_mfi_cmd**, %struct.mrsas_mpt_cmd** }
%struct.mrsas_mfi_cmd = type { %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.mrsas_mpt_cmd = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@MRSAS_ULONG_MAX = common dso_local global i64 0, align 8
@MFI_CMD_ABORT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrsas_complete_outstanding_ioctls(%struct.mrsas_softc* %0) #0 {
  %2 = alloca %struct.mrsas_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mrsas_mpt_cmd*, align 8
  %5 = alloca %struct.mrsas_mfi_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %2, align 8
  %8 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %9 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %14 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  br label %17

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16, %12
  %18 = phi i64 [ %15, %12 ], [ 1, %16 ]
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %85, %17
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %23 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %88

26:                                               ; preds = %20
  %27 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %28 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %27, i32 0, i32 3
  %29 = load %struct.mrsas_mpt_cmd**, %struct.mrsas_mpt_cmd*** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %29, i64 %31
  %33 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %32, align 8
  store %struct.mrsas_mpt_cmd* %33, %struct.mrsas_mpt_cmd** %4, align 8
  %34 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %4, align 8
  %35 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i64, i64* @MRSAS_ULONG_MAX, align 8
  %38 = trunc i64 %37 to i32
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %84

40:                                               ; preds = %26
  %41 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %42 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %41, i32 0, i32 2
  %43 = load %struct.mrsas_mfi_cmd**, %struct.mrsas_mfi_cmd*** %42, align 8
  %44 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %4, align 8
  %45 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %43, i64 %47
  %49 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %48, align 8
  store %struct.mrsas_mfi_cmd* %49, %struct.mrsas_mfi_cmd** %5, align 8
  %50 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %51 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %83

54:                                               ; preds = %40
  %55 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %56 = getelementptr inbounds %struct.mrsas_mfi_cmd, %struct.mrsas_mfi_cmd* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @MFI_CMD_ABORT, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %54
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %79, %63
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %64
  %69 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %70 = load %struct.mrsas_mfi_cmd*, %struct.mrsas_mfi_cmd** %5, align 8
  %71 = load %struct.mrsas_mpt_cmd*, %struct.mrsas_mpt_cmd** %4, align 8
  %72 = getelementptr inbounds %struct.mrsas_mpt_cmd, %struct.mrsas_mpt_cmd* %71, i32 0, i32 1
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @mrsas_complete_mptmfi_passthru(%struct.mrsas_softc* %69, %struct.mrsas_mfi_cmd* %70, i32 %77)
  br label %79

79:                                               ; preds = %68
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %64

82:                                               ; preds = %64
  br label %83

83:                                               ; preds = %82, %54, %40
  br label %84

84:                                               ; preds = %83, %26
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %3, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %3, align 4
  br label %20

88:                                               ; preds = %20
  ret void
}

declare dso_local i32 @mrsas_complete_mptmfi_passthru(%struct.mrsas_softc*, %struct.mrsas_mfi_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
