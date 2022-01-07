; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_br.c_vmbus_txbr_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_br.c_vmbus_txbr_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_txbr = type { i64, i32 }
%struct.iovec = type { i64, i32* }

@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmbus_txbr_write(%struct.vmbus_txbr* %0, %struct.iovec* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmbus_txbr*, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.vmbus_txbr* %0, %struct.vmbus_txbr** %6, align 8
  store %struct.iovec* %1, %struct.iovec** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %28, %4
  %16 = load i32, i32* %14, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load %struct.iovec*, %struct.iovec** %7, align 8
  %21 = load i32, i32* %14, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.iovec, %struct.iovec* %20, i64 %22
  %24 = getelementptr inbounds %struct.iovec, %struct.iovec* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %12, align 8
  %27 = add nsw i64 %26, %25
  store i64 %27, i64* %12, align 8
  br label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %14, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %14, align 4
  br label %15

31:                                               ; preds = %15
  %32 = load i64, i64* %12, align 8
  %33 = add i64 %32, 4
  store i64 %33, i64* %12, align 8
  %34 = load %struct.vmbus_txbr*, %struct.vmbus_txbr** %6, align 8
  %35 = getelementptr inbounds %struct.vmbus_txbr, %struct.vmbus_txbr* %34, i32 0, i32 1
  %36 = call i32 @mtx_lock_spin(i32* %35)
  %37 = load %struct.vmbus_txbr*, %struct.vmbus_txbr** %6, align 8
  %38 = call i64 @vmbus_txbr_avail(%struct.vmbus_txbr* %37)
  %39 = load i64, i64* %12, align 8
  %40 = icmp sle i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %31
  %42 = load %struct.vmbus_txbr*, %struct.vmbus_txbr** %6, align 8
  %43 = getelementptr inbounds %struct.vmbus_txbr, %struct.vmbus_txbr* %42, i32 0, i32 1
  %44 = call i32 @mtx_unlock_spin(i32* %43)
  %45 = load i32, i32* @EAGAIN, align 4
  store i32 %45, i32* %5, align 4
  br label %93

46:                                               ; preds = %31
  %47 = load %struct.vmbus_txbr*, %struct.vmbus_txbr** %6, align 8
  %48 = getelementptr inbounds %struct.vmbus_txbr, %struct.vmbus_txbr* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %10, align 8
  %50 = load i64, i64* %10, align 8
  store i64 %50, i64* %11, align 8
  store i32 0, i32* %14, align 4
  br label %51

51:                                               ; preds = %72, %46
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %51
  %56 = load %struct.vmbus_txbr*, %struct.vmbus_txbr** %6, align 8
  %57 = load i64, i64* %11, align 8
  %58 = load %struct.iovec*, %struct.iovec** %7, align 8
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.iovec, %struct.iovec* %58, i64 %60
  %62 = getelementptr inbounds %struct.iovec, %struct.iovec* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.iovec*, %struct.iovec** %7, align 8
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.iovec, %struct.iovec* %64, i64 %66
  %68 = getelementptr inbounds %struct.iovec, %struct.iovec* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i64 @vmbus_txbr_copyto(%struct.vmbus_txbr* %56, i64 %57, i32* %63, i32 %70)
  store i64 %71, i64* %11, align 8
  br label %72

72:                                               ; preds = %55
  %73 = load i32, i32* %14, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %14, align 4
  br label %51

75:                                               ; preds = %51
  %76 = load i64, i64* %10, align 8
  %77 = trunc i64 %76 to i32
  %78 = shl i32 %77, 32
  store i32 %78, i32* %13, align 4
  %79 = load %struct.vmbus_txbr*, %struct.vmbus_txbr** %6, align 8
  %80 = load i64, i64* %11, align 8
  %81 = call i64 @vmbus_txbr_copyto(%struct.vmbus_txbr* %79, i64 %80, i32* %13, i32 4)
  store i64 %81, i64* %11, align 8
  %82 = call i32 (...) @__compiler_membar()
  %83 = load i64, i64* %11, align 8
  %84 = load %struct.vmbus_txbr*, %struct.vmbus_txbr** %6, align 8
  %85 = getelementptr inbounds %struct.vmbus_txbr, %struct.vmbus_txbr* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load %struct.vmbus_txbr*, %struct.vmbus_txbr** %6, align 8
  %87 = getelementptr inbounds %struct.vmbus_txbr, %struct.vmbus_txbr* %86, i32 0, i32 1
  %88 = call i32 @mtx_unlock_spin(i32* %87)
  %89 = load %struct.vmbus_txbr*, %struct.vmbus_txbr** %6, align 8
  %90 = load i64, i64* %10, align 8
  %91 = call i32 @vmbus_txbr_need_signal(%struct.vmbus_txbr* %89, i64 %90)
  %92 = load i32*, i32** %9, align 8
  store i32 %91, i32* %92, align 4
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %75, %41
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i64 @vmbus_txbr_avail(%struct.vmbus_txbr*) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i64 @vmbus_txbr_copyto(%struct.vmbus_txbr*, i64, i32*, i32) #1

declare dso_local i32 @__compiler_membar(...) #1

declare dso_local i32 @vmbus_txbr_need_signal(%struct.vmbus_txbr*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
