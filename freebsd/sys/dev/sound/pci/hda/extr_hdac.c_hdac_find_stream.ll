; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdac.c_hdac_find_stream.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdac.c_hdac_find_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_softc = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdac_softc*, i32, i32)* @hdac_find_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdac_find_stream(%struct.hdac_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hdac_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hdac_softc* %0, %struct.hdac_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 -1, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %32, %11
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %15 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %12
  %19 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %20 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %19, i32 0, i32 3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %8, align 4
  br label %35

31:                                               ; preds = %18
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %12

35:                                               ; preds = %29, %12
  br label %69

36:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %65, %36
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %40 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %68

43:                                               ; preds = %37
  %44 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %45 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %44, i32 0, i32 3
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %49 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %47, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %43
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %61 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %59, %62
  store i32 %63, i32* %8, align 4
  br label %68

64:                                               ; preds = %43
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %37

68:                                               ; preds = %58, %37
  br label %69

69:                                               ; preds = %68, %35
  %70 = load i32, i32* %8, align 4
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %113

72:                                               ; preds = %69
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %109, %72
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %76 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %112

79:                                               ; preds = %73
  %80 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %81 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %80, i32 0, i32 3
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %85 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %83, %86
  %88 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %89 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %87, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %79
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %101 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %99, %102
  %104 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %105 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %103, %106
  store i32 %107, i32* %8, align 4
  br label %112

108:                                              ; preds = %79
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %7, align 4
  br label %73

112:                                              ; preds = %98, %73
  br label %113

113:                                              ; preds = %112, %69
  %114 = load i32, i32* %8, align 4
  ret i32 %114
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
