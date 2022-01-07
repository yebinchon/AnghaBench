; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_alloc_pci_res_mv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_alloc_pci_res_mv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpt_iop_hba = type { i32, i32, i32, i32*, i32*, %struct.TYPE_4__, i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.hpt_iopmu_mv*, %struct.hpt_iopmv_regs* }
%struct.hpt_iopmu_mv = type { i32 }
%struct.hpt_iopmv_regs = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to get iop bar0.\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"alloc bar0 mem res failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to get iop bar2.\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"alloc mem bar2 res failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpt_iop_hba*)* @hptiop_alloc_pci_res_mv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hptiop_alloc_pci_res_mv(%struct.hpt_iop_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hpt_iop_hba*, align 8
  store %struct.hpt_iop_hba* %0, %struct.hpt_iop_hba** %3, align 8
  %4 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %5 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %4, i32 0, i32 0
  store i32 16, i32* %5, align 8
  %6 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %7 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @SYS_RES_MEMORY, align 4
  %10 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %11 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %10, i32 0, i32 0
  %12 = load i32, i32* @RF_ACTIVE, align 4
  %13 = call i8* @bus_alloc_resource_any(i32 %8, i32 %9, i32* %11, i32 %12)
  %14 = bitcast i8* %13 to i32*
  %15 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %16 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %15, i32 0, i32 4
  store i32* %14, i32** %16, align 8
  %17 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %18 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %23 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @device_printf(i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %160

26:                                               ; preds = %1
  %27 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %28 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = call i8* @rman_get_bustag(i32* %29)
  %31 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %32 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %31, i32 0, i32 9
  store i8* %30, i8** %32, align 8
  %33 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %34 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = call i8* @rman_get_bushandle(i32* %35)
  %37 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %38 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %37, i32 0, i32 8
  store i8* %36, i8** %38, align 8
  %39 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %40 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = call i64 @rman_get_virtual(i32* %41)
  %43 = inttoptr i64 %42 to %struct.hpt_iopmv_regs*
  %44 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %45 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store %struct.hpt_iopmv_regs* %43, %struct.hpt_iopmv_regs** %47, align 8
  %48 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %49 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load %struct.hpt_iopmv_regs*, %struct.hpt_iopmv_regs** %51, align 8
  %53 = icmp ne %struct.hpt_iopmv_regs* %52, null
  br i1 %53, label %70, label %54

54:                                               ; preds = %26
  %55 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %56 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @SYS_RES_MEMORY, align 4
  %59 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %60 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %63 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @bus_release_resource(i32 %57, i32 %58, i32 %61, i32* %64)
  %66 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %67 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @device_printf(i32 %68, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %160

70:                                               ; preds = %26
  %71 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %72 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %71, i32 0, i32 1
  store i32 24, i32* %72, align 4
  %73 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %74 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @SYS_RES_MEMORY, align 4
  %77 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %78 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %77, i32 0, i32 1
  %79 = load i32, i32* @RF_ACTIVE, align 4
  %80 = call i8* @bus_alloc_resource_any(i32 %75, i32 %76, i32* %78, i32 %79)
  %81 = bitcast i8* %80 to i32*
  %82 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %83 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %82, i32 0, i32 3
  store i32* %81, i32** %83, align 8
  %84 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %85 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %104

88:                                               ; preds = %70
  %89 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %90 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @SYS_RES_MEMORY, align 4
  %93 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %94 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %97 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %96, i32 0, i32 4
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @bus_release_resource(i32 %91, i32 %92, i32 %95, i32* %98)
  %100 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %101 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @device_printf(i32 %102, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %160

104:                                              ; preds = %70
  %105 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %106 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %105, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = call i8* @rman_get_bustag(i32* %107)
  %109 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %110 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %109, i32 0, i32 7
  store i8* %108, i8** %110, align 8
  %111 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %112 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = call i8* @rman_get_bushandle(i32* %113)
  %115 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %116 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %115, i32 0, i32 6
  store i8* %114, i8** %116, align 8
  %117 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %118 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = call i64 @rman_get_virtual(i32* %119)
  %121 = inttoptr i64 %120 to %struct.hpt_iopmu_mv*
  %122 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %123 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %122, i32 0, i32 5
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  store %struct.hpt_iopmu_mv* %121, %struct.hpt_iopmu_mv** %125, align 8
  %126 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %127 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %126, i32 0, i32 5
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load %struct.hpt_iopmu_mv*, %struct.hpt_iopmu_mv** %129, align 8
  %131 = icmp ne %struct.hpt_iopmu_mv* %130, null
  br i1 %131, label %159, label %132

132:                                              ; preds = %104
  %133 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %134 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @SYS_RES_MEMORY, align 4
  %137 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %138 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %141 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %140, i32 0, i32 4
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @bus_release_resource(i32 %135, i32 %136, i32 %139, i32* %142)
  %144 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %145 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @SYS_RES_MEMORY, align 4
  %148 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %149 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %152 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %151, i32 0, i32 3
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 @bus_release_resource(i32 %146, i32 %147, i32 %150, i32* %153)
  %155 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %156 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @device_printf(i32 %157, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %160

159:                                              ; preds = %104
  store i32 0, i32* %2, align 4
  br label %160

160:                                              ; preds = %159, %132, %88, %54, %21
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i8* @rman_get_bustag(i32*) #1

declare dso_local i8* @rman_get_bushandle(i32*) #1

declare dso_local i64 @rman_get_virtual(i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
