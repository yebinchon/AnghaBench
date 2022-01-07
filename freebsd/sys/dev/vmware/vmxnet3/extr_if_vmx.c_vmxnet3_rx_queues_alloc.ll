; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_rx_queues_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_rx_queues_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_softc = type { %struct.vmxnet3_rxqueue*, %struct.TYPE_4__, %struct.TYPE_6__* }
%struct.vmxnet3_rxqueue = type { %struct.vmxnet3_rxring*, %struct.vmxnet3_comp_ring, %struct.vmxnet3_rxq_shared* }
%struct.vmxnet3_rxring = type { i8*, %struct.vmxnet3_rxdesc* }
%struct.vmxnet3_rxdesc = type { i32 }
%struct.vmxnet3_comp_ring = type { i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.vmxnet3_rxcompdesc* }
%struct.vmxnet3_rxcompdesc = type { i32 }
%struct.vmxnet3_rxq_shared = type { i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i8**, i32, i32)* @vmxnet3_rx_queues_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmxnet3_rx_queues_alloc(i32 %0, i64* %1, i8** %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.vmxnet3_softc*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.vmxnet3_rxqueue*, align 8
  %19 = alloca %struct.vmxnet3_rxring*, align 8
  %20 = alloca %struct.vmxnet3_comp_ring*, align 8
  store i32 %0, i32* %7, align 4
  store i64* %1, i64** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.vmxnet3_softc* @iflib_get_softc(i32 %21)
  store %struct.vmxnet3_softc* %22, %struct.vmxnet3_softc** %12, align 8
  %23 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %12, align 8
  %24 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %23, i32 0, i32 2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %13, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 32, %27
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @M_DEVBUF, align 4
  %31 = load i32, i32* @M_NOWAIT, align 4
  %32 = load i32, i32* @M_ZERO, align 4
  %33 = or i32 %31, %32
  %34 = call %struct.vmxnet3_rxqueue* @malloc(i32 %29, i32 %30, i32 %33)
  %35 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %12, align 8
  %36 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %35, i32 0, i32 0
  store %struct.vmxnet3_rxqueue* %34, %struct.vmxnet3_rxqueue** %36, align 8
  %37 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %12, align 8
  %38 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %37, i32 0, i32 0
  %39 = load %struct.vmxnet3_rxqueue*, %struct.vmxnet3_rxqueue** %38, align 8
  %40 = icmp eq %struct.vmxnet3_rxqueue* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %5
  %42 = load i32, i32* @ENOMEM, align 4
  store i32 %42, i32* %6, align 4
  br label %181

43:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  br label %44

44:                                               ; preds = %53, %43
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %12, align 8
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @vmxnet3_init_rxq(%struct.vmxnet3_softc* %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %14, align 4
  br label %44

56:                                               ; preds = %44
  %57 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %12, align 8
  %58 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %12, align 8
  %64 = call i32 @vmxnet3_queues_shared_alloc(%struct.vmxnet3_softc* %63)
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %16, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* %16, align 4
  store i32 %68, i32* %6, align 4
  br label %181

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69, %56
  %71 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %12, align 8
  %72 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 4
  %80 = add i64 %74, %79
  store i64 %80, i64* %17, align 8
  store i32 0, i32* %14, align 4
  br label %81

81:                                               ; preds = %97, %70
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %100

85:                                               ; preds = %81
  %86 = load i64, i64* %17, align 8
  %87 = inttoptr i64 %86 to %struct.vmxnet3_rxq_shared*
  %88 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %12, align 8
  %89 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %88, i32 0, i32 0
  %90 = load %struct.vmxnet3_rxqueue*, %struct.vmxnet3_rxqueue** %89, align 8
  %91 = load i32, i32* %14, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.vmxnet3_rxqueue, %struct.vmxnet3_rxqueue* %90, i64 %92
  %94 = getelementptr inbounds %struct.vmxnet3_rxqueue, %struct.vmxnet3_rxqueue* %93, i32 0, i32 2
  store %struct.vmxnet3_rxq_shared* %87, %struct.vmxnet3_rxq_shared** %94, align 8
  %95 = load i64, i64* %17, align 8
  %96 = add i64 %95, 4
  store i64 %96, i64* %17, align 8
  br label %97

97:                                               ; preds = %85
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %14, align 4
  br label %81

100:                                              ; preds = %81
  store i32 0, i32* %14, align 4
  br label %101

101:                                              ; preds = %177, %100
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %180

105:                                              ; preds = %101
  %106 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %12, align 8
  %107 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %106, i32 0, i32 0
  %108 = load %struct.vmxnet3_rxqueue*, %struct.vmxnet3_rxqueue** %107, align 8
  %109 = load i32, i32* %14, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.vmxnet3_rxqueue, %struct.vmxnet3_rxqueue* %108, i64 %110
  store %struct.vmxnet3_rxqueue* %111, %struct.vmxnet3_rxqueue** %18, align 8
  %112 = load %struct.vmxnet3_rxqueue*, %struct.vmxnet3_rxqueue** %18, align 8
  %113 = getelementptr inbounds %struct.vmxnet3_rxqueue, %struct.vmxnet3_rxqueue* %112, i32 0, i32 1
  store %struct.vmxnet3_comp_ring* %113, %struct.vmxnet3_comp_ring** %20, align 8
  %114 = load i64*, i64** %8, align 8
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %10, align 4
  %117 = mul nsw i32 %115, %116
  %118 = add nsw i32 %117, 0
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %114, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = inttoptr i64 %121 to %struct.vmxnet3_rxcompdesc*
  %123 = load %struct.vmxnet3_comp_ring*, %struct.vmxnet3_comp_ring** %20, align 8
  %124 = getelementptr inbounds %struct.vmxnet3_comp_ring, %struct.vmxnet3_comp_ring* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  store %struct.vmxnet3_rxcompdesc* %122, %struct.vmxnet3_rxcompdesc** %125, align 8
  %126 = load i8**, i8*** %9, align 8
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* %10, align 4
  %129 = mul nsw i32 %127, %128
  %130 = add nsw i32 %129, 0
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8*, i8** %126, i64 %131
  %133 = load i8*, i8** %132, align 8
  %134 = load %struct.vmxnet3_comp_ring*, %struct.vmxnet3_comp_ring** %20, align 8
  %135 = getelementptr inbounds %struct.vmxnet3_comp_ring, %struct.vmxnet3_comp_ring* %134, i32 0, i32 0
  store i8* %133, i8** %135, align 8
  store i32 0, i32* %15, align 4
  br label %136

136:                                              ; preds = %173, %105
  %137 = load i32, i32* %15, align 4
  %138 = load i32, i32* %10, align 4
  %139 = sub nsw i32 %138, 1
  %140 = icmp slt i32 %137, %139
  br i1 %140, label %141, label %176

141:                                              ; preds = %136
  %142 = load %struct.vmxnet3_rxqueue*, %struct.vmxnet3_rxqueue** %18, align 8
  %143 = getelementptr inbounds %struct.vmxnet3_rxqueue, %struct.vmxnet3_rxqueue* %142, i32 0, i32 0
  %144 = load %struct.vmxnet3_rxring*, %struct.vmxnet3_rxring** %143, align 8
  %145 = load i32, i32* %15, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.vmxnet3_rxring, %struct.vmxnet3_rxring* %144, i64 %146
  store %struct.vmxnet3_rxring* %147, %struct.vmxnet3_rxring** %19, align 8
  %148 = load i64*, i64** %8, align 8
  %149 = load i32, i32* %14, align 4
  %150 = load i32, i32* %10, align 4
  %151 = mul nsw i32 %149, %150
  %152 = add nsw i32 %151, 1
  %153 = load i32, i32* %15, align 4
  %154 = add nsw i32 %152, %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i64, i64* %148, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = inttoptr i64 %157 to %struct.vmxnet3_rxdesc*
  %159 = load %struct.vmxnet3_rxring*, %struct.vmxnet3_rxring** %19, align 8
  %160 = getelementptr inbounds %struct.vmxnet3_rxring, %struct.vmxnet3_rxring* %159, i32 0, i32 1
  store %struct.vmxnet3_rxdesc* %158, %struct.vmxnet3_rxdesc** %160, align 8
  %161 = load i8**, i8*** %9, align 8
  %162 = load i32, i32* %14, align 4
  %163 = load i32, i32* %10, align 4
  %164 = mul nsw i32 %162, %163
  %165 = add nsw i32 %164, 1
  %166 = load i32, i32* %15, align 4
  %167 = add nsw i32 %165, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8*, i8** %161, i64 %168
  %170 = load i8*, i8** %169, align 8
  %171 = load %struct.vmxnet3_rxring*, %struct.vmxnet3_rxring** %19, align 8
  %172 = getelementptr inbounds %struct.vmxnet3_rxring, %struct.vmxnet3_rxring* %171, i32 0, i32 0
  store i8* %170, i8** %172, align 8
  br label %173

173:                                              ; preds = %141
  %174 = load i32, i32* %15, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %15, align 4
  br label %136

176:                                              ; preds = %136
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %14, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %14, align 4
  br label %101

180:                                              ; preds = %101
  store i32 0, i32* %6, align 4
  br label %181

181:                                              ; preds = %180, %67, %41
  %182 = load i32, i32* %6, align 4
  ret i32 %182
}

declare dso_local %struct.vmxnet3_softc* @iflib_get_softc(i32) #1

declare dso_local %struct.vmxnet3_rxqueue* @malloc(i32, i32, i32) #1

declare dso_local i32 @vmxnet3_init_rxq(%struct.vmxnet3_softc*, i32, i32) #1

declare dso_local i32 @vmxnet3_queues_shared_alloc(%struct.vmxnet3_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
