; ModuleID = '/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_ktls_ocf.c_ktls_ocf_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/opencrypto/extr_ktls_ocf.c_ktls_ocf_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptop = type { %struct.ocf_operation* }
%struct.ocf_operation = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cryptop*)* @ktls_ocf_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ktls_ocf_callback(%struct.cryptop* %0) #0 {
  %2 = alloca %struct.cryptop*, align 8
  %3 = alloca %struct.ocf_operation*, align 8
  store %struct.cryptop* %0, %struct.cryptop** %2, align 8
  %4 = load %struct.cryptop*, %struct.cryptop** %2, align 8
  %5 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %4, i32 0, i32 0
  %6 = load %struct.ocf_operation*, %struct.ocf_operation** %5, align 8
  store %struct.ocf_operation* %6, %struct.ocf_operation** %3, align 8
  %7 = load %struct.ocf_operation*, %struct.ocf_operation** %3, align 8
  %8 = getelementptr inbounds %struct.ocf_operation, %struct.ocf_operation* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @mtx_lock(i32* %10)
  %12 = load %struct.ocf_operation*, %struct.ocf_operation** %3, align 8
  %13 = getelementptr inbounds %struct.ocf_operation, %struct.ocf_operation* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.ocf_operation*, %struct.ocf_operation** %3, align 8
  %15 = getelementptr inbounds %struct.ocf_operation, %struct.ocf_operation* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @mtx_unlock(i32* %17)
  %19 = load %struct.ocf_operation*, %struct.ocf_operation** %3, align 8
  %20 = call i32 @wakeup(%struct.ocf_operation* %19)
  ret i32 0
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @wakeup(%struct.ocf_operation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
