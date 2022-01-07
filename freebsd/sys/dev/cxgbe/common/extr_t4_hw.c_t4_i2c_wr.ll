; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_i2c_wr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_i2c_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_ldst_cmd = type { %struct.TYPE_4__, i8*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@FW_LDST_ADDRSPC_I2C = common dso_local global i32 0, align 4
@FW_LDST_CMD = common dso_local global i32 0, align 4
@F_FW_CMD_REQUEST = common dso_local global i32 0, align 4
@F_FW_CMD_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_i2c_wr(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.fw_ldst_cmd, align 8
  store %struct.adapter* %0, %struct.adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %18 = load i32, i32* %11, align 4
  %19 = icmp sge i32 %18, 4
  br i1 %19, label %30, label %20

20:                                               ; preds = %7
  %21 = load i32, i32* %12, align 4
  %22 = icmp uge i32 %21, 256
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %13, align 4
  %25 = icmp uge i32 %24, 256
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %14, align 4
  %28 = zext i32 %27 to i64
  %29 = icmp ugt i64 %28, 4
  br i1 %29, label %30, label %33

30:                                               ; preds = %26, %23, %20, %7
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %8, align 4
  br label %82

33:                                               ; preds = %26
  %34 = call i32 @memset(%struct.fw_ldst_cmd* %17, i32 0, i32 40)
  %35 = load i32, i32* @FW_LDST_ADDRSPC_I2C, align 4
  %36 = call i32 @V_FW_LDST_CMD_ADDRSPACE(i32 %35)
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* @FW_LDST_CMD, align 4
  %38 = call i32 @V_FW_CMD_OP(i32 %37)
  %39 = load i32, i32* @F_FW_CMD_REQUEST, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @F_FW_CMD_WRITE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %16, align 4
  %44 = or i32 %42, %43
  %45 = call i8* @cpu_to_be32(i32 %44)
  %46 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %17, i32 0, i32 2
  store i8* %45, i8** %46, align 8
  %47 = call i32 @FW_LEN16(%struct.fw_ldst_cmd* byval(%struct.fw_ldst_cmd) align 8 %17)
  %48 = call i8* @cpu_to_be32(i32 %47)
  %49 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %17, i32 0, i32 1
  store i8* %48, i8** %49, align 8
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %33
  br label %55

53:                                               ; preds = %33
  %54 = load i32, i32* %11, align 4
  br label %55

55:                                               ; preds = %53, %52
  %56 = phi i32 [ 255, %52 ], [ %54, %53 ]
  %57 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %17, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load i32, i32* %12, align 4
  %61 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %17, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* %13, align 4
  %65 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %17, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  store i32 %64, i32* %67, align 8
  %68 = load i32, i32* %14, align 4
  %69 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %17, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 3
  store i32 %68, i32* %71, align 4
  %72 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %17, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load i32*, i32** %15, align 8
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @memcpy(i32 %75, i32* %76, i32 %77)
  %79 = load %struct.adapter*, %struct.adapter** %9, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @t4_wr_mbox(%struct.adapter* %79, i32 %80, %struct.fw_ldst_cmd* %17, i32 40, %struct.fw_ldst_cmd* %17)
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %55, %30
  %83 = load i32, i32* %8, align 4
  ret i32 %83
}

declare dso_local i32 @memset(%struct.fw_ldst_cmd*, i32, i32) #1

declare dso_local i32 @V_FW_LDST_CMD_ADDRSPACE(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @V_FW_CMD_OP(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_ldst_cmd* byval(%struct.fw_ldst_cmd) align 8) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_ldst_cmd*, i32, %struct.fw_ldst_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
