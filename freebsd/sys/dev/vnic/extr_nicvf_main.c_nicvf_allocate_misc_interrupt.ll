; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_main.c_nicvf_allocate_misc_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_main.c_nicvf_allocate_misc_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { %struct.resource*, i32 }
%struct.resource = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@NICVF_INTR_ID_MISC = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Could not allocate Mbox interrupt for VF%d\0A\00", align 1
@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@nicvf_misc_intr_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nicvf*)* @nicvf_allocate_misc_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nicvf_allocate_misc_interrupt(%struct.nicvf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nicvf*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nicvf* %0, %struct.nicvf** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %9 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %110

13:                                               ; preds = %1
  %14 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %15 = call i64 @nicvf_enable_msix(%struct.nicvf* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %2, align 4
  br label %110

19:                                               ; preds = %13
  %20 = load i32, i32* @NICVF_INTR_ID_MISC, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %6, align 4
  %23 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %24 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SYS_RES_IRQ, align 4
  %27 = load i32, i32* @RF_SHAREABLE, align 4
  %28 = load i32, i32* @RF_ACTIVE, align 4
  %29 = or i32 %27, %28
  %30 = call %struct.resource* @bus_alloc_resource_any(i32 %25, i32 %26, i32* %6, i32 %29)
  %31 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %32 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store %struct.resource* %30, %struct.resource** %37, align 8
  %38 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %39 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.resource*, %struct.resource** %44, align 8
  %46 = icmp eq %struct.resource* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %19
  %48 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %49 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %52 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @device_get_unit(i32 %53)
  %55 = call i32 @device_printf(i32 %50, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @ENXIO, align 4
  store i32 %56, i32* %2, align 4
  br label %110

57:                                               ; preds = %19
  %58 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %59 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %62 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load %struct.resource*, %struct.resource** %67, align 8
  %69 = load i32, i32* @INTR_MPSAFE, align 4
  %70 = load i32, i32* @INTR_TYPE_MISC, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @nicvf_misc_intr_handler, align 4
  %73 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %74 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %75 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = call i32 @bus_setup_intr(i32 %60, %struct.resource* %68, i32 %71, i32* null, i32 %72, %struct.nicvf* %73, i32* %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %109

84:                                               ; preds = %57
  %85 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %86 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load %struct.resource*, %struct.resource** %91, align 8
  store %struct.resource* %92, %struct.resource** %4, align 8
  %93 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %94 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @SYS_RES_IRQ, align 4
  %97 = load %struct.resource*, %struct.resource** %4, align 8
  %98 = call i32 @rman_get_rid(%struct.resource* %97)
  %99 = load %struct.resource*, %struct.resource** %4, align 8
  %100 = call i32 @bus_release_resource(i32 %95, i32 %96, i32 %98, %struct.resource* %99)
  %101 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %102 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  store %struct.resource* null, %struct.resource** %107, align 8
  %108 = load i32, i32* %7, align 4
  store i32 %108, i32* %2, align 4
  br label %110

109:                                              ; preds = %57
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %109, %84, %47, %17, %12
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i64 @nicvf_enable_msix(%struct.nicvf*) #1

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @bus_setup_intr(i32, %struct.resource*, i32, i32*, i32, %struct.nicvf*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @rman_get_rid(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
