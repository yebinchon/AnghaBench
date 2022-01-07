; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni.c_prepare_to_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni.c_prepare_to_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbni_softc = type { i32, %struct.mbuf*, %struct.TYPE_2__*, i32, i32, i32, i64, i64 }
%struct.mbuf = type { i64, %struct.mbuf* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"sbni: memory leak!\0A\00", align 1
@FL_WAIT_ACK = common dso_local global i32 0, align 4
@FL_NEED_RESEND = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@SBNI_MIN_LEN = common dso_local global i64 0, align 8
@CSR0 = common dso_local global i32 0, align 4
@TR_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbni_softc*)* @prepare_to_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_to_send(%struct.sbni_softc* %0) #0 {
  %2 = alloca %struct.sbni_softc*, align 8
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca i64, align 8
  store %struct.sbni_softc* %0, %struct.sbni_softc** %2, align 8
  %5 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %6 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %5, i32 0, i32 1
  %7 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %8 = icmp ne %struct.mbuf* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %1
  %12 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %13 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %12, i32 0, i32 7
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* @FL_WAIT_ACK, align 4
  %15 = load i32, i32* @FL_NEED_RESEND, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %19 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 8
  br label %22

22:                                               ; preds = %71, %11
  %23 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %24 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %28 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %27, i32 0, i32 1
  %29 = load %struct.mbuf*, %struct.mbuf** %28, align 8
  %30 = call i32 @IF_DEQUEUE(i32* %26, %struct.mbuf* %29)
  %31 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %32 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %31, i32 0, i32 1
  %33 = load %struct.mbuf*, %struct.mbuf** %32, align 8
  %34 = icmp ne %struct.mbuf* %33, null
  br i1 %34, label %50, label %35

35:                                               ; preds = %22
  %36 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %37 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %36, i32 0, i32 6
  store i64 0, i64* %37, align 8
  %38 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %39 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %38, i32 0, i32 5
  store i32 0, i32* %39, align 8
  %40 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %41 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %40, i32 0, i32 4
  store i32 0, i32* %41, align 4
  %42 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %45 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %43
  store i32 %49, i32* %47, align 4
  br label %122

50:                                               ; preds = %22
  store i64 0, i64* %4, align 8
  %51 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %52 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %51, i32 0, i32 1
  %53 = load %struct.mbuf*, %struct.mbuf** %52, align 8
  store %struct.mbuf* %53, %struct.mbuf** %3, align 8
  br label %54

54:                                               ; preds = %63, %50
  %55 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %56 = icmp ne %struct.mbuf* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %59 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %4, align 8
  %62 = add nsw i64 %61, %60
  store i64 %62, i64* %4, align 8
  br label %63

63:                                               ; preds = %57
  %64 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %65 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %64, i32 0, i32 1
  %66 = load %struct.mbuf*, %struct.mbuf** %65, align 8
  store %struct.mbuf* %66, %struct.mbuf** %3, align 8
  br label %54

67:                                               ; preds = %54
  %68 = load i64, i64* %4, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %76

71:                                               ; preds = %67
  %72 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %73 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %72, i32 0, i32 1
  %74 = load %struct.mbuf*, %struct.mbuf** %73, align 8
  %75 = call i32 @m_freem(%struct.mbuf* %74)
  br label %22

76:                                               ; preds = %70
  %77 = load i64, i64* %4, align 8
  %78 = load i64, i64* @SBNI_MIN_LEN, align 8
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i64, i64* @SBNI_MIN_LEN, align 8
  store i64 %81, i64* %4, align 8
  br label %82

82:                                               ; preds = %80, %76
  %83 = load i64, i64* %4, align 8
  %84 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %85 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %84, i32 0, i32 6
  store i64 %83, i64* %85, align 8
  %86 = load i64, i64* %4, align 8
  %87 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %88 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @howmany(i64 %86, i32 %89)
  %91 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %92 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %91, i32 0, i32 5
  store i32 %90, i32* %92, align 8
  %93 = load i64, i64* %4, align 8
  %94 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %95 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @min(i64 %93, i32 %96)
  %98 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %99 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 4
  %100 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %101 = load i32, i32* @CSR0, align 4
  %102 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %103 = load i32, i32* @CSR0, align 4
  %104 = call i32 @sbni_inb(%struct.sbni_softc* %102, i32 %103)
  %105 = load i32, i32* @TR_REQ, align 4
  %106 = or i32 %104, %105
  %107 = call i32 @sbni_outb(%struct.sbni_softc* %100, i32 %101, i32 %106)
  %108 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %109 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %110 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %109, i32 0, i32 2
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %108
  store i32 %114, i32* %112, align 4
  %115 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %116 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %115, i32 0, i32 2
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = load %struct.sbni_softc*, %struct.sbni_softc** %2, align 8
  %119 = getelementptr inbounds %struct.sbni_softc, %struct.sbni_softc* %118, i32 0, i32 1
  %120 = load %struct.mbuf*, %struct.mbuf** %119, align 8
  %121 = call i32 @BPF_MTAP(%struct.TYPE_2__* %117, %struct.mbuf* %120)
  br label %122

122:                                              ; preds = %82, %35
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @IF_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @howmany(i64, i32) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @sbni_outb(%struct.sbni_softc*, i32, i32) #1

declare dso_local i32 @sbni_inb(%struct.sbni_softc*, i32) #1

declare dso_local i32 @BPF_MTAP(%struct.TYPE_2__*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
