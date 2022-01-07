; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_nae.c_nlm_setup_rx_cal_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_nae.c_nlm_setup_rx_cal_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nae_port_config = type { i64 }

@MAX_CAL_SLOTS = common dso_local global i32 0, align 4
@NAE_RX_IF_SLOT_CAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nlm_setup_rx_cal_cfg(i32 %0, i32 %1, %struct.nae_port_config* %2) #0 {
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
  store i32 0, i32* %7, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %43, %3
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %46

17:                                               ; preds = %13
  %18 = load %struct.nae_port_config*, %struct.nae_port_config** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %18, i64 %20
  %22 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %17
  %26 = load %struct.nae_port_config*, %struct.nae_port_config** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %26, i64 %28
  %30 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %25, %17
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @MAX_CAL_SLOTS, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @MAX_CAL_SLOTS, align 4
  store i32 %41, i32* %7, align 4
  br label %46

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %13

46:                                               ; preds = %40, %13
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %99, %46
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @MAX_CAL_SLOTS, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %100

54:                                               ; preds = %49
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %90, %54
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %93

60:                                               ; preds = %56
  %61 = load %struct.nae_port_config*, %struct.nae_port_config** %6, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %61, i64 %63
  %65 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %89

68:                                               ; preds = %60
  %69 = load i32, i32* %9, align 4
  %70 = shl i32 %69, 16
  %71 = load i32, i32* %8, align 4
  %72 = shl i32 %71, 8
  %73 = or i32 %70, %72
  %74 = load i32, i32* %10, align 4
  %75 = or i32 %73, %74
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @NAE_RX_IF_SLOT_CAL, align 4
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @nlm_write_nae_reg(i32 %76, i32 %77, i32 %78)
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  %82 = load %struct.nae_port_config*, %struct.nae_port_config** %6, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %82, i64 %84
  %86 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, -1
  store i64 %88, i64* %86, align 8
  br label %89

89:                                               ; preds = %68, %60
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %56

93:                                               ; preds = %56
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  br label %100

98:                                               ; preds = %93
  br label %99

99:                                               ; preds = %98
  br i1 true, label %49, label %100

100:                                              ; preds = %99, %97, %53
  ret void
}

declare dso_local i32 @nlm_write_nae_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
