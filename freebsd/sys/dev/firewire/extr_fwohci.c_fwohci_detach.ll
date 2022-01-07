; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwohci_softc = type { %struct.TYPE_2__, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_2__ = type { i32, i32*, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fwohci_detach(%struct.fwohci_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.fwohci_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fwohci_softc* %0, %struct.fwohci_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %7 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %6, i32 0, i32 12
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %12 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %11, i32 0, i32 0
  %13 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %14 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %13, i32 0, i32 11
  %15 = call i32 @fwdma_free(%struct.TYPE_2__* %12, i32* %14)
  br label %16

16:                                               ; preds = %10, %2
  %17 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %18 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %24 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %23, i32 0, i32 0
  %25 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %26 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %25, i32 0, i32 10
  %27 = call i32 @fwdma_free(%struct.TYPE_2__* %24, i32* %26)
  br label %28

28:                                               ; preds = %22, %16
  %29 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %30 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %29, i32 0, i32 9
  %31 = call i32 @fwohci_db_free(i32* %30)
  %32 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %33 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %32, i32 0, i32 8
  %34 = call i32 @fwohci_db_free(i32* %33)
  %35 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %36 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %35, i32 0, i32 7
  %37 = call i32 @fwohci_db_free(i32* %36)
  %38 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %39 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %38, i32 0, i32 6
  %40 = call i32 @fwohci_db_free(i32* %39)
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %63, %28
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %44 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %42, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %41
  %49 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %50 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %49, i32 0, i32 5
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = call i32 @fwohci_db_free(i32* %54)
  %56 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %57 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %56, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = call i32 @fwohci_db_free(i32* %61)
  br label %63

63:                                               ; preds = %48
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %41

66:                                               ; preds = %41
  %67 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %68 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %110

72:                                               ; preds = %66
  %73 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %74 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %78 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %77, i32 0, i32 3
  %79 = call i32 @taskqueue_drain(i32* %76, i32* %78)
  %80 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %81 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %85 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %84, i32 0, i32 2
  %86 = call i32 @taskqueue_drain(i32* %83, i32* %85)
  %87 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %88 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %92 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %91, i32 0, i32 1
  %93 = call i32 @taskqueue_drain(i32* %90, i32* %92)
  %94 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %95 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %99 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  %101 = call i32 @taskqueue_drain(i32* %97, i32* %100)
  %102 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %103 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @taskqueue_free(i32* %105)
  %107 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %108 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  store i32* null, i32** %109, align 8
  br label %110

110:                                              ; preds = %72, %66
  ret i32 0
}

declare dso_local i32 @fwdma_free(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @fwohci_db_free(i32*) #1

declare dso_local i32 @taskqueue_drain(i32*, i32*) #1

declare dso_local i32 @taskqueue_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
