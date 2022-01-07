; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/terasic/mtl/extr_terasic_mtl_vt.c_terasic_mtl_fbd_panel_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/terasic/mtl/extr_terasic_mtl_vt.c_terasic_mtl_fbd_panel_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.terasic_mtl_softc = type { i32 }
%struct.fb_info = type { i32, i32, i32, i32, i8* }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"panel-size\00", align 1
@TERASIC_MTL_FB_WIDTH = common dso_local global i32 0, align 4
@TERASIC_MTL_FB_HEIGHT = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"rejecting invalid panel params width=%u height=%u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.terasic_mtl_softc*, %struct.fb_info*)* @terasic_mtl_fbd_panel_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @terasic_mtl_fbd_panel_info(%struct.terasic_mtl_softc* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.terasic_mtl_softc*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i8*], align 16
  %8 = alloca i32, align 4
  store %struct.terasic_mtl_softc* %0, %struct.terasic_mtl_softc** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %9 = load %struct.terasic_mtl_softc*, %struct.terasic_mtl_softc** %4, align 8
  %10 = getelementptr inbounds %struct.terasic_mtl_softc, %struct.terasic_mtl_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ofw_bus_get_node(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @ENXIO, align 4
  store i32 %15, i32* %3, align 4
  br label %91

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @OF_getproplen(i32 %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ne i64 %19, 16
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %3, align 4
  br label %91

23:                                               ; preds = %16
  %24 = load i32, i32* %6, align 4
  %25 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @OF_getencprop(i32 %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %25, i32 %26)
  %28 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %29 = load i8*, i8** %28, align 16
  %30 = ptrtoint i8* %29 to i32
  %31 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %32 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 1
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 4
  store i8* %34, i8** %36, align 8
  %37 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %38 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %37, i32 0, i32 2
  store i32 32, i32* %38, align 8
  %39 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %40 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %39, i32 0, i32 1
  store i32 32, i32* %40, align 4
  %41 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %42 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %45 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = sdiv i32 %46, 8
  %48 = mul nsw i32 %43, %47
  %49 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %50 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %52 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @TERASIC_MTL_FB_WIDTH, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %77, label %56

56:                                               ; preds = %23
  %57 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %58 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %57, i32 0, i32 4
  %59 = load i8*, i8** %58, align 8
  %60 = load i8*, i8** @TERASIC_MTL_FB_HEIGHT, align 8
  %61 = icmp ne i8* %59, %60
  br i1 %61, label %77, label %62

62:                                               ; preds = %56
  %63 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %64 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 3200
  br i1 %66, label %77, label %67

67:                                               ; preds = %62
  %68 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %69 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 32
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %74 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 32
  br i1 %76, label %77, label %90

77:                                               ; preds = %72, %67, %62, %56, %23
  %78 = load %struct.terasic_mtl_softc*, %struct.terasic_mtl_softc** %4, align 8
  %79 = getelementptr inbounds %struct.terasic_mtl_softc, %struct.terasic_mtl_softc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %82 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %85 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %84, i32 0, i32 4
  %86 = load i8*, i8** %85, align 8
  %87 = ptrtoint i8* %86 to i32
  %88 = call i32 @device_printf(i32 %80, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %83, i32 %87)
  %89 = load i32, i32* @EINVAL, align 4
  store i32 %89, i32* %3, align 4
  br label %91

90:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %77, %21, %14
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_getproplen(i32, i8*) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i8**, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
