; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_br.c_vmbus_rxbr_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_br.c_vmbus_rxbr_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_rxbr = type { i64, i64, i32 }

@.str = private unnamed_addr constant [27 x i8] c"invalid dlen %d, offset %u\00", align 1
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmbus_rxbr_read(%struct.vmbus_rxbr* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmbus_rxbr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.vmbus_rxbr* %0, %struct.vmbus_rxbr** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load %struct.vmbus_rxbr*, %struct.vmbus_rxbr** %6, align 8
  %13 = getelementptr inbounds %struct.vmbus_rxbr, %struct.vmbus_rxbr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %11, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* %9, align 8
  %18 = add nsw i64 %16, %17
  %19 = icmp sgt i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %8, align 4
  %22 = load i64, i64* %9, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @KASSERT(i32 %20, i8* %23)
  %25 = load %struct.vmbus_rxbr*, %struct.vmbus_rxbr** %6, align 8
  %26 = getelementptr inbounds %struct.vmbus_rxbr, %struct.vmbus_rxbr* %25, i32 0, i32 2
  %27 = call i32 @mtx_lock_spin(i32* %26)
  %28 = load %struct.vmbus_rxbr*, %struct.vmbus_rxbr** %6, align 8
  %29 = call i64 @vmbus_rxbr_avail(%struct.vmbus_rxbr* %28)
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %9, align 8
  %33 = add nsw i64 %31, %32
  %34 = add i64 %33, 4
  %35 = icmp ult i64 %29, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %4
  %37 = load %struct.vmbus_rxbr*, %struct.vmbus_rxbr** %6, align 8
  %38 = getelementptr inbounds %struct.vmbus_rxbr, %struct.vmbus_rxbr* %37, i32 0, i32 2
  %39 = call i32 @mtx_unlock_spin(i32* %38)
  %40 = load i32, i32* @EAGAIN, align 4
  store i32 %40, i32* %5, align 4
  br label %64

41:                                               ; preds = %4
  %42 = load %struct.vmbus_rxbr*, %struct.vmbus_rxbr** %6, align 8
  %43 = getelementptr inbounds %struct.vmbus_rxbr, %struct.vmbus_rxbr* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %9, align 8
  %46 = trunc i64 %45 to i32
  %47 = load i64, i64* %11, align 8
  %48 = call i64 @VMBUS_BR_IDXINC(i64 %44, i32 %46, i64 %47)
  store i64 %48, i64* %10, align 8
  %49 = load %struct.vmbus_rxbr*, %struct.vmbus_rxbr** %6, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i64 @vmbus_rxbr_copyfrom(%struct.vmbus_rxbr* %49, i64 %50, i8* %51, i32 %52)
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* %11, align 8
  %56 = call i64 @VMBUS_BR_IDXINC(i64 %54, i32 4, i64 %55)
  store i64 %56, i64* %10, align 8
  %57 = call i32 (...) @__compiler_membar()
  %58 = load i64, i64* %10, align 8
  %59 = load %struct.vmbus_rxbr*, %struct.vmbus_rxbr** %6, align 8
  %60 = getelementptr inbounds %struct.vmbus_rxbr, %struct.vmbus_rxbr* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.vmbus_rxbr*, %struct.vmbus_rxbr** %6, align 8
  %62 = getelementptr inbounds %struct.vmbus_rxbr, %struct.vmbus_rxbr* %61, i32 0, i32 2
  %63 = call i32 @mtx_unlock_spin(i32* %62)
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %41, %36
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i64 @vmbus_rxbr_avail(%struct.vmbus_rxbr*) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i64 @VMBUS_BR_IDXINC(i64, i32, i64) #1

declare dso_local i64 @vmbus_rxbr_copyfrom(%struct.vmbus_rxbr*, i64, i8*, i32) #1

declare dso_local i32 @__compiler_membar(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
