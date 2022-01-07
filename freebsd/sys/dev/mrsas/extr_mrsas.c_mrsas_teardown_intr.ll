; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_teardown_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_teardown_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i32, i32, i32**, i32**, i32*, i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrsas_teardown_intr(%struct.mrsas_softc* %0) #0 {
  %2 = alloca %struct.mrsas_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %2, align 8
  %4 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %5 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %4, i32 0, i32 5
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %58, label %8

8:                                                ; preds = %1
  %9 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %10 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %9, i32 0, i32 2
  %11 = load i32**, i32*** %10, align 8
  %12 = getelementptr inbounds i32*, i32** %11, i64 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %8
  %16 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %17 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %20 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %19, i32 0, i32 3
  %21 = load i32**, i32*** %20, align 8
  %22 = getelementptr inbounds i32*, i32** %21, i64 0
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %25 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %24, i32 0, i32 2
  %26 = load i32**, i32*** %25, align 8
  %27 = getelementptr inbounds i32*, i32** %26, i64 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @bus_teardown_intr(i32 %18, i32* %23, i32* %28)
  br label %30

30:                                               ; preds = %15, %8
  %31 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %32 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %31, i32 0, i32 3
  %33 = load i32**, i32*** %32, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %53

37:                                               ; preds = %30
  %38 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %39 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SYS_RES_IRQ, align 4
  %42 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %43 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %42, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %48 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %47, i32 0, i32 3
  %49 = load i32**, i32*** %48, align 8
  %50 = getelementptr inbounds i32*, i32** %49, i64 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @bus_release_resource(i32 %40, i32 %41, i32 %46, i32* %51)
  br label %53

53:                                               ; preds = %37, %30
  %54 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %55 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %54, i32 0, i32 2
  %56 = load i32**, i32*** %55, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 0
  store i32* null, i32** %57, align 8
  br label %137

58:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %129, %58
  %60 = load i32, i32* %3, align 4
  %61 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %62 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %132

65:                                               ; preds = %59
  %66 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %67 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %66, i32 0, i32 2
  %68 = load i32**, i32*** %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %93

74:                                               ; preds = %65
  %75 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %76 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %79 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %78, i32 0, i32 3
  %80 = load i32**, i32*** %79, align 8
  %81 = load i32, i32* %3, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %86 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %85, i32 0, i32 2
  %87 = load i32**, i32*** %86, align 8
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32*, i32** %87, i64 %89
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @bus_teardown_intr(i32 %77, i32* %84, i32* %91)
  br label %93

93:                                               ; preds = %74, %65
  %94 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %95 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %94, i32 0, i32 3
  %96 = load i32**, i32*** %95, align 8
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32*, i32** %96, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %122

102:                                              ; preds = %93
  %103 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %104 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @SYS_RES_IRQ, align 4
  %107 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %108 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %107, i32 0, i32 4
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %3, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %115 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %114, i32 0, i32 3
  %116 = load i32**, i32*** %115, align 8
  %117 = load i32, i32* %3, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32*, i32** %116, i64 %118
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @bus_release_resource(i32 %105, i32 %106, i32 %113, i32* %120)
  br label %122

122:                                              ; preds = %102, %93
  %123 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %124 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %123, i32 0, i32 2
  %125 = load i32**, i32*** %124, align 8
  %126 = load i32, i32* %3, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32*, i32** %125, i64 %127
  store i32* null, i32** %128, align 8
  br label %129

129:                                              ; preds = %122
  %130 = load i32, i32* %3, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %3, align 4
  br label %59

132:                                              ; preds = %59
  %133 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %134 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @pci_release_msi(i32 %135)
  br label %137

137:                                              ; preds = %132, %53
  ret void
}

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @pci_release_msi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
