; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_nae.c_nlm_setup_rx_buf_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_nae.c_nlm_setup_rx_buf_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nae_port_config = type { i64, i32, i32 }

@UNKNOWN = common dso_local global i64 0, align 8
@NAE_RXBUF_BASE_DPTH_ADDR = common dso_local global i32 0, align 4
@NAE_RXBUF_BASE_DPTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nlm_setup_rx_buf_config(i32 %0, i32 %1, %struct.nae_port_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.nae_port_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.nae_port_config* %2, %struct.nae_port_config** %6, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %84, %3
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %87

17:                                               ; preds = %13
  %18 = load %struct.nae_port_config*, %struct.nae_port_config** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %18, i64 %20
  %22 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @UNKNOWN, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %84

27:                                               ; preds = %17
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %72, %27
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.nae_port_config*, %struct.nae_port_config** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %30, i64 %32
  %34 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %29, %35
  br i1 %36, label %37, label %75

37:                                               ; preds = %28
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @NAE_RXBUF_BASE_DPTH_ADDR, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %40, %41
  %43 = call i32 @nlm_write_nae_reg(i32 %38, i32 %39, i32 %42)
  %44 = load %struct.nae_port_config*, %struct.nae_port_config** %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %44, i64 %46
  %48 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %12, align 4
  %51 = shl i32 %50, 2
  %52 = and i32 %51, 16383
  %53 = or i32 -2147483648, %52
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %9, align 4
  %55 = shl i32 %54, 2
  %56 = and i32 %55, 16383
  %57 = shl i32 %56, 16
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @NAE_RXBUF_BASE_DPTH, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @nlm_write_nae_reg(i32 %60, i32 %61, i32 %62)
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @NAE_RXBUF_BASE_DPTH, align 4
  %66 = load i32, i32* %7, align 4
  %67 = and i32 2147483647, %66
  %68 = call i32 @nlm_write_nae_reg(i32 %64, i32 %65, i32 %67)
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %37
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %28

75:                                               ; preds = %28
  %76 = load %struct.nae_port_config*, %struct.nae_port_config** %6, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %76, i64 %78
  %80 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %11, align 4
  br label %84

84:                                               ; preds = %75, %26
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %13

87:                                               ; preds = %13
  ret void
}

declare dso_local i32 @nlm_write_nae_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
