; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_reset_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_reset_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, i32 }

@ENA_FLAG_TRIGGER_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"device reset scheduled but trigger_reset is off\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @ena_reset_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_reset_task(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ena_adapter*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.ena_adapter*
  store %struct.ena_adapter* %7, %struct.ena_adapter** %5, align 8
  %8 = load i32, i32* @ENA_FLAG_TRIGGER_RESET, align 4
  %9 = load %struct.ena_adapter*, %struct.ena_adapter** %5, align 8
  %10 = call i32 @ENA_FLAG_ISSET(i32 %8, %struct.ena_adapter* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.ena_adapter*, %struct.ena_adapter** %5, align 8
  %18 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @device_printf(i32 %19, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %32

21:                                               ; preds = %2
  %22 = load %struct.ena_adapter*, %struct.ena_adapter** %5, align 8
  %23 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %22, i32 0, i32 0
  %24 = call i32 @sx_xlock(i32* %23)
  %25 = load %struct.ena_adapter*, %struct.ena_adapter** %5, align 8
  %26 = call i32 @ena_destroy_device(%struct.ena_adapter* %25, i32 0)
  %27 = load %struct.ena_adapter*, %struct.ena_adapter** %5, align 8
  %28 = call i32 @ena_restore_device(%struct.ena_adapter* %27)
  %29 = load %struct.ena_adapter*, %struct.ena_adapter** %5, align 8
  %30 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %29, i32 0, i32 0
  %31 = call i32 @sx_unlock(i32* %30)
  br label %32

32:                                               ; preds = %21, %16
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ENA_FLAG_ISSET(i32, %struct.ena_adapter*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @ena_destroy_device(%struct.ena_adapter*, i32) #1

declare dso_local i32 @ena_restore_device(%struct.ena_adapter*) #1

declare dso_local i32 @sx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
