; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_crypto.c_crypto_task_invoke.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_crypto.c_crypto_task_invoke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptocap = type { i32 }
%struct.cryptop = type { i32 }

@ERESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @crypto_task_invoke to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto_task_invoke(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cryptocap*, align 8
  %6 = alloca %struct.cryptop*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.cryptop*
  store %struct.cryptop* %10, %struct.cryptop** %6, align 8
  %11 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %12 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @crypto_ses2hid(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.cryptocap* @crypto_checkdriver(i32 %15)
  store %struct.cryptocap* %16, %struct.cryptocap** %5, align 8
  %17 = load %struct.cryptocap*, %struct.cryptocap** %5, align 8
  %18 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %19 = call i32 @crypto_invoke(%struct.cryptocap* %17, %struct.cryptop* %18, i32 0)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @ERESTART, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.cryptop*, %struct.cryptop** %6, align 8
  %25 = call i32 @crypto_batch_enqueue(%struct.cryptop* %24)
  br label %26

26:                                               ; preds = %23, %2
  ret void
}

declare dso_local i32 @crypto_ses2hid(i32) #1

declare dso_local %struct.cryptocap* @crypto_checkdriver(i32) #1

declare dso_local i32 @crypto_invoke(%struct.cryptocap*, %struct.cryptop*, i32) #1

declare dso_local i32 @crypto_batch_enqueue(%struct.cryptop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
