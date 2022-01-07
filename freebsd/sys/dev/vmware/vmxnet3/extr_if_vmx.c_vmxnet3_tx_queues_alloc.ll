; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_tx_queues_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_tx_queues_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_softc = type { %struct.vmxnet3_txqueue*, %struct.TYPE_3__ }
%struct.vmxnet3_txqueue = type { %struct.vmxnet3_txring, %struct.vmxnet3_comp_ring, %struct.vmxnet3_txq_shared* }
%struct.vmxnet3_txring = type { i8*, %struct.vmxnet3_txdesc* }
%struct.vmxnet3_txdesc = type { i32 }
%struct.vmxnet3_comp_ring = type { i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.vmxnet3_txcompdesc* }
%struct.vmxnet3_txcompdesc = type { i32 }
%struct.vmxnet3_txq_shared = type { i32 }
%struct.TYPE_3__ = type { i64, i64 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i8**, i32, i32)* @vmxnet3_tx_queues_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmxnet3_tx_queues_alloc(i32 %0, i64* %1, i8** %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.vmxnet3_softc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.vmxnet3_txqueue*, align 8
  %17 = alloca %struct.vmxnet3_txring*, align 8
  %18 = alloca %struct.vmxnet3_comp_ring*, align 8
  store i32 %0, i32* %7, align 4
  store i64* %1, i64** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.vmxnet3_softc* @iflib_get_softc(i32 %19)
  store %struct.vmxnet3_softc* %20, %struct.vmxnet3_softc** %12, align 8
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 40, %22
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @M_DEVBUF, align 4
  %26 = load i32, i32* @M_NOWAIT, align 4
  %27 = load i32, i32* @M_ZERO, align 4
  %28 = or i32 %26, %27
  %29 = call %struct.vmxnet3_txqueue* @malloc(i32 %24, i32 %25, i32 %28)
  %30 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %12, align 8
  %31 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %30, i32 0, i32 0
  store %struct.vmxnet3_txqueue* %29, %struct.vmxnet3_txqueue** %31, align 8
  %32 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %12, align 8
  %33 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %32, i32 0, i32 0
  %34 = load %struct.vmxnet3_txqueue*, %struct.vmxnet3_txqueue** %33, align 8
  %35 = icmp eq %struct.vmxnet3_txqueue* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %5
  %37 = load i32, i32* @ENOMEM, align 4
  store i32 %37, i32* %6, align 4
  br label %151

38:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %39

39:                                               ; preds = %47, %38
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %12, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @vmxnet3_init_txq(%struct.vmxnet3_softc* %44, i32 %45)
  br label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %13, align 4
  br label %39

50:                                               ; preds = %39
  %51 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %12, align 8
  %52 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %12, align 8
  %58 = call i32 @vmxnet3_queues_shared_alloc(%struct.vmxnet3_softc* %57)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %14, align 4
  store i32 %62, i32* %6, align 4
  br label %151

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %50
  %65 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %12, align 8
  %66 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %15, align 8
  store i32 0, i32* %13, align 4
  br label %69

69:                                               ; preds = %85, %64
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %88

73:                                               ; preds = %69
  %74 = load i64, i64* %15, align 8
  %75 = inttoptr i64 %74 to %struct.vmxnet3_txq_shared*
  %76 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %12, align 8
  %77 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %76, i32 0, i32 0
  %78 = load %struct.vmxnet3_txqueue*, %struct.vmxnet3_txqueue** %77, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.vmxnet3_txqueue, %struct.vmxnet3_txqueue* %78, i64 %80
  %82 = getelementptr inbounds %struct.vmxnet3_txqueue, %struct.vmxnet3_txqueue* %81, i32 0, i32 2
  store %struct.vmxnet3_txq_shared* %75, %struct.vmxnet3_txq_shared** %82, align 8
  %83 = load i64, i64* %15, align 8
  %84 = add i64 %83, 4
  store i64 %84, i64* %15, align 8
  br label %85

85:                                               ; preds = %73
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %13, align 4
  br label %69

88:                                               ; preds = %69
  store i32 0, i32* %13, align 4
  br label %89

89:                                               ; preds = %147, %88
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %150

93:                                               ; preds = %89
  %94 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %12, align 8
  %95 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %94, i32 0, i32 0
  %96 = load %struct.vmxnet3_txqueue*, %struct.vmxnet3_txqueue** %95, align 8
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.vmxnet3_txqueue, %struct.vmxnet3_txqueue* %96, i64 %98
  store %struct.vmxnet3_txqueue* %99, %struct.vmxnet3_txqueue** %16, align 8
  %100 = load %struct.vmxnet3_txqueue*, %struct.vmxnet3_txqueue** %16, align 8
  %101 = getelementptr inbounds %struct.vmxnet3_txqueue, %struct.vmxnet3_txqueue* %100, i32 0, i32 1
  store %struct.vmxnet3_comp_ring* %101, %struct.vmxnet3_comp_ring** %18, align 8
  %102 = load %struct.vmxnet3_txqueue*, %struct.vmxnet3_txqueue** %16, align 8
  %103 = getelementptr inbounds %struct.vmxnet3_txqueue, %struct.vmxnet3_txqueue* %102, i32 0, i32 0
  store %struct.vmxnet3_txring* %103, %struct.vmxnet3_txring** %17, align 8
  %104 = load i64*, i64** %8, align 8
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %10, align 4
  %107 = mul nsw i32 %105, %106
  %108 = add nsw i32 %107, 0
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %104, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to %struct.vmxnet3_txcompdesc*
  %113 = load %struct.vmxnet3_comp_ring*, %struct.vmxnet3_comp_ring** %18, align 8
  %114 = getelementptr inbounds %struct.vmxnet3_comp_ring, %struct.vmxnet3_comp_ring* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  store %struct.vmxnet3_txcompdesc* %112, %struct.vmxnet3_txcompdesc** %115, align 8
  %116 = load i8**, i8*** %9, align 8
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %10, align 4
  %119 = mul nsw i32 %117, %118
  %120 = add nsw i32 %119, 0
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %116, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.vmxnet3_comp_ring*, %struct.vmxnet3_comp_ring** %18, align 8
  %125 = getelementptr inbounds %struct.vmxnet3_comp_ring, %struct.vmxnet3_comp_ring* %124, i32 0, i32 0
  store i8* %123, i8** %125, align 8
  %126 = load i64*, i64** %8, align 8
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* %10, align 4
  %129 = mul nsw i32 %127, %128
  %130 = add nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64, i64* %126, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = inttoptr i64 %133 to %struct.vmxnet3_txdesc*
  %135 = load %struct.vmxnet3_txring*, %struct.vmxnet3_txring** %17, align 8
  %136 = getelementptr inbounds %struct.vmxnet3_txring, %struct.vmxnet3_txring* %135, i32 0, i32 1
  store %struct.vmxnet3_txdesc* %134, %struct.vmxnet3_txdesc** %136, align 8
  %137 = load i8**, i8*** %9, align 8
  %138 = load i32, i32* %13, align 4
  %139 = load i32, i32* %10, align 4
  %140 = mul nsw i32 %138, %139
  %141 = add nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8*, i8** %137, i64 %142
  %144 = load i8*, i8** %143, align 8
  %145 = load %struct.vmxnet3_txring*, %struct.vmxnet3_txring** %17, align 8
  %146 = getelementptr inbounds %struct.vmxnet3_txring, %struct.vmxnet3_txring* %145, i32 0, i32 0
  store i8* %144, i8** %146, align 8
  br label %147

147:                                              ; preds = %93
  %148 = load i32, i32* %13, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %13, align 4
  br label %89

150:                                              ; preds = %89
  store i32 0, i32* %6, align 4
  br label %151

151:                                              ; preds = %150, %61, %36
  %152 = load i32, i32* %6, align 4
  ret i32 %152
}

declare dso_local %struct.vmxnet3_softc* @iflib_get_softc(i32) #1

declare dso_local %struct.vmxnet3_txqueue* @malloc(i32, i32, i32) #1

declare dso_local i32 @vmxnet3_init_txq(%struct.vmxnet3_softc*, i32) #1

declare dso_local i32 @vmxnet3_queues_shared_alloc(%struct.vmxnet3_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
