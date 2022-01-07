; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_console.c_uart_opal_real_map_outbuffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_console.c_uart_opal_real_map_outbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32 }

@opalcons_buffer = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [10 x i8] c"uart_opal\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@MTX_QUIET = common dso_local global i32 0, align 4
@MTX_NOWITNESS = common dso_local global i32 0, align 4
@pmap_bootstrapped = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*)* @uart_opal_real_map_outbuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_opal_real_map_outbuffer(i64* %0, i64* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  store i64* %0, i64** %3, align 8
  store i64* %1, i64** %4, align 8
  %5 = call i32 @mtx_initialized(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opalcons_buffer, i32 0, i32 2))
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = load i32, i32* @MTX_SPIN, align 4
  %9 = load i32, i32* @MTX_QUIET, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @MTX_NOWITNESS, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @mtx_init(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opalcons_buffer, i32 0, i32 2), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null, i32 %12)
  br label %14

14:                                               ; preds = %7, %2
  %15 = load i32, i32* @pmap_bootstrapped, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  br label %40

18:                                               ; preds = %14
  %19 = call i32 @mtx_lock_spin(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opalcons_buffer, i32 0, i32 2))
  %20 = load i64*, i64** %4, align 8
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i64*
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @min(i32 8, i64 %23)
  %25 = load i64*, i64** %4, align 8
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i64*
  store i64 %24, i64* %27, align 8
  store i64 %24, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opalcons_buffer, i32 0, i32 0), align 8
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opalcons_buffer, i32 0, i32 1), align 8
  %29 = load i64*, i64** %3, align 8
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = load i64*, i64** %4, align 8
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i64*
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @memcpy(i64 %28, i8* %31, i64 %35)
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opalcons_buffer, i32 0, i32 1), align 8
  %38 = load i64*, i64** %3, align 8
  store i64 %37, i64* %38, align 8
  %39 = load i64*, i64** %4, align 8
  store i64 ptrtoint (%struct.TYPE_2__* @opalcons_buffer to i64), i64* %39, align 8
  br label %40

40:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @mtx_initialized(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
