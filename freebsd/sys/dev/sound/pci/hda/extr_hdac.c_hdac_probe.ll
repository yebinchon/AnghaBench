; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdac.c_hdac_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdac.c_hdac_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8* }

@ENXIO = common dso_local global i32 0, align 4
@hdac_devices = common dso_local global %struct.TYPE_3__* null, align 8
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@PCIC_MULTIMEDIA = common dso_local global i64 0, align 8
@PCIS_MULTIMEDIA_HDA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"%s (0x%04x)\00", align 1
@BUS_PROBE_GENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Generic (0x%08x)\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c" HDA Controller\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hdac_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdac_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [64 x i8], align 16
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @pci_get_device(i32 %9)
  %11 = shl i32 %10, 16
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i64 @pci_get_vendor(i32 %12)
  %14 = trunc i64 %13 to i32
  %15 = and i32 %14, 65535
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i64 @pci_get_class(i32 %18)
  store i64 %19, i64* %6, align 8
  %20 = load i32, i32* %2, align 4
  %21 = call i64 @pci_get_subclass(i32 %20)
  store i64 %21, i64* %7, align 8
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %23 = call i32 @bzero(i8* %22, i32 64)
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %80, %1
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hdac_devices, align 8
  %28 = call i32 @nitems(%struct.TYPE_3__* %27)
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %83

30:                                               ; preds = %25
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hdac_devices, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %30
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hdac_devices, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @strlcpy(i8* %40, i8* %46, i32 64)
  %48 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %48, i32* %4, align 4
  br label %83

49:                                               ; preds = %30
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hdac_devices, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i64 @HDA_DEV_MATCH(i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %79

59:                                               ; preds = %49
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* @PCIC_MULTIMEDIA, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %59
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* @PCIS_MULTIMEDIA_HDA, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %63
  %68 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hdac_devices, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* %2, align 4
  %76 = call i32 @pci_get_device(i32 %75)
  %77 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %68, i32 64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %74, i32 %76)
  %78 = load i32, i32* @BUS_PROBE_GENERIC, align 4
  store i32 %78, i32* %4, align 4
  br label %83

79:                                               ; preds = %63, %59, %49
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %25

83:                                               ; preds = %67, %39, %25
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @ENXIO, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %100

87:                                               ; preds = %83
  %88 = load i64, i64* %6, align 8
  %89 = load i64, i64* @PCIC_MULTIMEDIA, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %87
  %92 = load i64, i64* %7, align 8
  %93 = load i64, i64* @PCIS_MULTIMEDIA_HDA, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %97 = load i32, i32* %5, align 4
  %98 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %96, i32 64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* @BUS_PROBE_GENERIC, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %95, %91, %87, %83
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @ENXIO, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %100
  %105 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %106 = call i32 @strlcat(i8* %105, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 64)
  %107 = load i32, i32* %2, align 4
  %108 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %109 = call i32 @device_set_desc_copy(i32 %107, i8* %108)
  br label %110

110:                                              ; preds = %104, %100
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @pci_get_device(i32) #1

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i64 @pci_get_class(i32) #1

declare dso_local i64 @pci_get_subclass(i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @nitems(%struct.TYPE_3__*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i64 @HDA_DEV_MATCH(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i32 @device_set_desc_copy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
