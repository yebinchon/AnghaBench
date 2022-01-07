; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_uninorth.c_unin_chip_activate_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_uninorth.c_unin_chip_activate_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"unin mapdev: start %zx, len %jd\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@bs_be_tag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.resource*)* @unin_chip_activate_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unin_chip_activate_resource(i32 %0, i32 %1, i32 %2, i32 %3, %struct.resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.resource* %4, %struct.resource** %11, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @SYS_RES_IRQ, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %5
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.resource*, %struct.resource** %11, align 8
  %22 = call i32 @bus_activate_resource(i32 %18, i32 %19, i32 %20, %struct.resource* %21)
  store i32 %22, i32* %6, align 4
  br label %64

23:                                               ; preds = %5
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @SYS_RES_MEMORY, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @SYS_RES_IOPORT, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %61

31:                                               ; preds = %27, %23
  %32 = load %struct.resource*, %struct.resource** %11, align 8
  %33 = call i64 @rman_get_start(%struct.resource* %32)
  store i64 %33, i64* %13, align 8
  %34 = load i64, i64* @bootverbose, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i64, i64* %13, align 8
  %38 = load %struct.resource*, %struct.resource** %11, align 8
  %39 = call i64 @rman_get_size(%struct.resource* %38)
  %40 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %37, i64 %39)
  br label %41

41:                                               ; preds = %36, %31
  %42 = load i64, i64* %13, align 8
  %43 = load %struct.resource*, %struct.resource** %11, align 8
  %44 = call i64 @rman_get_size(%struct.resource* %43)
  %45 = trunc i64 %44 to i32
  %46 = call i8* @pmap_mapdev(i64 %42, i32 %45)
  store i8* %46, i8** %12, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @ENOMEM, align 4
  store i32 %50, i32* %6, align 4
  br label %64

51:                                               ; preds = %41
  %52 = load %struct.resource*, %struct.resource** %11, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = call i32 @rman_set_virtual(%struct.resource* %52, i8* %53)
  %55 = load %struct.resource*, %struct.resource** %11, align 8
  %56 = call i32 @rman_set_bustag(%struct.resource* %55, i32* @bs_be_tag)
  %57 = load %struct.resource*, %struct.resource** %11, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = ptrtoint i8* %58 to i32
  %60 = call i32 @rman_set_bushandle(%struct.resource* %57, i32 %59)
  br label %61

61:                                               ; preds = %51, %27
  %62 = load %struct.resource*, %struct.resource** %11, align 8
  %63 = call i32 @rman_activate_resource(%struct.resource* %62)
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %61, %49, %17
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @bus_activate_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i64 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @printf(i8*, i64, i64) #1

declare dso_local i64 @rman_get_size(%struct.resource*) #1

declare dso_local i8* @pmap_mapdev(i64, i32) #1

declare dso_local i32 @rman_set_virtual(%struct.resource*, i8*) #1

declare dso_local i32 @rman_set_bustag(%struct.resource*, i32*) #1

declare dso_local i32 @rman_set_bushandle(%struct.resource*, i32) #1

declare dso_local i32 @rman_activate_resource(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
