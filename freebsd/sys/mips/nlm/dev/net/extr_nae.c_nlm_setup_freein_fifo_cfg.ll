; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_nae.c_nlm_setup_freein_fifo_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_nae.c_nlm_setup_freein_fifo_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nae_port_config = type { i32 }

@MAX_FREE_FIFO_POOL_8XX = common dso_local global i32 0, align 4
@MAX_FREE_FIFO_POOL_3XX = common dso_local global i32 0, align 4
@NAE_FREE_IN_FIFO_CFG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nlm_setup_freein_fifo_cfg(i32 %0, %struct.nae_port_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nae_port_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.nae_port_config* %1, %struct.nae_port_config** %4, align 8
  store i32 0, i32* %8, align 4
  %10 = call i64 (...) @nlm_is_xlp8xx()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @MAX_FREE_FIFO_POOL_8XX, align 4
  store i32 %13, i32* %9, align 4
  br label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @MAX_FREE_FIFO_POOL_3XX, align 4
  store i32 %15, i32* %9, align 4
  br label %16

16:                                               ; preds = %14, %12
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %50, %16
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %53

21:                                               ; preds = %17
  %22 = load %struct.nae_port_config*, %struct.nae_port_config** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %22, i64 %24
  %26 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %27, 2
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  store i32 8, i32* %5, align 4
  br label %32

32:                                               ; preds = %31, %21
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, 1023
  %35 = shl i32 %34, 20
  %36 = load i32, i32* %8, align 4
  %37 = and i32 %36, 511
  %38 = shl i32 %37, 8
  %39 = or i32 %35, %38
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, 31
  %42 = or i32 %39, %41
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @NAE_FREE_IN_FIFO_CFG, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @nlm_write_nae_reg(i32 %43, i32 %44, i32 %45)
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %32
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %17

53:                                               ; preds = %17
  ret void
}

declare dso_local i64 @nlm_is_xlp8xx(...) #1

declare dso_local i32 @nlm_write_nae_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
