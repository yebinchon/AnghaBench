; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_mc_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_mc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@A_MC_BIST_CMD = common dso_local global i32 0, align 4
@A_MC_BIST_CMD_ADDR = common dso_local global i32 0, align 4
@A_MC_BIST_CMD_LEN = common dso_local global i32 0, align 4
@A_MC_BIST_STATUS_RDATA = common dso_local global i32 0, align 4
@A_MC_BIST_DATA_PATTERN = common dso_local global i32 0, align 4
@A_MC_P_BIST_CMD = common dso_local global i32 0, align 4
@A_MC_P_BIST_CMD_ADDR = common dso_local global i32 0, align 4
@A_MC_P_BIST_CMD_LEN = common dso_local global i32 0, align 4
@A_MC_P_BIST_STATUS_RDATA = common dso_local global i32 0, align 4
@A_MC_P_BIST_DATA_PATTERN = common dso_local global i32 0, align 4
@F_START_BIST = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_mc_read(%struct.adapter* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load %struct.adapter*, %struct.adapter** %7, align 8
  %19 = call i64 @is_t4(%struct.adapter* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %5
  %22 = load i32, i32* @A_MC_BIST_CMD, align 4
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* @A_MC_BIST_CMD_ADDR, align 4
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* @A_MC_BIST_CMD_LEN, align 4
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* @A_MC_BIST_STATUS_RDATA, align 4
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* @A_MC_BIST_DATA_PATTERN, align 4
  store i32 %26, i32* %17, align 4
  br label %43

27:                                               ; preds = %5
  %28 = load i32, i32* @A_MC_P_BIST_CMD, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @MC_REG(i32 %28, i32 %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* @A_MC_P_BIST_CMD_ADDR, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @MC_REG(i32 %31, i32 %32)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* @A_MC_P_BIST_CMD_LEN, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @MC_REG(i32 %34, i32 %35)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* @A_MC_P_BIST_STATUS_RDATA, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @MC_REG(i32 %37, i32 %38)
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* @A_MC_P_BIST_DATA_PATTERN, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @MC_REG(i32 %40, i32 %41)
  store i32 %42, i32* %17, align 4
  br label %43

43:                                               ; preds = %27, %21
  %44 = load %struct.adapter*, %struct.adapter** %7, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @t4_read_reg(%struct.adapter* %44, i32 %45)
  %47 = load i32, i32* @F_START_BIST, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* @EBUSY, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %107

53:                                               ; preds = %43
  %54 = load %struct.adapter*, %struct.adapter** %7, align 8
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* %9, align 4
  %57 = and i32 %56, -64
  %58 = call i32 @t4_write_reg(%struct.adapter* %54, i32 %55, i32 %57)
  %59 = load %struct.adapter*, %struct.adapter** %7, align 8
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @t4_write_reg(%struct.adapter* %59, i32 %60, i32 64)
  %62 = load %struct.adapter*, %struct.adapter** %7, align 8
  %63 = load i32, i32* %17, align 4
  %64 = call i32 @t4_write_reg(%struct.adapter* %62, i32 %63, i32 12)
  %65 = load %struct.adapter*, %struct.adapter** %7, align 8
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @V_BIST_OPCODE(i32 1)
  %68 = load i32, i32* @F_START_BIST, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @V_BIST_CMD_GAP(i32 1)
  %71 = or i32 %69, %70
  %72 = call i32 @t4_write_reg(%struct.adapter* %65, i32 %66, i32 %71)
  %73 = load %struct.adapter*, %struct.adapter** %7, align 8
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @F_START_BIST, align 4
  %76 = call i32 @t4_wait_op_done(%struct.adapter* %73, i32 %74, i32 %75, i32 0, i32 10, i32 1)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %53
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %6, align 4
  br label %107

81:                                               ; preds = %53
  store i32 15, i32* %12, align 4
  br label %82

82:                                               ; preds = %94, %81
  %83 = load i32, i32* %12, align 4
  %84 = icmp sge i32 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %82
  %86 = load %struct.adapter*, %struct.adapter** %7, align 8
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %12, align 4
  %89 = call i32 (i32, i32, ...) bitcast (i32 (...)* @MC_BIST_STATUS_REG to i32 (i32, i32, ...)*)(i32 %87, i32 %88)
  %90 = call i32 @t4_read_reg(%struct.adapter* %86, i32 %89)
  %91 = call i32 @ntohl(i32 %90)
  %92 = load i32*, i32** %10, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %10, align 8
  store i32 %91, i32* %92, align 4
  br label %94

94:                                               ; preds = %85
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %12, align 4
  br label %82

97:                                               ; preds = %82
  %98 = load i32*, i32** %11, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load %struct.adapter*, %struct.adapter** %7, align 8
  %102 = load i32, i32* %16, align 4
  %103 = call i32 (i32, i32, ...) bitcast (i32 (...)* @MC_BIST_STATUS_REG to i32 (i32, i32, ...)*)(i32 %102, i32 16)
  %104 = call i32 @t4_read_reg64(%struct.adapter* %101, i32 %103)
  %105 = load i32*, i32** %11, align 8
  store i32 %104, i32* %105, align 4
  br label %106

106:                                              ; preds = %100, %97
  store i32 0, i32* %6, align 4
  br label %107

107:                                              ; preds = %106, %79, %50
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local i64 @is_t4(%struct.adapter*) #1

declare dso_local i32 @MC_REG(i32, i32) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @V_BIST_OPCODE(i32) #1

declare dso_local i32 @V_BIST_CMD_GAP(i32) #1

declare dso_local i32 @t4_wait_op_done(%struct.adapter*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @MC_BIST_STATUS_REG(...) #1

declare dso_local i32 @t4_read_reg64(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
