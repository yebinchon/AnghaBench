; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/puc/extr_puc.c_puc_get_bar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/puc/extr_puc.c_puc_get_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.puc_bar = type { i32, i64, i32* }
%struct.puc_softc = type { i32, %struct.rman, %struct.rman, %struct.puc_bar* }
%struct.rman = type { i32 }

@PUC_PCI_BARS = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i64 0, align 8
@RF_ACTIVE = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.puc_bar* @puc_get_bar(%struct.puc_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.puc_bar*, align 8
  %4 = alloca %struct.puc_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.puc_bar*, align 8
  %7 = alloca %struct.rman*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.puc_softc* %0, %struct.puc_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %29, %2
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* @PUC_PCI_BARS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load %struct.puc_softc*, %struct.puc_softc** %4, align 8
  %18 = getelementptr inbounds %struct.puc_softc, %struct.puc_softc* %17, i32 0, i32 3
  %19 = load %struct.puc_bar*, %struct.puc_bar** %18, align 8
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %19, i64 %21
  %23 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %24, %25
  br label %27

27:                                               ; preds = %16, %12
  %28 = phi i1 [ false, %12 ], [ %26, %16 ]
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = load i32, i32* %11, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %11, align 4
  br label %12

32:                                               ; preds = %27
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @PUC_PCI_BARS, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load %struct.puc_softc*, %struct.puc_softc** %4, align 8
  %38 = getelementptr inbounds %struct.puc_softc, %struct.puc_softc* %37, i32 0, i32 3
  %39 = load %struct.puc_bar*, %struct.puc_bar** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %39, i64 %41
  store %struct.puc_bar* %42, %struct.puc_bar** %3, align 8
  br label %153

43:                                               ; preds = %32
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store %struct.puc_bar* null, %struct.puc_bar** %3, align 8
  br label %153

47:                                               ; preds = %43
  %48 = load %struct.puc_softc*, %struct.puc_softc** %4, align 8
  %49 = call %struct.puc_bar* @puc_get_bar(%struct.puc_softc* %48, i32 -1)
  store %struct.puc_bar* %49, %struct.puc_bar** %6, align 8
  %50 = load %struct.puc_bar*, %struct.puc_bar** %6, align 8
  %51 = icmp eq %struct.puc_bar* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store %struct.puc_bar* null, %struct.puc_bar** %3, align 8
  br label %153

53:                                               ; preds = %47
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.puc_bar*, %struct.puc_bar** %6, align 8
  %56 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i64, i64* @SYS_RES_IOPORT, align 8
  %58 = load %struct.puc_bar*, %struct.puc_bar** %6, align 8
  %59 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = load %struct.puc_softc*, %struct.puc_softc** %4, align 8
  %61 = getelementptr inbounds %struct.puc_softc, %struct.puc_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.puc_bar*, %struct.puc_bar** %6, align 8
  %64 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.puc_bar*, %struct.puc_bar** %6, align 8
  %67 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %66, i32 0, i32 0
  %68 = load i32, i32* @RF_ACTIVE, align 4
  %69 = call i8* @bus_alloc_resource_any(i32 %62, i64 %65, i32* %67, i32 %68)
  %70 = bitcast i8* %69 to i32*
  %71 = load %struct.puc_bar*, %struct.puc_bar** %6, align 8
  %72 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %71, i32 0, i32 2
  store i32* %70, i32** %72, align 8
  %73 = load %struct.puc_bar*, %struct.puc_bar** %6, align 8
  %74 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %105

77:                                               ; preds = %53
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.puc_bar*, %struct.puc_bar** %6, align 8
  %80 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load i64, i64* @SYS_RES_MEMORY, align 8
  %82 = load %struct.puc_bar*, %struct.puc_bar** %6, align 8
  %83 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  %84 = load %struct.puc_softc*, %struct.puc_softc** %4, align 8
  %85 = getelementptr inbounds %struct.puc_softc, %struct.puc_softc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.puc_bar*, %struct.puc_bar** %6, align 8
  %88 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.puc_bar*, %struct.puc_bar** %6, align 8
  %91 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %90, i32 0, i32 0
  %92 = load i32, i32* @RF_ACTIVE, align 4
  %93 = call i8* @bus_alloc_resource_any(i32 %86, i64 %89, i32* %91, i32 %92)
  %94 = bitcast i8* %93 to i32*
  %95 = load %struct.puc_bar*, %struct.puc_bar** %6, align 8
  %96 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %95, i32 0, i32 2
  store i32* %94, i32** %96, align 8
  %97 = load %struct.puc_bar*, %struct.puc_bar** %6, align 8
  %98 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %77
  %102 = load %struct.puc_bar*, %struct.puc_bar** %6, align 8
  %103 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %102, i32 0, i32 0
  store i32 -1, i32* %103, align 8
  store %struct.puc_bar* null, %struct.puc_bar** %3, align 8
  br label %153

104:                                              ; preds = %77
  br label %105

105:                                              ; preds = %104, %53
  %106 = load %struct.puc_bar*, %struct.puc_bar** %6, align 8
  %107 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @SYS_RES_IOPORT, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load %struct.puc_softc*, %struct.puc_softc** %4, align 8
  %113 = getelementptr inbounds %struct.puc_softc, %struct.puc_softc* %112, i32 0, i32 2
  br label %117

114:                                              ; preds = %105
  %115 = load %struct.puc_softc*, %struct.puc_softc** %4, align 8
  %116 = getelementptr inbounds %struct.puc_softc, %struct.puc_softc* %115, i32 0, i32 1
  br label %117

117:                                              ; preds = %114, %111
  %118 = phi %struct.rman* [ %113, %111 ], [ %116, %114 ]
  store %struct.rman* %118, %struct.rman** %7, align 8
  %119 = load %struct.puc_bar*, %struct.puc_bar** %6, align 8
  %120 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @rman_get_start(i32* %121)
  store i32 %122, i32* %9, align 4
  %123 = load %struct.puc_bar*, %struct.puc_bar** %6, align 8
  %124 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @rman_get_end(i32* %125)
  store i32 %126, i32* %8, align 4
  %127 = load %struct.rman*, %struct.rman** %7, align 8
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @rman_manage_region(%struct.rman* %127, i32 %128, i32 %129)
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %151

133:                                              ; preds = %117
  %134 = load %struct.puc_softc*, %struct.puc_softc** %4, align 8
  %135 = getelementptr inbounds %struct.puc_softc, %struct.puc_softc* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.puc_bar*, %struct.puc_bar** %6, align 8
  %138 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.puc_bar*, %struct.puc_bar** %6, align 8
  %141 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.puc_bar*, %struct.puc_bar** %6, align 8
  %144 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = call i32 @bus_release_resource(i32 %136, i64 %139, i32 %142, i32* %145)
  %147 = load %struct.puc_bar*, %struct.puc_bar** %6, align 8
  %148 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %147, i32 0, i32 2
  store i32* null, i32** %148, align 8
  %149 = load %struct.puc_bar*, %struct.puc_bar** %6, align 8
  %150 = getelementptr inbounds %struct.puc_bar, %struct.puc_bar* %149, i32 0, i32 0
  store i32 -1, i32* %150, align 8
  store %struct.puc_bar* null, %struct.puc_bar** %6, align 8
  br label %151

151:                                              ; preds = %133, %117
  %152 = load %struct.puc_bar*, %struct.puc_bar** %6, align 8
  store %struct.puc_bar* %152, %struct.puc_bar** %3, align 8
  br label %153

153:                                              ; preds = %151, %101, %52, %46, %36
  %154 = load %struct.puc_bar*, %struct.puc_bar** %3, align 8
  ret %struct.puc_bar* %154
}

declare dso_local i8* @bus_alloc_resource_any(i32, i64, i32*, i32) #1

declare dso_local i32 @rman_get_start(i32*) #1

declare dso_local i32 @rman_get_end(i32*) #1

declare dso_local i32 @rman_manage_region(%struct.rman*, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
