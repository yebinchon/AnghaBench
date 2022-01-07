; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_device_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, %struct.ena_com_dev* }
%struct.ena_com_dev = type { i32 }
%struct.ena_com_dev_get_features_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"failed to init mmio read less\0A\00", align 1
@ENA_MMIO_DISABLE_REG_READ = common dso_local global i32 0, align 4
@ENA_REGS_RESET_NORMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Can not reset device\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"device version is too low\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Invalid dma width value %d\00", align 1
@aenq_handlers = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"Can not initialize ena admin queue with device\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Cannot get attribute for ena device rc: %d\0A\00", align 1
@ENA_ADMIN_LINK_CHANGE = common dso_local global i32 0, align 4
@ENA_ADMIN_FATAL_ERROR = common dso_local global i32 0, align 4
@ENA_ADMIN_WARNING = common dso_local global i32 0, align 4
@ENA_ADMIN_NOTIFICATION = common dso_local global i32 0, align 4
@ENA_ADMIN_KEEP_ALIVE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"Cannot configure aenq groups rc: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_adapter*, i32, %struct.ena_com_dev_get_features_ctx*, i32*)* @ena_device_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_device_init(%struct.ena_adapter* %0, i32 %1, %struct.ena_com_dev_get_features_ctx* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ena_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ena_com_dev_get_features_ctx*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ena_com_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ena_com_dev_get_features_ctx* %2, %struct.ena_com_dev_get_features_ctx** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.ena_adapter*, %struct.ena_adapter** %6, align 8
  %16 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %15, i32 0, i32 1
  %17 = load %struct.ena_com_dev*, %struct.ena_com_dev** %16, align 8
  store %struct.ena_com_dev* %17, %struct.ena_com_dev** %10, align 8
  %18 = load %struct.ena_com_dev*, %struct.ena_com_dev** %10, align 8
  %19 = call i32 @ena_com_mmio_reg_read_request_init(%struct.ena_com_dev* %18)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 (i32, i8*, ...) @device_printf(i32 %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %14, align 4
  store i32 %28, i32* %5, align 4
  br label %159

29:                                               ; preds = %4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @pci_get_revid(i32 %30)
  %32 = load i32, i32* @ENA_MMIO_DISABLE_REG_READ, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %11, align 4
  %37 = load %struct.ena_com_dev*, %struct.ena_com_dev** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @ena_com_set_mmio_read_mode(%struct.ena_com_dev* %37, i32 %38)
  %40 = load %struct.ena_com_dev*, %struct.ena_com_dev** %10, align 8
  %41 = load i32, i32* @ENA_REGS_RESET_NORMAL, align 4
  %42 = call i32 @ena_com_dev_reset(%struct.ena_com_dev* %40, i32 %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %29
  %49 = load i32, i32* %7, align 4
  %50 = call i32 (i32, i8*, ...) @device_printf(i32 %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %155

51:                                               ; preds = %29
  %52 = load %struct.ena_com_dev*, %struct.ena_com_dev** %10, align 8
  %53 = call i32 @ena_com_validate_version(%struct.ena_com_dev* %52)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load i32, i32* %7, align 4
  %61 = call i32 (i32, i8*, ...) @device_printf(i32 %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %155

62:                                               ; preds = %51
  %63 = load %struct.ena_com_dev*, %struct.ena_com_dev** %10, align 8
  %64 = call i32 @ena_com_get_dma_width(%struct.ena_com_dev* %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp slt i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %62
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %13, align 4
  %73 = call i32 (i32, i8*, ...) @device_printf(i32 %71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %13, align 4
  store i32 %74, i32* %14, align 4
  br label %155

75:                                               ; preds = %62
  %76 = load i32, i32* %13, align 4
  %77 = load %struct.ena_adapter*, %struct.ena_adapter** %6, align 8
  %78 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.ena_com_dev*, %struct.ena_com_dev** %10, align 8
  %80 = call i32 @ena_com_admin_init(%struct.ena_com_dev* %79, i32* @aenq_handlers)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %75
  %87 = load i32, i32* %7, align 4
  %88 = call i32 (i32, i8*, ...) @device_printf(i32 %87, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  br label %155

89:                                               ; preds = %75
  %90 = load %struct.ena_com_dev*, %struct.ena_com_dev** %10, align 8
  %91 = call i32 @ena_com_set_admin_polling_mode(%struct.ena_com_dev* %90, i32 1)
  %92 = load %struct.ena_com_dev*, %struct.ena_com_dev** %10, align 8
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @ena_config_host_info(%struct.ena_com_dev* %92, i32 %93)
  %95 = load %struct.ena_com_dev*, %struct.ena_com_dev** %10, align 8
  %96 = load %struct.ena_com_dev_get_features_ctx*, %struct.ena_com_dev_get_features_ctx** %8, align 8
  %97 = call i32 @ena_com_get_dev_attr_feat(%struct.ena_com_dev* %95, %struct.ena_com_dev_get_features_ctx* %96)
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %14, align 4
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i32
  %101 = call i64 @unlikely(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %89
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %14, align 4
  %106 = call i32 (i32, i8*, ...) @device_printf(i32 %104, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %105)
  br label %150

107:                                              ; preds = %89
  %108 = load i32, i32* @ENA_ADMIN_LINK_CHANGE, align 4
  %109 = call i32 @BIT(i32 %108)
  %110 = load i32, i32* @ENA_ADMIN_FATAL_ERROR, align 4
  %111 = call i32 @BIT(i32 %110)
  %112 = or i32 %109, %111
  %113 = load i32, i32* @ENA_ADMIN_WARNING, align 4
  %114 = call i32 @BIT(i32 %113)
  %115 = or i32 %112, %114
  %116 = load i32, i32* @ENA_ADMIN_NOTIFICATION, align 4
  %117 = call i32 @BIT(i32 %116)
  %118 = or i32 %115, %117
  %119 = load i32, i32* @ENA_ADMIN_KEEP_ALIVE, align 4
  %120 = call i32 @BIT(i32 %119)
  %121 = or i32 %118, %120
  store i32 %121, i32* %12, align 4
  %122 = load %struct.ena_com_dev_get_features_ctx*, %struct.ena_com_dev_get_features_ctx** %8, align 8
  %123 = getelementptr inbounds %struct.ena_com_dev_get_features_ctx, %struct.ena_com_dev_get_features_ctx* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %12, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %12, align 4
  %128 = load %struct.ena_com_dev*, %struct.ena_com_dev** %10, align 8
  %129 = load i32, i32* %12, align 4
  %130 = call i32 @ena_com_set_aenq_config(%struct.ena_com_dev* %128, i32 %129)
  store i32 %130, i32* %14, align 4
  %131 = load i32, i32* %14, align 4
  %132 = icmp ne i32 %131, 0
  %133 = zext i1 %132 to i32
  %134 = call i64 @unlikely(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %107
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* %14, align 4
  %139 = call i32 (i32, i8*, ...) @device_printf(i32 %137, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %138)
  br label %150

140:                                              ; preds = %107
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* @ENA_ADMIN_KEEP_ALIVE, align 4
  %143 = call i32 @BIT(i32 %142)
  %144 = and i32 %141, %143
  %145 = icmp ne i32 %144, 0
  %146 = xor i1 %145, true
  %147 = xor i1 %146, true
  %148 = zext i1 %147 to i32
  %149 = load i32*, i32** %9, align 8
  store i32 %148, i32* %149, align 4
  store i32 0, i32* %5, align 4
  br label %159

150:                                              ; preds = %136, %103
  %151 = load %struct.ena_com_dev*, %struct.ena_com_dev** %10, align 8
  %152 = call i32 @ena_com_delete_host_info(%struct.ena_com_dev* %151)
  %153 = load %struct.ena_com_dev*, %struct.ena_com_dev** %10, align 8
  %154 = call i32 @ena_com_admin_destroy(%struct.ena_com_dev* %153)
  br label %155

155:                                              ; preds = %150, %86, %70, %59, %48
  %156 = load %struct.ena_com_dev*, %struct.ena_com_dev** %10, align 8
  %157 = call i32 @ena_com_mmio_reg_read_request_destroy(%struct.ena_com_dev* %156)
  %158 = load i32, i32* %14, align 4
  store i32 %158, i32* %5, align 4
  br label %159

159:                                              ; preds = %155, %140, %25
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local i32 @ena_com_mmio_reg_read_request_init(%struct.ena_com_dev*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @pci_get_revid(i32) #1

declare dso_local i32 @ena_com_set_mmio_read_mode(%struct.ena_com_dev*, i32) #1

declare dso_local i32 @ena_com_dev_reset(%struct.ena_com_dev*, i32) #1

declare dso_local i32 @ena_com_validate_version(%struct.ena_com_dev*) #1

declare dso_local i32 @ena_com_get_dma_width(%struct.ena_com_dev*) #1

declare dso_local i32 @ena_com_admin_init(%struct.ena_com_dev*, i32*) #1

declare dso_local i32 @ena_com_set_admin_polling_mode(%struct.ena_com_dev*, i32) #1

declare dso_local i32 @ena_config_host_info(%struct.ena_com_dev*, i32) #1

declare dso_local i32 @ena_com_get_dev_attr_feat(%struct.ena_com_dev*, %struct.ena_com_dev_get_features_ctx*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ena_com_set_aenq_config(%struct.ena_com_dev*, i32) #1

declare dso_local i32 @ena_com_delete_host_info(%struct.ena_com_dev*) #1

declare dso_local i32 @ena_com_admin_destroy(%struct.ena_com_dev*) #1

declare dso_local i32 @ena_com_mmio_reg_read_request_destroy(%struct.ena_com_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
