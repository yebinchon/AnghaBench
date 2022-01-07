; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_cdev.c_evdev_client_filter_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_cdev.c_evdev_client_filter_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdev_client = type { i64, i64, i64, i64, %struct.input_event* }
%struct.input_event = type { i64, i64 }

@EV_SYN = common dso_local global i64 0, align 8
@SYN_REPORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evdev_client*, i64)* @evdev_client_filter_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evdev_client_filter_queue(%struct.evdev_client* %0, i64 %1) #0 {
  %3 = alloca %struct.evdev_client*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.input_event*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.evdev_client* %0, %struct.evdev_client** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %12 = call i32 @EVDEV_CLIENT_LOCKQ(%struct.evdev_client* %11)
  %13 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %14 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %6, align 8
  store i64 %15, i64* %9, align 8
  %16 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %17 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %7, align 8
  %19 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %20 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  %22 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %23 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %26 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %25, i32 0, i32 3
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %92, %64, %48, %2
  %28 = load i64, i64* %9, align 8
  %29 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %30 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %99

33:                                               ; preds = %27
  %34 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %35 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %34, i32 0, i32 4
  %36 = load %struct.input_event*, %struct.input_event** %35, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds %struct.input_event, %struct.input_event* %36, i64 %37
  store %struct.input_event* %38, %struct.input_event** %5, align 8
  %39 = load i64, i64* %9, align 8
  %40 = add i64 %39, 1
  %41 = load i64, i64* %8, align 8
  %42 = urem i64 %40, %41
  store i64 %42, i64* %9, align 8
  %43 = load %struct.input_event*, %struct.input_event** %5, align 8
  %44 = getelementptr inbounds %struct.input_event, %struct.input_event* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %4, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %33
  br label %27

49:                                               ; preds = %33
  %50 = load %struct.input_event*, %struct.input_event** %5, align 8
  %51 = getelementptr inbounds %struct.input_event, %struct.input_event* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @EV_SYN, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %49
  %56 = load %struct.input_event*, %struct.input_event** %5, align 8
  %57 = getelementptr inbounds %struct.input_event, %struct.input_event* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @SYN_REPORT, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %55
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %27

65:                                               ; preds = %61
  %66 = load i64, i64* %7, align 8
  %67 = add i64 %66, 1
  %68 = load i64, i64* %8, align 8
  %69 = urem i64 %67, %68
  %70 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %71 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %70, i32 0, i32 3
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %72, %55, %49
  %74 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %75 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %74, i32 0, i32 4
  %76 = load %struct.input_event*, %struct.input_event** %75, align 8
  %77 = load i64, i64* %7, align 8
  %78 = getelementptr inbounds %struct.input_event, %struct.input_event* %76, i64 %77
  %79 = load %struct.input_event*, %struct.input_event** %5, align 8
  %80 = call i32 @memcpy(%struct.input_event* %78, %struct.input_event* %79, i32 16)
  %81 = load %struct.input_event*, %struct.input_event** %5, align 8
  %82 = getelementptr inbounds %struct.input_event, %struct.input_event* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @EV_SYN, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %73
  %87 = load %struct.input_event*, %struct.input_event** %5, align 8
  %88 = getelementptr inbounds %struct.input_event, %struct.input_event* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @SYN_REPORT, align 8
  %91 = icmp eq i64 %89, %90
  br label %92

92:                                               ; preds = %86, %73
  %93 = phi i1 [ false, %73 ], [ %91, %86 ]
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %10, align 4
  %95 = load i64, i64* %7, align 8
  %96 = add i64 %95, 1
  %97 = load i64, i64* %8, align 8
  %98 = urem i64 %96, %97
  store i64 %98, i64* %7, align 8
  br label %27

99:                                               ; preds = %27
  %100 = load i64, i64* %9, align 8
  %101 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %102 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  %103 = load i64, i64* %7, align 8
  %104 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %105 = getelementptr inbounds %struct.evdev_client, %struct.evdev_client* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  %106 = load %struct.evdev_client*, %struct.evdev_client** %3, align 8
  %107 = call i32 @EVDEV_CLIENT_UNLOCKQ(%struct.evdev_client* %106)
  ret void
}

declare dso_local i32 @EVDEV_CLIENT_LOCKQ(%struct.evdev_client*) #1

declare dso_local i32 @memcpy(%struct.input_event*, %struct.input_event*, i32) #1

declare dso_local i32 @EVDEV_CLIENT_UNLOCKQ(%struct.evdev_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
