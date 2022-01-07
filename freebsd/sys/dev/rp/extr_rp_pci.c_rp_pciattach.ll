; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rp/extr_rp_pci.c_rp_pciattach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rp/extr_rp_pci.c_rp_pciattach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32**, i8**, i32*, i32, i32, i32, i32 }

@rp_pci_aiop2rid = common dso_local global i32 0, align 4
@rp_pci_aiop2off = common dso_local global i32 0, align 4
@rp_pci_ctlmask = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"rp_pciattach: Out of memory.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"ioaddr mapping failed for RocketPort(PCI).\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@MAX_AIOPS_PER_BOARD = common dso_local global i32 0, align 4
@FREQ_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rp_pciattach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rp_pciattach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.TYPE_9__* @device_get_softc(i32 %10)
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %7, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %13 = call i32 @bzero(%struct.TYPE_9__* %12, i32 48)
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 7
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @device_get_unit(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @rp_pci_aiop2rid, align 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @rp_pci_aiop2off, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @rp_pci_ctlmask, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = mul i64 8, %33
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* @M_DEVBUF, align 4
  %37 = load i32, i32* @M_NOWAIT, align 4
  %38 = load i32, i32* @M_ZERO, align 4
  %39 = or i32 %37, %38
  %40 = call i8* @malloc(i32 %35, i32 %36, i32 %39)
  %41 = bitcast i8* %40 to i8**
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  store i8** %41, i8*** %43, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = mul i64 8, %47
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* @M_DEVBUF, align 4
  %51 = load i32, i32* @M_NOWAIT, align 4
  %52 = load i32, i32* @M_ZERO, align 4
  %53 = or i32 %51, %52
  %54 = call i8* @malloc(i32 %49, i32 %50, i32 %53)
  %55 = bitcast i8* %54 to i32**
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  store i32** %55, i32*** %57, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 2
  %60 = load i8**, i8*** %59, align 8
  %61 = icmp eq i8** %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %1
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i32**, i32*** %64, align 8
  %66 = icmp eq i32** %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %62, %1
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @device_printf(i32 %68, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* @ENOMEM, align 4
  store i32 %70, i32* %9, align 4
  br label %145

71:                                               ; preds = %62
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 3
  store i32* null, i32** %73, align 8
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @pci_get_device(i32 %74)
  switch i32 %75, label %82 [
    i32 130, label %76
    i32 129, label %76
    i32 128, label %76
  ]

76:                                               ; preds = %71, %71, %71
  %77 = call i8* @PCIR_BAR(i32 2)
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 2
  %80 = load i8**, i8*** %79, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 0
  store i8* %77, i8** %81, align 8
  br label %88

82:                                               ; preds = %71
  %83 = call i8* @PCIR_BAR(i32 0)
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 2
  %86 = load i8**, i8*** %85, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 0
  store i8* %83, i8** %87, align 8
  br label %88

88:                                               ; preds = %82, %76
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* @SYS_RES_IOPORT, align 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  %93 = load i8**, i8*** %92, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 0
  %95 = load i32, i32* @RF_ACTIVE, align 4
  %96 = call i32* @bus_alloc_resource_any(i32 %89, i32 %90, i8** %94, i32 %95)
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = load i32**, i32*** %98, align 8
  %100 = getelementptr inbounds i32*, i32** %99, i64 0
  store i32* %96, i32** %100, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = load i32**, i32*** %102, align 8
  %104 = getelementptr inbounds i32*, i32** %103, i64 0
  %105 = load i32*, i32** %104, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %88
  %108 = load i32, i32* %3, align 4
  %109 = call i32 @device_printf(i32 %108, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %110 = load i32, i32* @ENXIO, align 4
  store i32 %110, i32* %9, align 4
  br label %145

111:                                              ; preds = %88
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %113 = load i32, i32* @MAX_AIOPS_PER_BOARD, align 4
  %114 = load i32, i32* @FREQ_DIS, align 4
  %115 = load i32, i32* %3, align 4
  %116 = call i32 @pci_get_device(i32 %115)
  %117 = call i32 @sPCIInitController(%struct.TYPE_9__* %112, i32 %113, i32 0, i32 %114, i32 0, i32 %116)
  store i32 %117, i32* %5, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %118

118:                                              ; preds = %133, %111
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* %5, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %136

122:                                              ; preds = %118
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @sResetAiopByNum(%struct.TYPE_9__* %123, i32 %124)
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %127 = load i32, i32* %6, align 4
  %128 = call i64 @sGetAiopNumChan(%struct.TYPE_9__* %126, i32 %127)
  %129 = load i32, i32* %4, align 4
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %130, %128
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %122
  %134 = load i32, i32* %6, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %6, align 4
  br label %118

136:                                              ; preds = %118
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* %4, align 4
  %140 = call i32 @rp_attachcommon(%struct.TYPE_9__* %137, i32 %138, i32 %139)
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* %9, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %136
  br label %145

144:                                              ; preds = %136
  store i32 0, i32* %2, align 4
  br label %149

145:                                              ; preds = %143, %107, %67
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %147 = call i32 @rp_pcireleaseresource(%struct.TYPE_9__* %146)
  %148 = load i32, i32* %9, align 4
  store i32 %148, i32* %2, align 4
  br label %149

149:                                              ; preds = %145, %144
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local %struct.TYPE_9__* @device_get_softc(i32) #1

declare dso_local i32 @bzero(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @pci_get_device(i32) #1

declare dso_local i8* @PCIR_BAR(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i8**, i32) #1

declare dso_local i32 @sPCIInitController(%struct.TYPE_9__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sResetAiopByNum(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @sGetAiopNumChan(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @rp_attachcommon(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @rp_pcireleaseresource(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
