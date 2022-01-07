; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_type = type { i64, i64 }
%struct.bge_revision = type { i8* }
%struct.bge_softc = type { i32 }
%struct.bge_vendor = type { i8* }

@bge_devs = common dso_local global %struct.bge_type* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"NetXtreme/NetLink Ethernet Controller\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"%s, %sASIC rev. %#08x\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"unknown \00", align 1
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bge_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bge_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [96 x i8], align 16
  %5 = alloca [64 x i8], align 16
  %6 = alloca %struct.bge_revision*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.bge_softc*, align 8
  %9 = alloca %struct.bge_type*, align 8
  %10 = alloca %struct.bge_vendor*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %14 = load %struct.bge_type*, %struct.bge_type** @bge_devs, align 8
  store %struct.bge_type* %14, %struct.bge_type** %9, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call %struct.bge_softc* @device_get_softc(i32 %15)
  store %struct.bge_softc* %16, %struct.bge_softc** %8, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.bge_softc*, %struct.bge_softc** %8, align 8
  %19 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i64 @pci_get_vendor(i32 %20)
  store i64 %21, i64* %13, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @pci_get_device(i32 %22)
  store i64 %23, i64* %12, align 8
  br label %24

24:                                               ; preds = %93, %1
  %25 = load %struct.bge_type*, %struct.bge_type** %9, align 8
  %26 = getelementptr inbounds %struct.bge_type, %struct.bge_type* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %96

29:                                               ; preds = %24
  %30 = load i64, i64* %13, align 8
  %31 = load %struct.bge_type*, %struct.bge_type** %9, align 8
  %32 = getelementptr inbounds %struct.bge_type, %struct.bge_type* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %93

35:                                               ; preds = %29
  %36 = load i64, i64* %12, align 8
  %37 = load %struct.bge_type*, %struct.bge_type** %9, align 8
  %38 = getelementptr inbounds %struct.bge_type, %struct.bge_type* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %93

41:                                               ; preds = %35
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @bge_chipid(i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call %struct.bge_revision* @bge_lookup_rev(i32 %44)
  store %struct.bge_revision* %45, %struct.bge_revision** %6, align 8
  %46 = load %struct.bge_softc*, %struct.bge_softc** %8, align 8
  %47 = call i64 @bge_has_eaddr(%struct.bge_softc* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %41
  %50 = load i32, i32* %3, align 4
  %51 = call i64 @pci_get_vpd_ident(i32 %50, i8** %7)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %54, i32 64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %55)
  br label %80

57:                                               ; preds = %49, %41
  %58 = load i64, i64* %13, align 8
  %59 = call %struct.bge_vendor* @bge_lookup_vendor(i64 %58)
  store %struct.bge_vendor* %59, %struct.bge_vendor** %10, align 8
  %60 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %61 = load %struct.bge_vendor*, %struct.bge_vendor** %10, align 8
  %62 = icmp ne %struct.bge_vendor* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load %struct.bge_vendor*, %struct.bge_vendor** %10, align 8
  %65 = getelementptr inbounds %struct.bge_vendor, %struct.bge_vendor* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  br label %68

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %63
  %69 = phi i8* [ %66, %63 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %67 ]
  %70 = load %struct.bge_revision*, %struct.bge_revision** %6, align 8
  %71 = icmp ne %struct.bge_revision* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load %struct.bge_revision*, %struct.bge_revision** %6, align 8
  %74 = getelementptr inbounds %struct.bge_revision, %struct.bge_revision* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  br label %77

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %76, %72
  %78 = phi i8* [ %75, %72 ], [ getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), %76 ]
  %79 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %60, i32 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %69, i8* %78)
  br label %80

80:                                               ; preds = %77, %53
  %81 = getelementptr inbounds [96 x i8], [96 x i8]* %4, i64 0, i64 0
  %82 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %83 = load %struct.bge_revision*, %struct.bge_revision** %6, align 8
  %84 = icmp ne %struct.bge_revision* %83, null
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  %87 = load i32, i32* %11, align 4
  %88 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %81, i32 96, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %82, i8* %86, i32 %87)
  %89 = load i32, i32* %3, align 4
  %90 = getelementptr inbounds [96 x i8], [96 x i8]* %4, i64 0, i64 0
  %91 = call i32 @device_set_desc_copy(i32 %89, i8* %90)
  %92 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %92, i32* %2, align 4
  br label %98

93:                                               ; preds = %35, %29
  %94 = load %struct.bge_type*, %struct.bge_type** %9, align 8
  %95 = getelementptr inbounds %struct.bge_type, %struct.bge_type* %94, i32 1
  store %struct.bge_type* %95, %struct.bge_type** %9, align 8
  br label %24

96:                                               ; preds = %24
  %97 = load i32, i32* @ENXIO, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %96, %80
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.bge_softc* @device_get_softc(i32) #1

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i64 @pci_get_device(i32) #1

declare dso_local i32 @bge_chipid(i32) #1

declare dso_local %struct.bge_revision* @bge_lookup_rev(i32) #1

declare dso_local i64 @bge_has_eaddr(%struct.bge_softc*) #1

declare dso_local i64 @pci_get_vpd_ident(i32, i8**) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local %struct.bge_vendor* @bge_lookup_vendor(i64) #1

declare dso_local i32 @device_set_desc_copy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
