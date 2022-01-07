; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_ioctl.c_qlnx_nvram.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_ioctl.c_qlnx_nvram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }

@ECORE_NVM_WRITE_NVRAM = common dso_local global i32 0, align 4
@ECORE_PUT_FILE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"QLNX_NVRAM_CMD_SET_SECURE_MODE \09\09\09 resp = 0x%x ret = 0x%x exit\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"QLNX_NVRAM_CMD_DEL_FILE \09\09\09 resp = 0x%x ret = 0x%x exit\0A\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"QLNX_NVRAM_CMD_PUT_FILE_BEGIN \09\09\09 resp = 0x%x ret = 0x%x exit\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*)* @qlnx_nvram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnx_nvram(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %69 [
    i32 128, label %9
    i32 131, label %14
    i32 130, label %19
    i32 129, label %23
    i32 134, label %37
    i32 132, label %51
    i32 133, label %65
  ]

9:                                                ; preds = %2
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %12 = load i32, i32* @ECORE_NVM_WRITE_NVRAM, align 4
  %13 = call i32 @qlnx_write_nvram(%struct.TYPE_17__* %10, %struct.TYPE_16__* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  br label %71

14:                                               ; preds = %2
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %17 = load i32, i32* @ECORE_PUT_FILE_DATA, align 4
  %18 = call i32 @qlnx_write_nvram(%struct.TYPE_17__* %15, %struct.TYPE_16__* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  br label %71

19:                                               ; preds = %2
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %22 = call i32 @qlnx_read_nvram(%struct.TYPE_17__* %20, %struct.TYPE_16__* %21)
  store i32 %22, i32* %5, align 4
  br label %71

23:                                               ; preds = %2
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ecore_mcp_nvm_set_secure_mode(%struct.TYPE_15__* %25, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @QL_DPRINT9(%struct.TYPE_17__* %30, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  br label %71

37:                                               ; preds = %2
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ecore_mcp_nvm_del_file(%struct.TYPE_15__* %39, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @QL_DPRINT9(%struct.TYPE_17__* %44, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %49)
  br label %71

51:                                               ; preds = %2
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ecore_mcp_nvm_put_file_begin(%struct.TYPE_15__* %53, i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @QL_DPRINT9(%struct.TYPE_17__* %58, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %62, i32 %63)
  br label %71

65:                                               ; preds = %2
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %68 = call i32 @qlnx_get_nvram_resp(%struct.TYPE_17__* %66, %struct.TYPE_16__* %67)
  store i32 %68, i32* %5, align 4
  br label %71

69:                                               ; preds = %2
  %70 = load i32, i32* @EINVAL, align 4
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %69, %65, %51, %37, %23, %19, %14, %9
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @qlnx_write_nvram(%struct.TYPE_17__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @qlnx_read_nvram(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @ecore_mcp_nvm_set_secure_mode(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @QL_DPRINT9(%struct.TYPE_17__*, i8*, i32, i32) #1

declare dso_local i32 @ecore_mcp_nvm_del_file(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ecore_mcp_nvm_put_file_begin(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @qlnx_get_nvram_resp(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
