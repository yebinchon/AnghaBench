; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_crypto.c_kdriver_suitable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_crypto.c_kdriver_suitable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptocap = type { i32* }
%struct.cryptkop = type { i64 }

@CRYPTO_ALG_FLAG_SUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cryptocap*, %struct.cryptkop*)* @kdriver_suitable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kdriver_suitable(%struct.cryptocap* %0, %struct.cryptkop* %1) #0 {
  %3 = alloca %struct.cryptocap*, align 8
  %4 = alloca %struct.cryptkop*, align 8
  store %struct.cryptocap* %0, %struct.cryptocap** %3, align 8
  store %struct.cryptkop* %1, %struct.cryptkop** %4, align 8
  %5 = load %struct.cryptocap*, %struct.cryptocap** %3, align 8
  %6 = getelementptr inbounds %struct.cryptocap, %struct.cryptocap* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load %struct.cryptkop*, %struct.cryptkop** %4, align 8
  %9 = getelementptr inbounds %struct.cryptkop, %struct.cryptkop* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds i32, i32* %7, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @CRYPTO_ALG_FLAG_SUPPORTED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i32
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
