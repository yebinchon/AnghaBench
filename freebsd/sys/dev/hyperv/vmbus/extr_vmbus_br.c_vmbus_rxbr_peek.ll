; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_br.c_vmbus_rxbr_peek.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_br.c_vmbus_rxbr_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_rxbr = type { i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmbus_rxbr_peek(%struct.vmbus_rxbr* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmbus_rxbr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.vmbus_rxbr* %0, %struct.vmbus_rxbr** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.vmbus_rxbr*, %struct.vmbus_rxbr** %5, align 8
  %9 = getelementptr inbounds %struct.vmbus_rxbr, %struct.vmbus_rxbr* %8, i32 0, i32 0
  %10 = call i32 @mtx_lock_spin(i32* %9)
  %11 = load %struct.vmbus_rxbr*, %struct.vmbus_rxbr** %5, align 8
  %12 = call i32 @vmbus_rxbr_avail(%struct.vmbus_rxbr* %11)
  %13 = sext i32 %12 to i64
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = add i64 %15, 4
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.vmbus_rxbr*, %struct.vmbus_rxbr** %5, align 8
  %20 = getelementptr inbounds %struct.vmbus_rxbr, %struct.vmbus_rxbr* %19, i32 0, i32 0
  %21 = call i32 @mtx_unlock_spin(i32* %20)
  %22 = load i32, i32* @EAGAIN, align 4
  store i32 %22, i32* %4, align 4
  br label %34

23:                                               ; preds = %3
  %24 = load %struct.vmbus_rxbr*, %struct.vmbus_rxbr** %5, align 8
  %25 = load %struct.vmbus_rxbr*, %struct.vmbus_rxbr** %5, align 8
  %26 = getelementptr inbounds %struct.vmbus_rxbr, %struct.vmbus_rxbr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @vmbus_rxbr_copyfrom(%struct.vmbus_rxbr* %24, i32 %27, i8* %28, i32 %29)
  %31 = load %struct.vmbus_rxbr*, %struct.vmbus_rxbr** %5, align 8
  %32 = getelementptr inbounds %struct.vmbus_rxbr, %struct.vmbus_rxbr* %31, i32 0, i32 0
  %33 = call i32 @mtx_unlock_spin(i32* %32)
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %23, %18
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @vmbus_rxbr_avail(%struct.vmbus_rxbr*) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @vmbus_rxbr_copyfrom(%struct.vmbus_rxbr*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
