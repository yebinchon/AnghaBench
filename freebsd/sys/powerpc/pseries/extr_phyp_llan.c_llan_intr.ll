; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_phyp_llan.c_llan_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_phyp_llan.c_llan_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llan_softc = type { i64, i32, i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32, i32, i64, i64 }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*, %struct.mbuf*)* }
%struct.mbuf = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_7__* }
%struct.llan_xfer = type { %struct.mbuf* }

@H_VIO_SIGNAL = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @llan_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @llan_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.llan_softc*, align 8
  %4 = alloca %struct.llan_xfer*, align 8
  %5 = alloca %struct.mbuf*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.llan_softc*
  store %struct.llan_softc* %7, %struct.llan_softc** %3, align 8
  %8 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %9 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %8, i32 0, i32 3
  %10 = call i32 @mtx_lock(i32* %9)
  br label %11

11:                                               ; preds = %180, %1
  %12 = load i32, i32* @H_VIO_SIGNAL, align 4
  %13 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %14 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @phyp_hcall(i32 %12, i32 %15, i32 0)
  br label %17

17:                                               ; preds = %143, %73, %11
  %18 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %19 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %18, i32 0, i32 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %22 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = ashr i32 %26, 7
  %28 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %29 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %160

32:                                               ; preds = %17
  %33 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %34 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %33, i32 0, i32 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %37 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.llan_xfer*
  store %struct.llan_xfer* %42, %struct.llan_xfer** %4, align 8
  %43 = load %struct.llan_xfer*, %struct.llan_xfer** %4, align 8
  %44 = getelementptr inbounds %struct.llan_xfer, %struct.llan_xfer* %43, i32 0, i32 0
  %45 = load %struct.mbuf*, %struct.mbuf** %44, align 8
  store %struct.mbuf* %45, %struct.mbuf** %5, align 8
  %46 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %47 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %48 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %47, i32 0, i32 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %51 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %55, 8
  %57 = call i32 @m_adj(%struct.mbuf* %46, i64 %56)
  %58 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %59 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %58, i32 0, i32 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %62 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %68 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %70 = load %struct.llan_xfer*, %struct.llan_xfer** %4, align 8
  %71 = call i64 @llan_add_rxbuf(%struct.llan_softc* %69, %struct.llan_xfer* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %32
  %74 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %75 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %74, i32 0, i32 6
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %78 = call i32 @if_inc_counter(%struct.TYPE_7__* %76, i32 %77, i32 1)
  br label %17

79:                                               ; preds = %32
  %80 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %81 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %80, i32 0, i32 6
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %84 = call i32 @if_inc_counter(%struct.TYPE_7__* %82, i32 %83, i32 1)
  %85 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %86 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %87 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %86, i32 0, i32 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %90 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @m_adj(%struct.mbuf* %85, i64 %94)
  %96 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %97 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %96, i32 0, i32 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %100 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %106 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %108 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %107, i32 0, i32 6
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %111 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  store %struct.TYPE_7__* %109, %struct.TYPE_7__** %112, align 8
  %113 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %114 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %117 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  store i32 %115, i32* %118, align 8
  %119 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %120 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %120, align 8
  %123 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %124 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %127 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = udiv i64 %129, 24
  %131 = icmp uge i64 %125, %130
  br i1 %131, label %132, label %143

132:                                              ; preds = %79
  %133 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %134 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %133, i32 0, i32 0
  store i64 0, i64* %134, align 8
  %135 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %136 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  %139 = xor i1 %138, true
  %140 = zext i1 %139 to i32
  %141 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %142 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 8
  br label %143

143:                                              ; preds = %132, %79
  %144 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %145 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %144, i32 0, i32 3
  %146 = call i32 @mtx_unlock(i32* %145)
  %147 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %148 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %147, i32 0, i32 6
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load i32 (%struct.TYPE_7__*, %struct.mbuf*)*, i32 (%struct.TYPE_7__*, %struct.mbuf*)** %150, align 8
  %152 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %153 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %152, i32 0, i32 6
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %153, align 8
  %155 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %156 = call i32 %151(%struct.TYPE_7__* %154, %struct.mbuf* %155)
  %157 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %158 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %157, i32 0, i32 3
  %159 = call i32 @mtx_lock(i32* %158)
  br label %17

160:                                              ; preds = %17
  %161 = load i32, i32* @H_VIO_SIGNAL, align 4
  %162 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %163 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @phyp_hcall(i32 %161, i32 %164, i32 1)
  %166 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %167 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %166, i32 0, i32 4
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  %169 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %170 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = ashr i32 %174, 7
  %176 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %177 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = icmp eq i32 %175, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %160
  br label %11

181:                                              ; preds = %160
  %182 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %183 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %182, i32 0, i32 3
  %184 = call i32 @mtx_unlock(i32* %183)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @phyp_hcall(i32, i32, i32) #1

declare dso_local i32 @m_adj(%struct.mbuf*, i64) #1

declare dso_local i64 @llan_add_rxbuf(%struct.llan_softc*, %struct.llan_xfer*) #1

declare dso_local i32 @if_inc_counter(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
