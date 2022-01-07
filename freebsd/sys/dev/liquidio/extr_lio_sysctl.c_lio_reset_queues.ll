; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_sysctl.c_lio_reset_queues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_sysctl.c_lio_reset_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.lio = type { %struct.octeon_device* }
%struct.octeon_device = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 (%struct.octeon_device.0*)*, i32 (%struct.octeon_device.1*)* }
%struct.octeon_device.0 = type opaque
%struct.octeon_device.1 = type opaque
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"There were pending requests\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"IQ had pending instructions\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to configure device registers\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"IO queues initialization failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i64)* @lio_reset_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_reset_queues(%struct.ifnet* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.lio*, align 8
  %7 = alloca %struct.octeon_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %11 = call %struct.lio* @if_getsoftc(%struct.ifnet* %10)
  store %struct.lio* %11, %struct.lio** %6, align 8
  %12 = load %struct.lio*, %struct.lio** %6, align 8
  %13 = getelementptr inbounds %struct.lio, %struct.lio* %12, i32 0, i32 0
  %14 = load %struct.octeon_device*, %struct.octeon_device** %13, align 8
  store %struct.octeon_device* %14, %struct.octeon_device** %7, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %16 = call i64 @lio_wait_for_pending_requests(%struct.octeon_device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %20 = call i32 @lio_dev_err(%struct.octeon_device* %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %2
  %22 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %23 = call i64 @lio_wait_for_instr_fetch(%struct.octeon_device* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %27 = call i32 @lio_dev_err(%struct.octeon_device* %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %21
  %29 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %30 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32 (%struct.octeon_device.1*)*, i32 (%struct.octeon_device.1*)** %31, align 8
  %33 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %34 = bitcast %struct.octeon_device* %33 to %struct.octeon_device.1*
  %35 = call i32 %32(%struct.octeon_device.1* %34)
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %38 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  store i32 1, i32* %9, align 4
  br label %42

42:                                               ; preds = %41, %28
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %62, %42
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %46 = call i32 @LIO_MAX_OUTPUT_QUEUES(%struct.octeon_device* %45)
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %65

48:                                               ; preds = %43
  %49 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %50 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @BIT_ULL(i32 %53)
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %48
  br label %62

58:                                               ; preds = %48
  %59 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @lio_delete_droq(%struct.octeon_device* %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %57
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %43

65:                                               ; preds = %43
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %85, %65
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %69 = call i32 @LIO_MAX_INSTR_QUEUES(%struct.octeon_device* %68)
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %88

71:                                               ; preds = %66
  %72 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %73 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @BIT_ULL(i32 %76)
  %78 = and i32 %75, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %71
  br label %85

81:                                               ; preds = %71
  %82 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @lio_delete_instr_queue(%struct.octeon_device* %82, i32 %83)
  br label %85

85:                                               ; preds = %81, %80
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %66

88:                                               ; preds = %66
  %89 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %90 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64 (%struct.octeon_device.0*)*, i64 (%struct.octeon_device.0*)** %91, align 8
  %93 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %94 = bitcast %struct.octeon_device* %93 to %struct.octeon_device.0*
  %95 = call i64 %92(%struct.octeon_device.0* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %88
  %98 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %99 = call i32 @lio_dev_err(%struct.octeon_device* %98, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %119

100:                                              ; preds = %88
  %101 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %102 = load i64, i64* %5, align 8
  %103 = load i64, i64* %5, align 8
  %104 = call i64 @lio_setup_io_queues(%struct.octeon_device* %101, i32 0, i64 %102, i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %108 = call i32 @lio_dev_err(%struct.octeon_device* %107, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %119

109:                                              ; preds = %100
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %114 = load i64, i64* %5, align 8
  %115 = call i64 @lio_send_queue_count_update(%struct.ifnet* %113, i64 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  store i32 -1, i32* %3, align 4
  br label %119

118:                                              ; preds = %112, %109
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %118, %117, %106, %97
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local %struct.lio* @if_getsoftc(%struct.ifnet*) #1

declare dso_local i64 @lio_wait_for_pending_requests(%struct.octeon_device*) #1

declare dso_local i32 @lio_dev_err(%struct.octeon_device*, i8*) #1

declare dso_local i64 @lio_wait_for_instr_fetch(%struct.octeon_device*) #1

declare dso_local i32 @LIO_MAX_OUTPUT_QUEUES(%struct.octeon_device*) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @lio_delete_droq(%struct.octeon_device*, i32) #1

declare dso_local i32 @LIO_MAX_INSTR_QUEUES(%struct.octeon_device*) #1

declare dso_local i32 @lio_delete_instr_queue(%struct.octeon_device*, i32) #1

declare dso_local i64 @lio_setup_io_queues(%struct.octeon_device*, i32, i64, i64) #1

declare dso_local i64 @lio_send_queue_count_update(%struct.ifnet*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
