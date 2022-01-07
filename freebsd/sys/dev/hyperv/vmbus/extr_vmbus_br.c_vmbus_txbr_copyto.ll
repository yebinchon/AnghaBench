; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_br.c_vmbus_txbr_copyto.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_br.c_vmbus_txbr_copyto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_txbr = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vmbus_txbr*, i64, i8*, i64)* @vmbus_txbr_copyto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vmbus_txbr_copyto(%struct.vmbus_txbr* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.vmbus_txbr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.vmbus_txbr* %0, %struct.vmbus_txbr** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %9, align 8
  %15 = load %struct.vmbus_txbr*, %struct.vmbus_txbr** %5, align 8
  %16 = getelementptr inbounds %struct.vmbus_txbr, %struct.vmbus_txbr* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %10, align 8
  %18 = load %struct.vmbus_txbr*, %struct.vmbus_txbr** %5, align 8
  %19 = getelementptr inbounds %struct.vmbus_txbr, %struct.vmbus_txbr* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* %6, align 8
  %24 = sub nsw i64 %22, %23
  %25 = icmp sgt i64 %21, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %4
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* %6, align 8
  %29 = sub nsw i64 %27, %28
  store i64 %29, i64* %12, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32*, i32** %9, align 8
  %34 = load i64, i64* %12, align 8
  %35 = call i32 @memcpy(i32* %32, i32* %33, i64 %34)
  %36 = load i32*, i32** %10, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load i64, i64* %12, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %12, align 8
  %42 = sub nsw i64 %40, %41
  %43 = call i32 @memcpy(i32* %36, i32* %39, i64 %42)
  br label %51

44:                                               ; preds = %4
  %45 = load i32*, i32** %10, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32*, i32** %9, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @memcpy(i32* %47, i32* %48, i64 %49)
  br label %51

51:                                               ; preds = %44, %26
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %11, align 8
  %55 = call i64 @VMBUS_BR_IDXINC(i64 %52, i64 %53, i64 %54)
  ret i64 %55
}

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i64 @VMBUS_BR_IDXINC(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
