; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_als4000.c_als_resource_grab.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_als4000.c_als_resource_grab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, i32, i32, i32*, i32, i32*, i32, i32, i32 }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"unable to allocate register space\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"unable to allocate interrupt\0A\00", align 1
@INTR_MPSAFE = common dso_local global i32 0, align 4
@als_intr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"unable to setup interrupt\0A\00", align 1
@ALS_DEFAULT_BUFSZ = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_24BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"unable to create dma tag\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sc_info*)* @als_resource_grab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @als_resource_grab(i32 %0, %struct.sc_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sc_info*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.sc_info* %1, %struct.sc_info** %5, align 8
  %6 = call i32 @PCIR_BAR(i32 0)
  %7 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %8 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %7, i32 0, i32 8
  store i32 %6, i32* %8, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @SYS_RES_IOPORT, align 4
  %11 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %12 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %11, i32 0, i32 8
  %13 = load i32, i32* @RF_ACTIVE, align 4
  %14 = call i8* @bus_alloc_resource_any(i32 %9, i32 %10, i32* %12, i32 %13)
  %15 = bitcast i8* %14 to i32*
  %16 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %17 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %16, i32 0, i32 5
  store i32* %15, i32** %17, align 8
  %18 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %19 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %18, i32 0, i32 5
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @device_printf(i32 %23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %92

25:                                               ; preds = %2
  %26 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %27 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %26, i32 0, i32 5
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @rman_get_bustag(i32* %28)
  %30 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %31 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 4
  %32 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %33 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %32, i32 0, i32 5
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @rman_get_bushandle(i32* %34)
  %36 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %37 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @SYS_RES_IRQ, align 4
  %40 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %41 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %40, i32 0, i32 4
  %42 = load i32, i32* @RF_ACTIVE, align 4
  %43 = load i32, i32* @RF_SHAREABLE, align 4
  %44 = or i32 %42, %43
  %45 = call i8* @bus_alloc_resource_any(i32 %38, i32 %39, i32* %41, i32 %44)
  %46 = bitcast i8* %45 to i32*
  %47 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %48 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %47, i32 0, i32 3
  store i32* %46, i32** %48, align 8
  %49 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %50 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %25
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @device_printf(i32 %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %92

56:                                               ; preds = %25
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %59 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* @INTR_MPSAFE, align 4
  %62 = load i32, i32* @als_intr, align 4
  %63 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %64 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %65 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %64, i32 0, i32 2
  %66 = call i64 @snd_setup_intr(i32 %57, i32* %60, i32 %61, i32 %62, %struct.sc_info* %63, i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %56
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @device_printf(i32 %69, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %92

71:                                               ; preds = %56
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @ALS_DEFAULT_BUFSZ, align 4
  %74 = call i32 @pcm_getbuffersize(i32 %72, i32 4096, i32 %73, i32 65536)
  %75 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %76 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @bus_get_dma_tag(i32 %77)
  %79 = load i32, i32* @BUS_SPACE_MAXADDR_24BIT, align 4
  %80 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %81 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %82 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %85 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %84, i32 0, i32 0
  %86 = call i64 @bus_dma_tag_create(i32 %78, i32 2, i32 0, i32 %79, i32 %80, i32* null, i32* null, i32 %83, i32 1, i32 262143, i32 0, i32* null, i32* null, i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %71
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @device_printf(i32 %89, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %92

91:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %97

92:                                               ; preds = %88, %68, %53, %22
  %93 = load i32, i32* %4, align 4
  %94 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %95 = call i32 @als_resource_free(i32 %93, %struct.sc_info* %94)
  %96 = load i32, i32* @ENXIO, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %92, %91
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i64 @snd_setup_intr(i32, i32*, i32, i32, %struct.sc_info*, i32*) #1

declare dso_local i32 @pcm_getbuffersize(i32, i32, i32, i32) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @als_resource_free(i32, %struct.sc_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
