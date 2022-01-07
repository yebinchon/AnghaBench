; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_hw.c_oce_hw_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_hw.c_oce_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Mailbox alloc failed\0A\00", align 1
@MAC_ADDRESS_TYPE_NETWORK = common dso_local global i32 0, align 4
@OCE_FLAGS_BE3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Hardware initialisation failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oce_hw_init(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %6 = call i32 @oce_POST(%struct.TYPE_15__* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %97

11:                                               ; preds = %1
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 2
  %15 = call i32 @oce_dma_alloc(%struct.TYPE_15__* %12, i32 4, i32* %14, i32 0)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %11
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %97

24:                                               ; preds = %11
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %26 = call i32 @oce_reset_fun(%struct.TYPE_15__* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %87

30:                                               ; preds = %24
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %32 = call i32 @oce_mbox_init(%struct.TYPE_15__* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %87

36:                                               ; preds = %30
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %38 = call i32 @oce_get_fw_version(%struct.TYPE_15__* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %87

42:                                               ; preds = %36
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %44 = call i32 @oce_get_fw_config(%struct.TYPE_15__* %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %87

48:                                               ; preds = %42
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  store i32 6, i32* %51, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %53 = load i32, i32* @MAC_ADDRESS_TYPE_NETWORK, align 4
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 4
  %56 = call i32 @oce_read_mac_addr(%struct.TYPE_15__* %52, i32 0, i32 1, i32 %53, %struct.TYPE_16__* %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  br label %87

60:                                               ; preds = %48
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %62 = call i64 @IS_BE(%struct.TYPE_15__* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @OCE_FLAGS_BE3, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %64, %60
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %73 = call i64 @IS_SH(%struct.TYPE_15__* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %71, %64
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %77 = call i32 @oce_mbox_check_native_mode(%struct.TYPE_15__* %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %87

81:                                               ; preds = %75
  br label %85

82:                                               ; preds = %71
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 3
  store i64 0, i64* %84, align 8
  br label %85

85:                                               ; preds = %82, %81
  %86 = load i32, i32* %4, align 4
  store i32 %86, i32* %2, align 4
  br label %97

87:                                               ; preds = %80, %59, %47, %41, %35, %29
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 2
  %91 = call i32 @oce_dma_free(%struct.TYPE_15__* %88, i32* %90)
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @device_printf(i32 %94, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %96 = load i32, i32* %4, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %87, %85, %18, %9
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @oce_POST(%struct.TYPE_15__*) #1

declare dso_local i32 @oce_dma_alloc(%struct.TYPE_15__*, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @oce_reset_fun(%struct.TYPE_15__*) #1

declare dso_local i32 @oce_mbox_init(%struct.TYPE_15__*) #1

declare dso_local i32 @oce_get_fw_version(%struct.TYPE_15__*) #1

declare dso_local i32 @oce_get_fw_config(%struct.TYPE_15__*) #1

declare dso_local i32 @oce_read_mac_addr(%struct.TYPE_15__*, i32, i32, i32, %struct.TYPE_16__*) #1

declare dso_local i64 @IS_BE(%struct.TYPE_15__*) #1

declare dso_local i64 @IS_SH(%struct.TYPE_15__*) #1

declare dso_local i32 @oce_mbox_check_native_mode(%struct.TYPE_15__*) #1

declare dso_local i32 @oce_dma_free(%struct.TYPE_15__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
