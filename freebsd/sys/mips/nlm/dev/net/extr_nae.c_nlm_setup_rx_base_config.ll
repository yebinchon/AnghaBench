; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_nae.c_nlm_setup_rx_base_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_nae.c_nlm_setup_rx_base_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nae_port_config = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nlm_setup_rx_base_config(i32 %0, i32 %1, %struct.nae_port_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.nae_port_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.nae_port_config* %2, %struct.nae_port_config** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %54, %3
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %5, align 4
  %14 = sdiv i32 %13, 2
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %57

16:                                               ; preds = %11
  %17 = load i32, i32* %9, align 4
  %18 = add nsw i32 18, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, 1023
  store i32 %20, i32* %8, align 4
  %21 = load %struct.nae_port_config*, %struct.nae_port_config** %6, align 8
  %22 = load i32, i32* %9, align 4
  %23 = mul nsw i32 %22, 2
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %21, i64 %24
  %26 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, 1023
  %34 = shl i32 %33, 16
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %8, align 4
  %37 = load %struct.nae_port_config*, %struct.nae_port_config** %6, align 8
  %38 = load i32, i32* %9, align 4
  %39 = mul nsw i32 %38, 2
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %37, i64 %41
  %43 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @NAE_REG(i32 7, i32 0, i32 %50)
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @nlm_write_nae_reg(i32 %49, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %16
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %11

57:                                               ; preds = %11
  ret void
}

declare dso_local i32 @nlm_write_nae_reg(i32, i32, i32) #1

declare dso_local i32 @NAE_REG(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
