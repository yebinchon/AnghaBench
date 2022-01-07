; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ahci.c_nvme_ahci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ahci.c_nvme_ahci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_controller = type { i32, i32*, i32, i32*, i64, i8*, i64, i64, i64, %struct.nvme_registers*, i32 }
%struct.nvme_registers = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unable to allocate mem resource\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"unable to allocate shared IRQ\0A\00", align 1
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@nvme_ctrlr_intx_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"unable to setup intx handler\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @nvme_ahci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_ahci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvme_controller*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.nvme_controller* @DEVICE2SOFTC(i32 %6)
  store %struct.nvme_controller* %7, %struct.nvme_controller** %4, align 8
  %8 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %9 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %8, i32 0, i32 4
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @SYS_RES_MEMORY, align 4
  %12 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %13 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %12, i32 0, i32 4
  %14 = load i32, i32* @RF_ACTIVE, align 4
  %15 = call i8* @bus_alloc_resource_any(i32 %10, i32 %11, i64* %13, i32 %14)
  %16 = bitcast i8* %15 to i32*
  %17 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %18 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %17, i32 0, i32 3
  store i32* %16, i32** %18, align 8
  %19 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %20 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %25 = call i32 @nvme_printf(%struct.nvme_controller* %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENOMEM, align 4
  store i32 %26, i32* %5, align 4
  br label %94

27:                                               ; preds = %1
  %28 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %29 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @rman_get_bustag(i32* %30)
  %32 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %33 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %32, i32 0, i32 10
  store i32 %31, i32* %33, align 8
  %34 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %35 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = call i64 @rman_get_bushandle(i32* %36)
  %38 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %39 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %38, i32 0, i32 8
  store i64 %37, i64* %39, align 8
  %40 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %41 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %40, i32 0, i32 8
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.nvme_registers*
  %44 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %45 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %44, i32 0, i32 9
  store %struct.nvme_registers* %43, %struct.nvme_registers** %45, align 8
  %46 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %47 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %46, i32 0, i32 7
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @SYS_RES_IRQ, align 4
  %50 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %51 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %50, i32 0, i32 7
  %52 = load i32, i32* @RF_SHAREABLE, align 4
  %53 = load i32, i32* @RF_ACTIVE, align 4
  %54 = or i32 %52, %53
  %55 = call i8* @bus_alloc_resource_any(i32 %48, i32 %49, i64* %51, i32 %54)
  %56 = bitcast i8* %55 to i32*
  %57 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %58 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %57, i32 0, i32 1
  store i32* %56, i32** %58, align 8
  %59 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %60 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %27
  %64 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %65 = call i32 @nvme_printf(%struct.nvme_controller* %64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* @ENOMEM, align 4
  store i32 %66, i32* %5, align 4
  br label %94

67:                                               ; preds = %27
  %68 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %69 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %68, i32 0, i32 6
  store i64 0, i64* %69, align 8
  %70 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %71 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  %72 = load i32, i32* %3, align 4
  %73 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %74 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* @INTR_TYPE_MISC, align 4
  %77 = load i32, i32* @INTR_MPSAFE, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @nvme_ctrlr_intx_handler, align 4
  %80 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %81 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %82 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %81, i32 0, i32 5
  %83 = call i64 @bus_setup_intr(i32 %72, i32* %75, i32 %78, i32* null, i32 %79, %struct.nvme_controller* %80, i8** %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %67
  %86 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %87 = call i32 @nvme_printf(%struct.nvme_controller* %86, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %88 = load i32, i32* @ENOMEM, align 4
  store i32 %88, i32* %5, align 4
  br label %94

89:                                               ; preds = %67
  %90 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %91 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %90, i32 0, i32 5
  store i8* inttoptr (i64 1 to i8*), i8** %91, align 8
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @nvme_attach(i32 %92)
  store i32 %93, i32* %2, align 4
  br label %129

94:                                               ; preds = %85, %63, %23
  %95 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %96 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %95, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %109

99:                                               ; preds = %94
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* @SYS_RES_MEMORY, align 4
  %102 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %103 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %106 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %105, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @bus_release_resource(i32 %100, i32 %101, i64 %104, i32* %107)
  br label %109

109:                                              ; preds = %99, %94
  %110 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %111 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %127

114:                                              ; preds = %109
  %115 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %116 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @SYS_RES_IRQ, align 4
  %119 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %120 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = call i64 @rman_get_rid(i32* %121)
  %123 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %124 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @bus_release_resource(i32 %117, i32 %118, i64 %122, i32* %125)
  br label %127

127:                                              ; preds = %114, %109
  %128 = load i32, i32* %5, align 4
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %127, %89
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local %struct.nvme_controller* @DEVICE2SOFTC(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @nvme_printf(%struct.nvme_controller*, i8*) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i64 @rman_get_bushandle(i32*) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.nvme_controller*, i8**) #1

declare dso_local i32 @nvme_attach(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i64, i32*) #1

declare dso_local i64 @rman_get_rid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
