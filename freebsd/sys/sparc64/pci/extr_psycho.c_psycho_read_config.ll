; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_psycho.c_psycho_read_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_psycho.c_psycho_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psycho_softc = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32*, i32 }

@PCS_DEVICE = common dso_local global i64 0, align 8
@PCS_FUNC = common dso_local global i64 0, align 8
@PCIR_STATUS = common dso_local global i64 0, align 8
@OFW_PCI_CS_CONFIG = common dso_local global i64 0, align 8
@PCI_REGMAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, i64, i64, i32)* @psycho_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psycho_read_config(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.psycho_softc*, align 8
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.psycho_softc* @device_get_softc(i32 %15)
  store %struct.psycho_softc* %16, %struct.psycho_softc** %14, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load %struct.psycho_softc*, %struct.psycho_softc** %14, align 8
  %19 = getelementptr inbounds %struct.psycho_softc, %struct.psycho_softc* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %17, %21
  br i1 %22, label %23, label %113

23:                                               ; preds = %6
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @PCS_DEVICE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %113

27:                                               ; preds = %23
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* @PCS_FUNC, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %113

31:                                               ; preds = %27
  %32 = load i64, i64* %12, align 8
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = srem i64 %32, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 -1, i32* %7, align 4
  br label %127

38:                                               ; preds = %31
  %39 = load i64, i64* %12, align 8
  %40 = icmp uge i64 %39, 8
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %127

42:                                               ; preds = %38
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* @PCIR_STATUS, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load i64, i64* %12, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %47, %49
  %51 = load i64, i64* @PCIR_STATUS, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %62, label %53

53:                                               ; preds = %46, %42
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* @PCIR_STATUS, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* @PCIR_STATUS, align 8
  %60 = add nsw i64 %59, 1
  %61 = icmp eq i64 %58, %60
  br i1 %61, label %62, label %89

62:                                               ; preds = %57, %53, %46
  %63 = load %struct.psycho_softc*, %struct.psycho_softc** %14, align 8
  %64 = getelementptr inbounds %struct.psycho_softc, %struct.psycho_softc* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* @PCIR_STATUS, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load %struct.psycho_softc*, %struct.psycho_softc** %14, align 8
  %69 = getelementptr inbounds %struct.psycho_softc, %struct.psycho_softc* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.psycho_softc*, %struct.psycho_softc** %14, align 8
  %73 = getelementptr inbounds %struct.psycho_softc, %struct.psycho_softc* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* @OFW_PCI_CS_CONFIG, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.psycho_softc*, %struct.psycho_softc** %14, align 8
  %80 = getelementptr inbounds %struct.psycho_softc, %struct.psycho_softc* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @PCS_DEVICE, align 8
  %84 = load i64, i64* @PCS_FUNC, align 8
  %85 = load i64, i64* @PCIR_STATUS, align 8
  %86 = call i32 @PSYCHO_CONF_OFF(i64 %82, i64 %83, i64 %84, i64 %85)
  %87 = call i32 @bus_space_read_2(i32 %71, i32 %78, i32 %86)
  %88 = call i32 @le16enc(i32* %67, i32 %87)
  br label %89

89:                                               ; preds = %62, %57
  %90 = load i32, i32* %13, align 4
  switch i32 %90, label %112 [
    i32 1, label %91
    i32 2, label %98
    i32 4, label %105
  ]

91:                                               ; preds = %89
  %92 = load %struct.psycho_softc*, %struct.psycho_softc** %14, align 8
  %93 = getelementptr inbounds %struct.psycho_softc, %struct.psycho_softc* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* %12, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %7, align 4
  br label %127

98:                                               ; preds = %89
  %99 = load %struct.psycho_softc*, %struct.psycho_softc** %14, align 8
  %100 = getelementptr inbounds %struct.psycho_softc, %struct.psycho_softc* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* %12, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = call i32 @le16dec(i32* %103)
  store i32 %104, i32* %7, align 4
  br label %127

105:                                              ; preds = %89
  %106 = load %struct.psycho_softc*, %struct.psycho_softc** %14, align 8
  %107 = getelementptr inbounds %struct.psycho_softc, %struct.psycho_softc* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* %12, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = call i32 @le32dec(i32* %110)
  store i32 %111, i32* %7, align 4
  br label %127

112:                                              ; preds = %89
  br label %113

113:                                              ; preds = %112, %27, %23, %6
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* @PCI_REGMAX, align 4
  %116 = load i64, i64* %9, align 8
  %117 = load i64, i64* %10, align 8
  %118 = load i64, i64* %11, align 8
  %119 = load i64, i64* %12, align 8
  %120 = call i32 @PSYCHO_CONF_OFF(i64 %116, i64 %117, i64 %118, i64 %119)
  %121 = load i64, i64* %9, align 8
  %122 = load i64, i64* %10, align 8
  %123 = load i64, i64* %11, align 8
  %124 = load i64, i64* %12, align 8
  %125 = load i32, i32* %13, align 4
  %126 = call i32 @ofw_pci_read_config_common(i32 %114, i32 %115, i32 %120, i64 %121, i64 %122, i64 %123, i64 %124, i32 %125)
  store i32 %126, i32* %7, align 4
  br label %127

127:                                              ; preds = %113, %105, %98, %91, %41, %37
  %128 = load i32, i32* %7, align 4
  ret i32 %128
}

declare dso_local %struct.psycho_softc* @device_get_softc(i32) #1

declare dso_local i32 @le16enc(i32*, i32) #1

declare dso_local i32 @bus_space_read_2(i32, i32, i32) #1

declare dso_local i32 @PSYCHO_CONF_OFF(i64, i64, i64, i64) #1

declare dso_local i32 @le16dec(i32*) #1

declare dso_local i32 @le32dec(i32*) #1

declare dso_local i32 @ofw_pci_read_config_common(i32, i32, i32, i64, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
