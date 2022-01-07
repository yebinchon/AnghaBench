; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_i2c_rd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_i2c_rd.c"
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
@F_FW_CMD_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_i2c_rd(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
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
  %18 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %19 = load i32, i32* %11, align 4
  %20 = icmp sge i32 %19, 4
  br i1 %20, label %31, label %21

21:                                               ; preds = %7
  %22 = load i32, i32* %12, align 4
  %23 = icmp uge i32 %22, 256
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %13, align 4
  %26 = icmp uge i32 %25, 256
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %14, align 4
  %29 = zext i32 %28 to i64
  %30 = icmp ugt i64 %29, 4
  br i1 %30, label %31, label %34

31:                                               ; preds = %27, %24, %21, %7
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %88

34:                                               ; preds = %27
  %35 = call i32 @memset(%struct.fw_ldst_cmd* %17, i32 0, i32 40)
  %36 = load i32, i32* @FW_LDST_ADDRSPC_I2C, align 4
  %37 = call i32 @V_FW_LDST_CMD_ADDRSPACE(i32 %36)
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* @FW_LDST_CMD, align 4
  %39 = call i32 @V_FW_CMD_OP(i32 %38)
  %40 = load i32, i32* @F_FW_CMD_REQUEST, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @F_FW_CMD_READ, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %16, align 4
  %45 = or i32 %43, %44
  %46 = call i8* @cpu_to_be32(i32 %45)
  %47 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %17, i32 0, i32 2
  store i8* %46, i8** %47, align 8
  %48 = call i32 @FW_LEN16(%struct.fw_ldst_cmd* byval(%struct.fw_ldst_cmd) align 8 %17)
  %49 = call i8* @cpu_to_be32(i32 %48)
  %50 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %17, i32 0, i32 1
  store i8* %49, i8** %50, align 8
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %34
  br label %56

54:                                               ; preds = %34
  %55 = load i32, i32* %11, align 4
  br label %56

56:                                               ; preds = %54, %53
  %57 = phi i32 [ 255, %53 ], [ %55, %54 ]
  %58 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %17, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load i32, i32* %12, align 4
  %62 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %17, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* %13, align 4
  %66 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %17, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  store i32 %65, i32* %68, align 8
  %69 = load i32, i32* %14, align 4
  %70 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %17, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 3
  store i32 %69, i32* %72, align 4
  %73 = load %struct.adapter*, %struct.adapter** %9, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @t4_wr_mbox(%struct.adapter* %73, i32 %74, %struct.fw_ldst_cmd* %17, i32 40, %struct.fw_ldst_cmd* %17)
  store i32 %75, i32* %18, align 4
  %76 = load i32, i32* %18, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %56
  %79 = load i32*, i32** %15, align 8
  %80 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %17, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @memcpy(i32* %79, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %78, %56
  %87 = load i32, i32* %18, align 4
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %86, %31
  %89 = load i32, i32* %8, align 4
  ret i32 %89
}

declare dso_local i32 @memset(%struct.fw_ldst_cmd*, i32, i32) #1

declare dso_local i32 @V_FW_LDST_CMD_ADDRSPACE(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @V_FW_CMD_OP(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_ldst_cmd* byval(%struct.fw_ldst_cmd) align 8) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_ldst_cmd*, i32, %struct.fw_ldst_cmd*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
