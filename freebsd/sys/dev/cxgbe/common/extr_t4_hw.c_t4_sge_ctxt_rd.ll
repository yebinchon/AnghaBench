; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_sge_ctxt_rd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_sge_ctxt_rd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_ldst_cmd = type { %struct.TYPE_4__, i8*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i8* }

@CTXT_EGRESS = common dso_local global i32 0, align 4
@FW_LDST_ADDRSPC_SGE_EGRC = common dso_local global i32 0, align 4
@CTXT_INGRESS = common dso_local global i32 0, align 4
@FW_LDST_ADDRSPC_SGE_INGC = common dso_local global i32 0, align 4
@CTXT_FLM = common dso_local global i32 0, align 4
@FW_LDST_ADDRSPC_SGE_FLMC = common dso_local global i32 0, align 4
@FW_LDST_ADDRSPC_SGE_CONMC = common dso_local global i32 0, align 4
@FW_LDST_CMD = common dso_local global i32 0, align 4
@F_FW_CMD_REQUEST = common dso_local global i32 0, align 4
@F_FW_CMD_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_sge_ctxt_rd(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.fw_ldst_cmd, align 8
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @CTXT_EGRESS, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load i32, i32* @FW_LDST_ADDRSPC_SGE_EGRC, align 4
  store i32 %17, i32* %11, align 4
  br label %34

18:                                               ; preds = %5
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @CTXT_INGRESS, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @FW_LDST_ADDRSPC_SGE_INGC, align 4
  store i32 %23, i32* %11, align 4
  br label %33

24:                                               ; preds = %18
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @CTXT_FLM, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @FW_LDST_ADDRSPC_SGE_FLMC, align 4
  store i32 %29, i32* %11, align 4
  br label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @FW_LDST_ADDRSPC_SGE_CONMC, align 4
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %30, %28
  br label %33

33:                                               ; preds = %32, %22
  br label %34

34:                                               ; preds = %33, %16
  %35 = call i32 @memset(%struct.fw_ldst_cmd* %12, i32 0, i32 48)
  %36 = load i32, i32* @FW_LDST_CMD, align 4
  %37 = call i32 @V_FW_CMD_OP(i32 %36)
  %38 = load i32, i32* @F_FW_CMD_REQUEST, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @F_FW_CMD_READ, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @V_FW_LDST_CMD_ADDRSPACE(i32 %42)
  %44 = or i32 %41, %43
  %45 = call i8* @cpu_to_be32(i32 %44)
  %46 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %12, i32 0, i32 2
  store i8* %45, i8** %46, align 8
  %47 = call i32 @FW_LEN16(%struct.fw_ldst_cmd* byval(%struct.fw_ldst_cmd) align 8 %12)
  %48 = call i8* @cpu_to_be32(i32 %47)
  %49 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %12, i32 0, i32 1
  store i8* %48, i8** %49, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i8* @cpu_to_be32(i32 %50)
  %52 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %12, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 6
  store i8* %51, i8** %54, align 8
  %55 = load %struct.adapter*, %struct.adapter** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @t4_wr_mbox(%struct.adapter* %55, i32 %56, %struct.fw_ldst_cmd* %12, i32 48, %struct.fw_ldst_cmd* %12)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %103

60:                                               ; preds = %34
  %61 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %12, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @be32_to_cpu(i32 %64)
  %66 = load i32*, i32** %10, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 %65, i32* %67, align 4
  %68 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %12, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @be32_to_cpu(i32 %71)
  %73 = load i32*, i32** %10, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  store i32 %72, i32* %74, align 4
  %75 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %12, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @be32_to_cpu(i32 %78)
  %80 = load i32*, i32** %10, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  store i32 %79, i32* %81, align 4
  %82 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %12, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @be32_to_cpu(i32 %85)
  %87 = load i32*, i32** %10, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 3
  store i32 %86, i32* %88, align 4
  %89 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %12, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @be32_to_cpu(i32 %92)
  %94 = load i32*, i32** %10, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 4
  store i32 %93, i32* %95, align 4
  %96 = getelementptr inbounds %struct.fw_ldst_cmd, %struct.fw_ldst_cmd* %12, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @be32_to_cpu(i32 %99)
  %101 = load i32*, i32** %10, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 5
  store i32 %100, i32* %102, align 4
  br label %103

103:                                              ; preds = %60, %34
  %104 = load i32, i32* %11, align 4
  ret i32 %104
}

declare dso_local i32 @memset(%struct.fw_ldst_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @V_FW_CMD_OP(i32) #1

declare dso_local i32 @V_FW_LDST_CMD_ADDRSPACE(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_ldst_cmd* byval(%struct.fw_ldst_cmd) align 8) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_ldst_cmd*, i32, %struct.fw_ldst_cmd*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
