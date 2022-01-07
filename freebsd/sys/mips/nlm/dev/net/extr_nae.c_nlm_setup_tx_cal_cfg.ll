; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_nae.c_nlm_setup_tx_cal_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_nae.c_nlm_setup_tx_cal_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nae_port_config = type { i64 }

@MAX_CAL_SLOTS = common dso_local global i32 0, align 4
@NAE_EGR_NIOR_CAL_LEN_REG = common dso_local global i32 0, align 4
@NAE_EGR_NIOR_CRDT_CAL_PROG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nlm_setup_tx_cal_cfg(i32 %0, i32 %1, %struct.nae_port_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.nae_port_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.nae_port_config* %2, %struct.nae_port_config** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %42, %3
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %45

16:                                               ; preds = %12
  %17 = load %struct.nae_port_config*, %struct.nae_port_config** %6, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %17, i64 %19
  %21 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %16
  %25 = load %struct.nae_port_config*, %struct.nae_port_config** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %25, i64 %27
  %29 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %24, %16
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @MAX_CAL_SLOTS, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @MAX_CAL_SLOTS, align 4
  store i32 %40, i32* %7, align 4
  br label %45

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %12

45:                                               ; preds = %39, %12
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @NAE_EGR_NIOR_CAL_LEN_REG, align 4
  %48 = load i32, i32* %7, align 4
  %49 = sub nsw i32 %48, 1
  %50 = call i32 @nlm_write_nae_reg(i32 %46, i32 %47, i32 %49)
  br label %51

51:                                               ; preds = %100, %45
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @MAX_CAL_SLOTS, align 4
  %54 = icmp sge i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %101

56:                                               ; preds = %51
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %91, %56
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %94

62:                                               ; preds = %58
  %63 = load %struct.nae_port_config*, %struct.nae_port_config** %6, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %63, i64 %65
  %67 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %90

70:                                               ; preds = %62
  %71 = load i32, i32* %8, align 4
  %72 = shl i32 %71, 7
  %73 = load i32, i32* %9, align 4
  %74 = shl i32 %73, 1
  %75 = or i32 %72, %74
  %76 = or i32 %75, 1
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @NAE_EGR_NIOR_CRDT_CAL_PROG, align 4
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @nlm_write_nae_reg(i32 %77, i32 %78, i32 %79)
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  %83 = load %struct.nae_port_config*, %struct.nae_port_config** %6, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %83, i64 %85
  %87 = getelementptr inbounds %struct.nae_port_config, %struct.nae_port_config* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, -1
  store i64 %89, i64* %87, align 8
  br label %90

90:                                               ; preds = %70, %62
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %58

94:                                               ; preds = %58
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  br label %101

99:                                               ; preds = %94
  br label %100

100:                                              ; preds = %99
  br i1 true, label %51, label %101

101:                                              ; preds = %100, %98, %55
  ret void
}

declare dso_local i32 @nlm_write_nae_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
