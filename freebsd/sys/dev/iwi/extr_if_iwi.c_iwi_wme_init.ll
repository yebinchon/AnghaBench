; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_wme_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_wme_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmeParams = type { i32, i32, i32, i32, i32 }
%struct.iwi_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i8**, i8**, i8**, i32* }

@WME_NUM_AC = common dso_local global i32 0, align 4
@iwi_wme_cck_params = common dso_local global %struct.wmeParams* null, align 8
@iwi_wme_ofdm_params = common dso_local global %struct.wmeParams* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwi_softc*)* @iwi_wme_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwi_wme_init(%struct.iwi_softc* %0) #0 {
  %2 = alloca %struct.iwi_softc*, align 8
  %3 = alloca %struct.wmeParams*, align 8
  %4 = alloca i32, align 4
  store %struct.iwi_softc* %0, %struct.iwi_softc** %2, align 8
  %5 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %6 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = call i32 @memset(%struct.TYPE_2__* %7, i32 0, i32 8)
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %148, %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @WME_NUM_AC, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %151

13:                                               ; preds = %9
  %14 = load %struct.wmeParams*, %struct.wmeParams** @iwi_wme_cck_params, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %14, i64 %16
  store %struct.wmeParams* %17, %struct.wmeParams** %3, align 8
  %18 = load %struct.wmeParams*, %struct.wmeParams** %3, align 8
  %19 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %22 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 %20, i32* %29, align 4
  %30 = load %struct.wmeParams*, %struct.wmeParams** %3, align 8
  %31 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @IWI_EXP2(i32 %32)
  %34 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %35 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  %39 = load i8**, i8*** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  store i8* %33, i8** %42, align 8
  %43 = load %struct.wmeParams*, %struct.wmeParams** %3, align 8
  %44 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @IWI_EXP2(i32 %45)
  %47 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %48 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i8**, i8*** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  store i8* %46, i8** %55, align 8
  %56 = load %struct.wmeParams*, %struct.wmeParams** %3, align 8
  %57 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @IWI_USEC(i32 %58)
  %60 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %61 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i8**, i8*** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  store i8* %59, i8** %68, align 8
  %69 = load %struct.wmeParams*, %struct.wmeParams** %3, align 8
  %70 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %73 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %71, i32* %80, align 4
  %81 = load %struct.wmeParams*, %struct.wmeParams** @iwi_wme_ofdm_params, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %81, i64 %83
  store %struct.wmeParams* %84, %struct.wmeParams** %3, align 8
  %85 = load %struct.wmeParams*, %struct.wmeParams** %3, align 8
  %86 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %89 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 2
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 4
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %87, i32* %96, align 4
  %97 = load %struct.wmeParams*, %struct.wmeParams** %3, align 8
  %98 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @IWI_EXP2(i32 %99)
  %101 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %102 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 2
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 3
  %106 = load i8**, i8*** %105, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %106, i64 %108
  store i8* %100, i8** %109, align 8
  %110 = load %struct.wmeParams*, %struct.wmeParams** %3, align 8
  %111 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i8* @IWI_EXP2(i32 %112)
  %114 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %115 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %114, i32 0, i32 0
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 2
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 2
  %119 = load i8**, i8*** %118, align 8
  %120 = load i32, i32* %4, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  store i8* %113, i8** %122, align 8
  %123 = load %struct.wmeParams*, %struct.wmeParams** %3, align 8
  %124 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i8* @IWI_USEC(i32 %125)
  %127 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %128 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %127, i32 0, i32 0
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i64 2
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 1
  %132 = load i8**, i8*** %131, align 8
  %133 = load i32, i32* %4, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134
  store i8* %126, i8** %135, align 8
  %136 = load %struct.wmeParams*, %struct.wmeParams** %3, align 8
  %137 = getelementptr inbounds %struct.wmeParams, %struct.wmeParams* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %140 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %139, i32 0, i32 0
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i64 2
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %4, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  store i32 %138, i32* %147, align 4
  br label %148

148:                                              ; preds = %13
  %149 = load i32, i32* %4, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %4, align 4
  br label %9

151:                                              ; preds = %9
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i8* @IWI_EXP2(i32) #1

declare dso_local i8* @IWI_USEC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
