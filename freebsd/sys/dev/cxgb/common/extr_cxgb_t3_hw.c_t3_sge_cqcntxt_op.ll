; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_t3_sge_cqcntxt_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_t3_sge_cqcntxt_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@A_SG_CONTEXT_CMD = common dso_local global i32 0, align 4
@F_CONTEXT_CMD_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@A_SG_CONTEXT_DATA0 = common dso_local global i32 0, align 4
@F_CQ = common dso_local global i32 0, align 4
@SG_CONTEXT_CMD_ATTEMPTS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_sge_cqcntxt_op(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %12 = load i32, i32* @A_SG_CONTEXT_CMD, align 4
  %13 = call i32 @t3_read_reg(%struct.TYPE_9__* %11, i32 %12)
  %14 = load i32, i32* @F_CONTEXT_CMD_BUSY, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %85

20:                                               ; preds = %4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %22 = load i32, i32* @A_SG_CONTEXT_DATA0, align 4
  %23 = load i32, i32* %9, align 4
  %24 = shl i32 %23, 16
  %25 = call i32 @t3_write_reg(%struct.TYPE_9__* %21, i32 %22, i32 %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %27 = load i32, i32* @A_SG_CONTEXT_CMD, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @V_CONTEXT_CMD_OPCODE(i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @V_CONTEXT(i32 %30)
  %32 = or i32 %29, %31
  %33 = load i32, i32* @F_CQ, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @t3_write_reg(%struct.TYPE_9__* %26, i32 %27, i32 %34)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = load i32, i32* @A_SG_CONTEXT_CMD, align 4
  %38 = load i32, i32* @F_CONTEXT_CMD_BUSY, align 4
  %39 = load i32, i32* @SG_CONTEXT_CMD_ATTEMPTS, align 4
  %40 = call i64 @t3_wait_op_done_val(%struct.TYPE_9__* %36, i32 %37, i32 %38, i32 0, i32 %39, i32 1, i32* %10)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %20
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %85

45:                                               ; preds = %20
  %46 = load i32, i32* %8, align 4
  %47 = icmp uge i32 %46, 2
  br i1 %47, label %48, label %84

48:                                               ; preds = %45
  %49 = load i32, i32* %8, align 4
  %50 = icmp ult i32 %49, 7
  br i1 %50, label %51, label %84

51:                                               ; preds = %48
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @G_CQ_INDEX(i32 %58)
  store i32 %59, i32* %5, align 4
  br label %85

60:                                               ; preds = %51
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %62 = load i32, i32* @A_SG_CONTEXT_CMD, align 4
  %63 = call i32 @V_CONTEXT_CMD_OPCODE(i32 0)
  %64 = load i32, i32* @F_CQ, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @V_CONTEXT(i32 %66)
  %68 = or i32 %65, %67
  %69 = call i32 @t3_write_reg(%struct.TYPE_9__* %61, i32 %62, i32 %68)
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %71 = load i32, i32* @A_SG_CONTEXT_CMD, align 4
  %72 = load i32, i32* @F_CONTEXT_CMD_BUSY, align 4
  %73 = load i32, i32* @SG_CONTEXT_CMD_ATTEMPTS, align 4
  %74 = call i64 @t3_wait_op_done(%struct.TYPE_9__* %70, i32 %71, i32 %72, i32 0, i32 %73, i32 1)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %60
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %85

79:                                               ; preds = %60
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %81 = load i32, i32* @A_SG_CONTEXT_DATA0, align 4
  %82 = call i32 @t3_read_reg(%struct.TYPE_9__* %80, i32 %81)
  %83 = call i32 @G_CQ_INDEX(i32 %82)
  store i32 %83, i32* %5, align 4
  br label %85

84:                                               ; preds = %48, %45
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %84, %79, %76, %57, %42, %17
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @t3_read_reg(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @t3_write_reg(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @V_CONTEXT_CMD_OPCODE(i32) #1

declare dso_local i32 @V_CONTEXT(i32) #1

declare dso_local i64 @t3_wait_op_done_val(%struct.TYPE_9__*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @G_CQ_INDEX(i32) #1

declare dso_local i64 @t3_wait_op_done(%struct.TYPE_9__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
