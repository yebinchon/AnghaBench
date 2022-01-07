; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_device_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_device_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i32 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__*, i32 (i64*, i64*, i64*, i64*)* }

@IFLIB_MAGIC = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iflib_device_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.TYPE_5__* @DEVICE_REGISTER(i32 %11)
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %5, align 8
  %13 = icmp eq %struct.TYPE_5__* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IFLIB_MAGIC, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14, %1
  %21 = load i32, i32* @ENOTSUP, align 4
  store i32 %21, i32* %2, align 4
  br label %111

22:                                               ; preds = %14
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @pci_get_vendor(i32 %23)
  store i64 %24, i64* %10, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i64 @pci_get_device(i32 %25)
  store i64 %26, i64* %6, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i64 @pci_get_subvendor(i32 %27)
  store i64 %28, i64* %9, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i64 @pci_get_subdevice(i32 %29)
  store i64 %30, i64* %8, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i64 @pci_get_revid(i32 %31)
  store i64 %32, i64* %7, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load i32 (i64*, i64*, i64*, i64*)*, i32 (i64*, i64*, i64*, i64*)** %34, align 8
  %36 = icmp ne i32 (i64*, i64*, i64*, i64*)* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %22
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = load i32 (i64*, i64*, i64*, i64*)*, i32 (i64*, i64*, i64*, i64*)** %39, align 8
  %41 = call i32 %40(i64* %6, i64* %9, i64* %8, i64* %7)
  br label %42

42:                                               ; preds = %37, %22
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %4, align 8
  br label %46

46:                                               ; preds = %106, %57, %42
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %109

51:                                               ; preds = %46
  %52 = load i64, i64* %10, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 1
  store %struct.TYPE_4__* %59, %struct.TYPE_4__** %4, align 8
  br label %46

60:                                               ; preds = %51
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %61, %64
  br i1 %65, label %66, label %106

66:                                               ; preds = %60
  %67 = load i64, i64* %9, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %67, %70
  br i1 %71, label %77, label %72

72:                                               ; preds = %66
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %106

77:                                               ; preds = %72, %66
  %78 = load i64, i64* %8, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %78, %81
  br i1 %82, label %88, label %83

83:                                               ; preds = %77
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %106

88:                                               ; preds = %83, %77
  %89 = load i64, i64* %7, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %89, %92
  br i1 %93, label %99, label %94

94:                                               ; preds = %88
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %94, %88
  %100 = load i32, i32* %3, align 4
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @device_set_desc_copy(i32 %100, i32 %103)
  %105 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %105, i32* %2, align 4
  br label %111

106:                                              ; preds = %94, %83, %72, %60
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 1
  store %struct.TYPE_4__* %108, %struct.TYPE_4__** %4, align 8
  br label %46

109:                                              ; preds = %46
  %110 = load i32, i32* @ENXIO, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %109, %99, %20
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.TYPE_5__* @DEVICE_REGISTER(i32) #1

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i64 @pci_get_device(i32) #1

declare dso_local i64 @pci_get_subvendor(i32) #1

declare dso_local i64 @pci_get_subdevice(i32) #1

declare dso_local i64 @pci_get_revid(i32) #1

declare dso_local i32 @device_set_desc_copy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
