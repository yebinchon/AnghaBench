; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_upa.c_upa_setup_dinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_upa.c_upa_setup_dinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.upa_devinfo = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.upa_softc = type { i32 }
%struct.upa_regs = type { i32, i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"<%s>: incomplete\0A\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@UPA_INO_BASE = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.upa_devinfo* (i32, %struct.upa_softc*, i32, i32)* @upa_setup_dinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.upa_devinfo* @upa_setup_dinfo(i32 %0, %struct.upa_softc* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.upa_devinfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.upa_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.upa_devinfo*, align 8
  %11 = alloca %struct.upa_regs*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.upa_softc* %1, %struct.upa_softc** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* @M_DEVBUF, align 4
  %16 = load i32, i32* @M_WAITOK, align 4
  %17 = load i32, i32* @M_ZERO, align 4
  %18 = or i32 %16, %17
  %19 = call %struct.upa_devinfo* @malloc(i32 8, i32 %15, i32 %18)
  store %struct.upa_devinfo* %19, %struct.upa_devinfo** %10, align 8
  %20 = load %struct.upa_devinfo*, %struct.upa_devinfo** %10, align 8
  %21 = getelementptr inbounds %struct.upa_devinfo, %struct.upa_devinfo* %20, i32 0, i32 1
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @ofw_bus_gen_setup_devinfo(%struct.TYPE_2__* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load %struct.upa_devinfo*, %struct.upa_devinfo** %10, align 8
  %27 = load i32, i32* @M_DEVBUF, align 4
  %28 = call i32 @free(%struct.upa_devinfo* %26, i32 %27)
  store %struct.upa_devinfo* null, %struct.upa_devinfo** %5, align 8
  br label %105

29:                                               ; preds = %4
  %30 = load %struct.upa_devinfo*, %struct.upa_devinfo** %10, align 8
  %31 = getelementptr inbounds %struct.upa_devinfo, %struct.upa_devinfo* %30, i32 0, i32 0
  %32 = call i32 @resource_list_init(i32* %31)
  %33 = load i32, i32* %8, align 4
  %34 = bitcast %struct.upa_regs** %11 to i8**
  %35 = call i32 @OF_getprop_alloc_multi(i32 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 8, i8** %34)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %45

38:                                               ; preds = %29
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.upa_devinfo*, %struct.upa_devinfo** %10, align 8
  %41 = getelementptr inbounds %struct.upa_devinfo, %struct.upa_devinfo* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @device_printf(i32 %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %102

45:                                               ; preds = %29
  store i32 0, i32* %13, align 4
  br label %46

46:                                               ; preds = %82, %45
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %85

50:                                               ; preds = %46
  %51 = load %struct.upa_devinfo*, %struct.upa_devinfo** %10, align 8
  %52 = getelementptr inbounds %struct.upa_devinfo, %struct.upa_devinfo* %51, i32 0, i32 0
  %53 = load i32, i32* @SYS_RES_MEMORY, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.upa_regs*, %struct.upa_regs** %11, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.upa_regs, %struct.upa_regs* %55, i64 %57
  %59 = getelementptr inbounds %struct.upa_regs, %struct.upa_regs* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.upa_regs*, %struct.upa_regs** %11, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.upa_regs, %struct.upa_regs* %61, i64 %63
  %65 = getelementptr inbounds %struct.upa_regs, %struct.upa_regs* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.upa_regs*, %struct.upa_regs** %11, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.upa_regs, %struct.upa_regs* %67, i64 %69
  %71 = getelementptr inbounds %struct.upa_regs, %struct.upa_regs* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %66, %72
  %74 = sub nsw i32 %73, 1
  %75 = load %struct.upa_regs*, %struct.upa_regs** %11, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.upa_regs, %struct.upa_regs* %75, i64 %77
  %79 = getelementptr inbounds %struct.upa_regs, %struct.upa_regs* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @resource_list_add(i32* %52, i32 %53, i32 %54, i32 %60, i32 %74, i32 %80)
  br label %82

82:                                               ; preds = %50
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %13, align 4
  br label %46

85:                                               ; preds = %46
  %86 = load %struct.upa_regs*, %struct.upa_regs** %11, align 8
  %87 = call i32 @OF_prop_free(%struct.upa_regs* %86)
  %88 = load %struct.upa_softc*, %struct.upa_softc** %7, align 8
  %89 = getelementptr inbounds %struct.upa_softc, %struct.upa_softc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @UPA_INO_BASE, align 4
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %91, %92
  %94 = call i32 @INTMAP_VEC(i32 %90, i32 %93)
  store i32 %94, i32* %12, align 4
  %95 = load %struct.upa_devinfo*, %struct.upa_devinfo** %10, align 8
  %96 = getelementptr inbounds %struct.upa_devinfo, %struct.upa_devinfo* %95, i32 0, i32 0
  %97 = load i32, i32* @SYS_RES_IRQ, align 4
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @resource_list_add(i32* %96, i32 %97, i32 0, i32 %98, i32 %99, i32 1)
  %101 = load %struct.upa_devinfo*, %struct.upa_devinfo** %10, align 8
  store %struct.upa_devinfo* %101, %struct.upa_devinfo** %5, align 8
  br label %105

102:                                              ; preds = %38
  %103 = load %struct.upa_devinfo*, %struct.upa_devinfo** %10, align 8
  %104 = call i32 @upa_destroy_dinfo(%struct.upa_devinfo* %103)
  store %struct.upa_devinfo* null, %struct.upa_devinfo** %5, align 8
  br label %105

105:                                              ; preds = %102, %85, %25
  %106 = load %struct.upa_devinfo*, %struct.upa_devinfo** %5, align 8
  ret %struct.upa_devinfo* %106
}

declare dso_local %struct.upa_devinfo* @malloc(i32, i32, i32) #1

declare dso_local i64 @ofw_bus_gen_setup_devinfo(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @free(%struct.upa_devinfo*, i32) #1

declare dso_local i32 @resource_list_init(i32*) #1

declare dso_local i32 @OF_getprop_alloc_multi(i32, i8*, i32, i8**) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @resource_list_add(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @OF_prop_free(%struct.upa_regs*) #1

declare dso_local i32 @INTMAP_VEC(i32, i32) #1

declare dso_local i32 @upa_destroy_dinfo(%struct.upa_devinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
