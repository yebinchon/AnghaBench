; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cyapa/extr_cyapa.c_init_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cyapa/extr_cyapa.c_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa_cap = type { i32 }
%struct.cyapa_boot_regs = type { i32, i32, i32 }

@init_device.bl_exit = internal global [11 x i8] c"\00\FF\A5\00\01\02\03\04\05\06\07", align 1
@init_device.bl_deactivate = internal global [11 x i8] c"\00\FF;\00\01\02\03\04\05\06\07", align 1
@CMD_BOOT_STATUS = common dso_local global i32 0, align 4
@CYAPA_STAT_RUNNING = common dso_local global i32 0, align 4
@CYAPA_BOOT_BUSY = common dso_local global i32 0, align 4
@CYAPA_ERROR_BOOTLOADER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"cyapab1\00", align 1
@hz = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Unable to bring device out of bootstrap\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@CMD_QUERY_CAPABILITIES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"CYTRA\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Product ID \22%5.5s\22 mismatch\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"cyapa init status %02x\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"cyapa reset status %02x\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Unable to initialize\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cyapa_cap*, i32)* @init_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_device(i32 %0, %struct.cyapa_cap* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cyapa_cap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cyapa_boot_regs, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.cyapa_cap* %1, %struct.cyapa_cap** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @CMD_BOOT_STATUS, align 4
  %12 = bitcast %struct.cyapa_boot_regs* %7 to i8*
  %13 = call i32 @cyapa_read_bytes(i32 %10, i32 %11, i8* %12, i32 12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %125

17:                                               ; preds = %3
  store i32 20, i32* %9, align 4
  br label %18

18:                                               ; preds = %73, %17
  %19 = getelementptr inbounds %struct.cyapa_boot_regs, %struct.cyapa_boot_regs* %7, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CYAPA_STAT_RUNNING, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* %9, align 4
  %26 = icmp sgt i32 %25, 0
  br label %27

27:                                               ; preds = %24, %18
  %28 = phi i1 [ false, %18 ], [ %26, %24 ]
  br i1 %28, label %29, label %74

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.cyapa_boot_regs, %struct.cyapa_boot_regs* %7, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CYAPA_BOOT_BUSY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %59

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.cyapa_boot_regs, %struct.cyapa_boot_regs* %7, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CYAPA_ERROR_BOOTLOADER, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @CMD_BOOT_STATUS, align 4
  %45 = call i32 @cyapa_write_bytes(i32 %43, i32 %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @init_device.bl_deactivate, i64 0, i64 0), i32 11)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %125

49:                                               ; preds = %42
  br label %58

50:                                               ; preds = %36
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @CMD_BOOT_STATUS, align 4
  %53 = call i32 @cyapa_write_bytes(i32 %51, i32 %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @init_device.bl_exit, i64 0, i64 0), i32 11)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %125

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %49
  br label %59

59:                                               ; preds = %58, %35
  %60 = load i32, i32* @hz, align 4
  %61 = mul nsw i32 %60, 2
  %62 = sdiv i32 %61, 10
  %63 = call i32 @pause(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @CMD_BOOT_STATUS, align 4
  %68 = bitcast %struct.cyapa_boot_regs* %7 to i8*
  %69 = call i32 @cyapa_read_bytes(i32 %66, i32 %67, i8* %68, i32 12)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %59
  br label %125

73:                                               ; preds = %59
  br label %18

74:                                               ; preds = %27
  %75 = load i32, i32* %9, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32, i32* %4, align 4
  %79 = call i32 (i32, i8*, ...) @device_printf(i32 %78, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %80 = load i32, i32* @ENXIO, align 4
  store i32 %80, i32* %8, align 4
  br label %125

81:                                               ; preds = %74
  %82 = load %struct.cyapa_cap*, %struct.cyapa_cap** %5, align 8
  %83 = icmp ne %struct.cyapa_cap* %82, null
  br i1 %83, label %84, label %103

84:                                               ; preds = %81
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @CMD_QUERY_CAPABILITIES, align 4
  %87 = load %struct.cyapa_cap*, %struct.cyapa_cap** %5, align 8
  %88 = bitcast %struct.cyapa_cap* %87 to i8*
  %89 = call i32 @cyapa_read_bytes(i32 %85, i32 %86, i8* %88, i32 4)
  store i32 %89, i32* %8, align 4
  %90 = load %struct.cyapa_cap*, %struct.cyapa_cap** %5, align 8
  %91 = getelementptr inbounds %struct.cyapa_cap, %struct.cyapa_cap* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @strncmp(i32 %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %84
  %96 = load i32, i32* %4, align 4
  %97 = load %struct.cyapa_cap*, %struct.cyapa_cap** %5, align 8
  %98 = getelementptr inbounds %struct.cyapa_cap, %struct.cyapa_cap* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i32, i8*, ...) @device_printf(i32 %96, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* @ENXIO, align 4
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %95, %84
  br label %103

103:                                              ; preds = %102, %81
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* @CMD_BOOT_STATUS, align 4
  %106 = bitcast %struct.cyapa_boot_regs* %7 to i8*
  %107 = call i32 @cyapa_read_bytes(i32 %104, i32 %105, i8* %106, i32 12)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %103
  %111 = load i32, i32* %4, align 4
  %112 = getelementptr inbounds %struct.cyapa_boot_regs, %struct.cyapa_boot_regs* %7, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i32, i8*, ...) @device_printf(i32 %111, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %113)
  br label %124

115:                                              ; preds = %103
  %116 = load i32, i32* %6, align 4
  %117 = icmp eq i32 %116, 2
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load i32, i32* %4, align 4
  %120 = getelementptr inbounds %struct.cyapa_boot_regs, %struct.cyapa_boot_regs* %7, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i32, i8*, ...) @device_printf(i32 %119, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %118, %115
  br label %124

124:                                              ; preds = %123, %110
  br label %125

125:                                              ; preds = %124, %77, %72, %56, %48, %16
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i32, i32* %4, align 4
  %130 = call i32 (i32, i8*, ...) @device_printf(i32 %129, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %131

131:                                              ; preds = %128, %125
  %132 = load i32, i32* %8, align 4
  ret i32 %132
}

declare dso_local i32 @cyapa_read_bytes(i32, i32, i8*, i32) #1

declare dso_local i32 @cyapa_write_bytes(i32, i32, i8*, i32) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
