; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_isc_rxd_refill.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_isc_rxd_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64, i64, i32* }
%struct.vmxnet3_softc = type { %struct.vmxnet3_rxqueue* }
%struct.vmxnet3_rxqueue = type { %struct.vmxnet3_rxring* }
%struct.vmxnet3_rxring = type { i32, i32, %struct.vmxnet3_rxdesc* }
%struct.vmxnet3_rxdesc = type { i32, i64, i32, i32 }

@VMXNET3_BTYPE_HEAD = common dso_local global i64 0, align 8
@VMXNET3_BTYPE_BODY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_3__*)* @vmxnet3_isc_rxd_refill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_isc_rxd_refill(i8* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.vmxnet3_softc*, align 8
  %6 = alloca %struct.vmxnet3_rxqueue*, align 8
  %7 = alloca %struct.vmxnet3_rxring*, align 8
  %8 = alloca %struct.vmxnet3_rxdesc*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %12, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %14, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 5
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %9, align 8
  %31 = load i8*, i8** %3, align 8
  %32 = bitcast i8* %31 to %struct.vmxnet3_softc*
  store %struct.vmxnet3_softc* %32, %struct.vmxnet3_softc** %5, align 8
  %33 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %5, align 8
  %34 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %33, i32 0, i32 0
  %35 = load %struct.vmxnet3_rxqueue*, %struct.vmxnet3_rxqueue** %34, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.vmxnet3_rxqueue, %struct.vmxnet3_rxqueue* %35, i64 %38
  store %struct.vmxnet3_rxqueue* %39, %struct.vmxnet3_rxqueue** %6, align 8
  %40 = load %struct.vmxnet3_rxqueue*, %struct.vmxnet3_rxqueue** %6, align 8
  %41 = getelementptr inbounds %struct.vmxnet3_rxqueue, %struct.vmxnet3_rxqueue* %40, i32 0, i32 0
  %42 = load %struct.vmxnet3_rxring*, %struct.vmxnet3_rxring** %41, align 8
  %43 = load i64, i64* %14, align 8
  %44 = getelementptr inbounds %struct.vmxnet3_rxring, %struct.vmxnet3_rxring* %42, i64 %43
  store %struct.vmxnet3_rxring* %44, %struct.vmxnet3_rxring** %7, align 8
  %45 = load %struct.vmxnet3_rxring*, %struct.vmxnet3_rxring** %7, align 8
  %46 = getelementptr inbounds %struct.vmxnet3_rxring, %struct.vmxnet3_rxring* %45, i32 0, i32 2
  %47 = load %struct.vmxnet3_rxdesc*, %struct.vmxnet3_rxdesc** %46, align 8
  store %struct.vmxnet3_rxdesc* %47, %struct.vmxnet3_rxdesc** %8, align 8
  %48 = load i64, i64* %14, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %2
  %51 = load i64, i64* @VMXNET3_BTYPE_HEAD, align 8
  br label %54

52:                                               ; preds = %2
  %53 = load i64, i64* @VMXNET3_BTYPE_BODY, align 8
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i64 [ %51, %50 ], [ %53, %52 ]
  store i64 %55, i64* %15, align 8
  store i32 0, i32* %13, align 4
  br label %56

56:                                               ; preds = %103, %54
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %106

60:                                               ; preds = %56
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.vmxnet3_rxdesc*, %struct.vmxnet3_rxdesc** %8, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.vmxnet3_rxdesc, %struct.vmxnet3_rxdesc* %66, i64 %68
  %70 = getelementptr inbounds %struct.vmxnet3_rxdesc, %struct.vmxnet3_rxdesc* %69, i32 0, i32 3
  store i32 %65, i32* %70, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.vmxnet3_rxdesc*, %struct.vmxnet3_rxdesc** %8, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.vmxnet3_rxdesc, %struct.vmxnet3_rxdesc* %72, i64 %74
  %76 = getelementptr inbounds %struct.vmxnet3_rxdesc, %struct.vmxnet3_rxdesc* %75, i32 0, i32 0
  store i32 %71, i32* %76, align 8
  %77 = load i64, i64* %15, align 8
  %78 = load %struct.vmxnet3_rxdesc*, %struct.vmxnet3_rxdesc** %8, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.vmxnet3_rxdesc, %struct.vmxnet3_rxdesc* %78, i64 %80
  %82 = getelementptr inbounds %struct.vmxnet3_rxdesc, %struct.vmxnet3_rxdesc* %81, i32 0, i32 1
  store i64 %77, i64* %82, align 8
  %83 = load %struct.vmxnet3_rxring*, %struct.vmxnet3_rxring** %7, align 8
  %84 = getelementptr inbounds %struct.vmxnet3_rxring, %struct.vmxnet3_rxring* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.vmxnet3_rxdesc*, %struct.vmxnet3_rxdesc** %8, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.vmxnet3_rxdesc, %struct.vmxnet3_rxdesc* %86, i64 %88
  %90 = getelementptr inbounds %struct.vmxnet3_rxdesc, %struct.vmxnet3_rxdesc* %89, i32 0, i32 2
  store i32 %85, i32* %90, align 8
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %12, align 4
  %93 = load %struct.vmxnet3_rxring*, %struct.vmxnet3_rxring** %7, align 8
  %94 = getelementptr inbounds %struct.vmxnet3_rxring, %struct.vmxnet3_rxring* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %92, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %60
  store i32 0, i32* %12, align 4
  %98 = load %struct.vmxnet3_rxring*, %struct.vmxnet3_rxring** %7, align 8
  %99 = getelementptr inbounds %struct.vmxnet3_rxring, %struct.vmxnet3_rxring* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = xor i32 %100, 1
  store i32 %101, i32* %99, align 8
  br label %102

102:                                              ; preds = %97, %60
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %13, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %13, align 4
  br label %56

106:                                              ; preds = %56
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
