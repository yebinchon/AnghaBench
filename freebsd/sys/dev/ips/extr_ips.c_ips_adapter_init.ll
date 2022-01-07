; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ips/extr_ips.c_ips_adapter_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ips/extr_ips.c_ips_adapter_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i64, i32, %struct.TYPE_17__*, i32, %struct.TYPE_15__, i32, i64 (%struct.TYPE_16__*, i32)*, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_15__ = type { i64 }

@.str = private unnamed_addr constant [14 x i8] c"initializing\0A\00", align 1
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@IPS_COMMAND_LEN = common dso_local global i64 0, align 8
@IPS_MAX_SG_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"can't alloc command dma tag\0A\00", align 1
@IPS_MAX_IOBUF_SIZE = common dso_local global i64 0, align 8
@IPS_MAX_SG_ELEMENTS = common dso_local global i32 0, align 4
@busdma_lock_mutex = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"can't alloc SG dma tag\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"failed to send ffdc reset to device (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"failed to get adapter configuration data from device (%d)\0A\00", align 1
@IPS_ADAPTER_MAX_T = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"adapter type: %s\0A\00", align 1
@ips_adapter_name = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [57 x i8] c"failed to get drive configuration data from device (%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"failed to initialize command buffers\0A\00", align 1
@ips_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_OPERATOR = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"ips%d\00", align 1
@hz = common dso_local global i32 0, align 4
@ips_timeout = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ips_adapter_init(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %5 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @DEVICE_PRINTF(i32 1, i32 %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 11
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %13 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %14 = load i64, i64* @IPS_COMMAND_LEN, align 8
  %15 = load i64, i64* @IPS_MAX_SG_LEN, align 8
  %16 = add nsw i64 %14, %15
  %17 = load i64, i64* @IPS_COMMAND_LEN, align 8
  %18 = load i64, i64* @IPS_MAX_SG_LEN, align 8
  %19 = add nsw i64 %17, %18
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 12
  %22 = call i64 @bus_dma_tag_create(i32 %11, i32 1, i32 0, i32 %12, i32 %13, i32* null, i32* null, i64 %16, i32 1, i64 %19, i32 0, i32* null, i32* null, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (i32, i8*, ...) @device_printf(i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %180

29:                                               ; preds = %1
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 11
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %34 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %35 = load i64, i64* @IPS_MAX_IOBUF_SIZE, align 8
  %36 = load i32, i32* @IPS_MAX_SG_ELEMENTS, align 4
  %37 = load i64, i64* @IPS_MAX_IOBUF_SIZE, align 8
  %38 = load i32*, i32** @busdma_lock_mutex, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 10
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 9
  %43 = call i64 @bus_dma_tag_create(i32 %32, i32 1, i32 0, i32 %33, i32 %34, i32* null, i32* null, i64 %35, i32 %36, i64 %37, i32 0, i32* %38, i32* %40, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %29
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i32, i8*, ...) @device_printf(i32 %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %180

50:                                               ; preds = %29
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %54 = call i64 @ips_cmdqueue_init(%struct.TYPE_16__* %53)
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 8
  %57 = load i64 (%struct.TYPE_16__*, i32)*, i64 (%struct.TYPE_16__*, i32)** %56, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %59 = call i64 %57(%struct.TYPE_16__* %58, i32 0)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  br label %180

62:                                               ; preds = %50
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 7
  %65 = call i32 @microtime(i32* %64)
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %69 = call i32 @ips_ffdc_reset(%struct.TYPE_16__* %68)
  store i32 %69, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %62
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 (i32, i8*, ...) @device_printf(i32 %74, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  br label %180

77:                                               ; preds = %62
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %79 = call i32 @ips_get_adapter_info(%struct.TYPE_16__* %78)
  store i32 %79, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = call i32 (i32, i8*, ...) @device_printf(i32 %84, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %85)
  br label %180

87:                                               ; preds = %77
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %89 = call i32 @ips_update_nvram(%struct.TYPE_16__* %88)
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ugt i64 %92, 0
  br i1 %93, label %94, label %111

94:                                               ; preds = %87
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @IPS_ADAPTER_MAX_T, align 8
  %99 = icmp ule i64 %97, %98
  br i1 %99, label %100, label %111

100:                                              ; preds = %94
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = load i32*, i32** @ips_adapter_name, align 8
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (i32, i8*, ...) @device_printf(i32 %103, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %100, %94, %87
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %113 = call i32 @ips_get_drive_info(%struct.TYPE_16__* %112)
  store i32 %113, i32* %4, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %111
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %4, align 4
  %120 = call i32 (i32, i8*, ...) @device_printf(i32 %118, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0), i32 %119)
  br label %180

121:                                              ; preds = %111
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %123 = call i32 @ips_cmdqueue_free(%struct.TYPE_16__* %122)
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 6
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %121
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 6
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @min(i32 128, i64 %133)
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  br label %140

137:                                              ; preds = %121
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  store i32 32, i32* %139, align 8
  br label %140

140:                                              ; preds = %137, %129
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %142 = call i64 @ips_cmdqueue_init(%struct.TYPE_16__* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %140
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 8
  %148 = call i32 (i32, i8*, ...) @device_printf(i32 %147, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  br label %180

149:                                              ; preds = %140
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @device_get_unit(i32 %152)
  %154 = load i32, i32* @UID_ROOT, align 4
  %155 = load i32, i32* @GID_OPERATOR, align 4
  %156 = load i32, i32* @S_IRUSR, align 4
  %157 = load i32, i32* @S_IWUSR, align 4
  %158 = or i32 %156, %157
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @device_get_unit(i32 %161)
  %163 = call %struct.TYPE_17__* @make_dev(i32* @ips_cdevsw, i32 %153, i32 %154, i32 %155, i32 %158, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %162)
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 4
  store %struct.TYPE_17__* %163, %struct.TYPE_17__** %165, align 8
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 4
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 0
  store %struct.TYPE_16__* %166, %struct.TYPE_16__** %170, align 8
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %172 = call i32 @ips_diskdev_init(%struct.TYPE_16__* %171)
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 3
  %175 = load i32, i32* @hz, align 4
  %176 = mul nsw i32 10, %175
  %177 = load i32, i32* @ips_timeout, align 4
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %179 = call i32 @callout_reset(i32* %174, i32 %176, i32 %177, %struct.TYPE_16__* %178)
  store i32 0, i32* %2, align 4
  br label %184

180:                                              ; preds = %144, %115, %81, %71, %61, %45, %24
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %182 = call i32 @ips_adapter_free(%struct.TYPE_16__* %181)
  %183 = load i32, i32* @ENXIO, align 4
  store i32 %183, i32* %2, align 4
  br label %184

184:                                              ; preds = %180, %149
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local i32 @DEVICE_PRINTF(i32, i32, i8*) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i64, i32, i64, i32, i32*, i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @ips_cmdqueue_init(%struct.TYPE_16__*) #1

declare dso_local i32 @microtime(i32*) #1

declare dso_local i32 @ips_ffdc_reset(%struct.TYPE_16__*) #1

declare dso_local i32 @ips_get_adapter_info(%struct.TYPE_16__*) #1

declare dso_local i32 @ips_update_nvram(%struct.TYPE_16__*) #1

declare dso_local i32 @ips_get_drive_info(%struct.TYPE_16__*) #1

declare dso_local i32 @ips_cmdqueue_free(%struct.TYPE_16__*) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local %struct.TYPE_17__* @make_dev(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @ips_diskdev_init(%struct.TYPE_16__*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @ips_adapter_free(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
