; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_isc_txd_credits_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_isc_txd_credits_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_softc = type { %struct.vmxnet3_txqueue* }
%struct.vmxnet3_txqueue = type { %struct.vmxnet3_txring, %struct.vmxnet3_comp_ring }
%struct.vmxnet3_txring = type { i32, i32 }
%struct.vmxnet3_comp_ring = type { i64, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.vmxnet3_txcompdesc* }
%struct.vmxnet3_txcompdesc = type { i32, i32 }

@VMXNET3_BARRIER_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32)* @vmxnet3_isc_txd_credits_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmxnet3_isc_txd_credits_update(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vmxnet3_softc*, align 8
  %9 = alloca %struct.vmxnet3_txqueue*, align 8
  %10 = alloca %struct.vmxnet3_comp_ring*, align 8
  %11 = alloca %struct.vmxnet3_txcompdesc*, align 8
  %12 = alloca %struct.vmxnet3_txring*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.vmxnet3_softc*
  store %struct.vmxnet3_softc* %15, %struct.vmxnet3_softc** %8, align 8
  %16 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %8, align 8
  %17 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %16, i32 0, i32 0
  %18 = load %struct.vmxnet3_txqueue*, %struct.vmxnet3_txqueue** %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds %struct.vmxnet3_txqueue, %struct.vmxnet3_txqueue* %18, i64 %19
  store %struct.vmxnet3_txqueue* %20, %struct.vmxnet3_txqueue** %9, align 8
  %21 = load %struct.vmxnet3_txqueue*, %struct.vmxnet3_txqueue** %9, align 8
  %22 = getelementptr inbounds %struct.vmxnet3_txqueue, %struct.vmxnet3_txqueue* %21, i32 0, i32 1
  store %struct.vmxnet3_comp_ring* %22, %struct.vmxnet3_comp_ring** %10, align 8
  %23 = load %struct.vmxnet3_txqueue*, %struct.vmxnet3_txqueue** %9, align 8
  %24 = getelementptr inbounds %struct.vmxnet3_txqueue, %struct.vmxnet3_txqueue* %23, i32 0, i32 0
  store %struct.vmxnet3_txring* %24, %struct.vmxnet3_txring** %12, align 8
  store i32 0, i32* %13, align 4
  br label %25

25:                                               ; preds = %100, %3
  %26 = load %struct.vmxnet3_comp_ring*, %struct.vmxnet3_comp_ring** %10, align 8
  %27 = getelementptr inbounds %struct.vmxnet3_comp_ring, %struct.vmxnet3_comp_ring* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.vmxnet3_txcompdesc*, %struct.vmxnet3_txcompdesc** %28, align 8
  %30 = load %struct.vmxnet3_comp_ring*, %struct.vmxnet3_comp_ring** %10, align 8
  %31 = getelementptr inbounds %struct.vmxnet3_comp_ring, %struct.vmxnet3_comp_ring* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.vmxnet3_txcompdesc, %struct.vmxnet3_txcompdesc* %29, i64 %32
  store %struct.vmxnet3_txcompdesc* %33, %struct.vmxnet3_txcompdesc** %11, align 8
  %34 = load %struct.vmxnet3_txcompdesc*, %struct.vmxnet3_txcompdesc** %11, align 8
  %35 = getelementptr inbounds %struct.vmxnet3_txcompdesc, %struct.vmxnet3_txcompdesc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.vmxnet3_comp_ring*, %struct.vmxnet3_comp_ring** %10, align 8
  %38 = getelementptr inbounds %struct.vmxnet3_comp_ring, %struct.vmxnet3_comp_ring* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %25
  br label %111

42:                                               ; preds = %25
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  store i32 1, i32* %4, align 4
  br label %113

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %8, align 8
  %49 = load i32, i32* @VMXNET3_BARRIER_RD, align 4
  %50 = call i32 @vmxnet3_barrier(%struct.vmxnet3_softc* %48, i32 %49)
  %51 = load %struct.vmxnet3_comp_ring*, %struct.vmxnet3_comp_ring** %10, align 8
  %52 = getelementptr inbounds %struct.vmxnet3_comp_ring, %struct.vmxnet3_comp_ring* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %52, align 8
  %55 = load %struct.vmxnet3_comp_ring*, %struct.vmxnet3_comp_ring** %10, align 8
  %56 = getelementptr inbounds %struct.vmxnet3_comp_ring, %struct.vmxnet3_comp_ring* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %54, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %47
  %60 = load %struct.vmxnet3_comp_ring*, %struct.vmxnet3_comp_ring** %10, align 8
  %61 = getelementptr inbounds %struct.vmxnet3_comp_ring, %struct.vmxnet3_comp_ring* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load %struct.vmxnet3_comp_ring*, %struct.vmxnet3_comp_ring** %10, align 8
  %63 = getelementptr inbounds %struct.vmxnet3_comp_ring, %struct.vmxnet3_comp_ring* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = xor i32 %64, 1
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %59, %47
  %67 = load %struct.vmxnet3_txcompdesc*, %struct.vmxnet3_txcompdesc** %11, align 8
  %68 = getelementptr inbounds %struct.vmxnet3_txcompdesc, %struct.vmxnet3_txcompdesc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.vmxnet3_txring*, %struct.vmxnet3_txring** %12, align 8
  %71 = getelementptr inbounds %struct.vmxnet3_txring, %struct.vmxnet3_txring* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %66
  %75 = load %struct.vmxnet3_txring*, %struct.vmxnet3_txring** %12, align 8
  %76 = getelementptr inbounds %struct.vmxnet3_txring, %struct.vmxnet3_txring* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.vmxnet3_txring*, %struct.vmxnet3_txring** %12, align 8
  %79 = getelementptr inbounds %struct.vmxnet3_txring, %struct.vmxnet3_txring* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.vmxnet3_txcompdesc*, %struct.vmxnet3_txcompdesc** %11, align 8
  %82 = getelementptr inbounds %struct.vmxnet3_txcompdesc, %struct.vmxnet3_txcompdesc* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %80, %83
  %85 = sub nsw i32 %77, %84
  %86 = add nsw i32 %85, 1
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %13, align 4
  br label %100

89:                                               ; preds = %66
  %90 = load %struct.vmxnet3_txcompdesc*, %struct.vmxnet3_txcompdesc** %11, align 8
  %91 = getelementptr inbounds %struct.vmxnet3_txcompdesc, %struct.vmxnet3_txcompdesc* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.vmxnet3_txring*, %struct.vmxnet3_txring** %12, align 8
  %94 = getelementptr inbounds %struct.vmxnet3_txring, %struct.vmxnet3_txring* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = sub nsw i32 %92, %95
  %97 = add nsw i32 %96, 1
  %98 = load i32, i32* %13, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %13, align 4
  br label %100

100:                                              ; preds = %89, %74
  %101 = load %struct.vmxnet3_txcompdesc*, %struct.vmxnet3_txcompdesc** %11, align 8
  %102 = getelementptr inbounds %struct.vmxnet3_txcompdesc, %struct.vmxnet3_txcompdesc* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  %105 = load %struct.vmxnet3_txring*, %struct.vmxnet3_txring** %12, align 8
  %106 = getelementptr inbounds %struct.vmxnet3_txring, %struct.vmxnet3_txring* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = srem i32 %104, %107
  %109 = load %struct.vmxnet3_txring*, %struct.vmxnet3_txring** %12, align 8
  %110 = getelementptr inbounds %struct.vmxnet3_txring, %struct.vmxnet3_txring* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  br label %25

111:                                              ; preds = %41
  %112 = load i32, i32* %13, align 4
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %111, %45
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @vmxnet3_barrier(%struct.vmxnet3_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
