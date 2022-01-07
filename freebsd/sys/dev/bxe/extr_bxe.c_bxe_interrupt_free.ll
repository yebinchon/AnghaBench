; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_interrupt_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_interrupt_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32 }

@DBG_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Releasing legacy INTx vector\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Releasing MSI vector %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Releasing MSI-X vector %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_interrupt_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_interrupt_free(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %4 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %5 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %161 [
    i32 130, label %7
    i32 129, label %37
    i32 128, label %99
  ]

7:                                                ; preds = %1
  %8 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %9 = load i32, i32* @DBG_LOAD, align 4
  %10 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %8, i32 %9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %12 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %36

18:                                               ; preds = %7
  %19 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %20 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SYS_RES_IRQ, align 4
  %23 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %24 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %23, i32 0, i32 3
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %30 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %29, i32 0, i32 3
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @bus_release_resource(i32 %21, i32 %22, i32 %28, i32* %34)
  br label %36

36:                                               ; preds = %18, %7
  br label %162

37:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %91, %37
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %41 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %94

44:                                               ; preds = %38
  %45 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %46 = load i32, i32* @DBG_LOAD, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %45, i32 %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %50 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %90

58:                                               ; preds = %44
  %59 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %60 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %59, i32 0, i32 3
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %90

68:                                               ; preds = %58
  %69 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %70 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @SYS_RES_IRQ, align 4
  %73 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %74 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %73, i32 0, i32 3
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %82 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %81, i32 0, i32 3
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @bus_release_resource(i32 %71, i32 %72, i32 %80, i32* %88)
  br label %90

90:                                               ; preds = %68, %58, %44
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %3, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %3, align 4
  br label %38

94:                                               ; preds = %38
  %95 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %96 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @pci_release_msi(i32 %97)
  br label %162

99:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %153, %99
  %101 = load i32, i32* %3, align 4
  %102 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %103 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %156

106:                                              ; preds = %100
  %107 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %108 = load i32, i32* @DBG_LOAD, align 4
  %109 = load i32, i32* %3, align 4
  %110 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %107, i32 %108, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %109)
  %111 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %112 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %111, i32 0, i32 3
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = load i32, i32* %3, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %152

120:                                              ; preds = %106
  %121 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %122 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %121, i32 0, i32 3
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = load i32, i32* %3, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %152

130:                                              ; preds = %120
  %131 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %132 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @SYS_RES_IRQ, align 4
  %135 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %136 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %135, i32 0, i32 3
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = load i32, i32* %3, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %144 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %143, i32 0, i32 3
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = load i32, i32* %3, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = call i32 @bus_release_resource(i32 %133, i32 %134, i32 %142, i32* %150)
  br label %152

152:                                              ; preds = %130, %120, %106
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %3, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %3, align 4
  br label %100

156:                                              ; preds = %100
  %157 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %158 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @pci_release_msi(i32 %159)
  br label %162

161:                                              ; preds = %1
  br label %162

162:                                              ; preds = %161, %156, %94, %36
  ret void
}

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, ...) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @pci_release_msi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
