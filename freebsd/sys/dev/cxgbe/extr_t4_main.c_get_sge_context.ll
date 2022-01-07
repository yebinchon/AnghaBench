; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_get_sge_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_get_sge_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32 }
%struct.t4_sge_context = type { i64, i64, i32* }

@M_CTXTQID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CTXT_EGRESS = common dso_local global i64 0, align 8
@CTXT_INGRESS = common dso_local global i64 0, align 8
@CTXT_FLM = common dso_local global i64 0, align 8
@CTXT_CNM = common dso_local global i64 0, align 8
@SLEEP_OK = common dso_local global i32 0, align 4
@INTR_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"t4ctxt\00", align 1
@FW_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.t4_sge_context*)* @get_sge_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sge_context(%struct.adapter* %0, %struct.t4_sge_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.t4_sge_context*, align 8
  %6 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.t4_sge_context* %1, %struct.t4_sge_context** %5, align 8
  %7 = load %struct.t4_sge_context*, %struct.t4_sge_context** %5, align 8
  %8 = getelementptr inbounds %struct.t4_sge_context, %struct.t4_sge_context* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @M_CTXTQID, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %3, align 4
  br label %96

14:                                               ; preds = %2
  %15 = load %struct.t4_sge_context*, %struct.t4_sge_context** %5, align 8
  %16 = getelementptr inbounds %struct.t4_sge_context, %struct.t4_sge_context* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CTXT_EGRESS, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %14
  %21 = load %struct.t4_sge_context*, %struct.t4_sge_context** %5, align 8
  %22 = getelementptr inbounds %struct.t4_sge_context, %struct.t4_sge_context* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CTXT_INGRESS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %20
  %27 = load %struct.t4_sge_context*, %struct.t4_sge_context** %5, align 8
  %28 = getelementptr inbounds %struct.t4_sge_context, %struct.t4_sge_context* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CTXT_FLM, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load %struct.t4_sge_context*, %struct.t4_sge_context** %5, align 8
  %34 = getelementptr inbounds %struct.t4_sge_context, %struct.t4_sge_context* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CTXT_CNM, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %3, align 4
  br label %96

40:                                               ; preds = %32, %26, %20, %14
  %41 = load %struct.adapter*, %struct.adapter** %4, align 8
  %42 = load i32, i32* @SLEEP_OK, align 4
  %43 = load i32, i32* @INTR_OK, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @begin_synchronized_op(%struct.adapter* %41, i32* null, i32 %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %96

50:                                               ; preds = %40
  %51 = load %struct.adapter*, %struct.adapter** %4, align 8
  %52 = getelementptr inbounds %struct.adapter, %struct.adapter* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @FW_OK, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %78

57:                                               ; preds = %50
  %58 = load %struct.adapter*, %struct.adapter** %4, align 8
  %59 = load %struct.adapter*, %struct.adapter** %4, align 8
  %60 = getelementptr inbounds %struct.adapter, %struct.adapter* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.t4_sge_context*, %struct.t4_sge_context** %5, align 8
  %63 = getelementptr inbounds %struct.t4_sge_context, %struct.t4_sge_context* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.t4_sge_context*, %struct.t4_sge_context** %5, align 8
  %66 = getelementptr inbounds %struct.t4_sge_context, %struct.t4_sge_context* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.t4_sge_context*, %struct.t4_sge_context** %5, align 8
  %69 = getelementptr inbounds %struct.t4_sge_context, %struct.t4_sge_context* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = call i32 @t4_sge_ctxt_rd(%struct.adapter* %58, i32 %61, i64 %64, i64 %67, i32* %71)
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %57
  br label %92

77:                                               ; preds = %57
  br label %78

78:                                               ; preds = %77, %50
  %79 = load %struct.adapter*, %struct.adapter** %4, align 8
  %80 = load %struct.t4_sge_context*, %struct.t4_sge_context** %5, align 8
  %81 = getelementptr inbounds %struct.t4_sge_context, %struct.t4_sge_context* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.t4_sge_context*, %struct.t4_sge_context** %5, align 8
  %84 = getelementptr inbounds %struct.t4_sge_context, %struct.t4_sge_context* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.t4_sge_context*, %struct.t4_sge_context** %5, align 8
  %87 = getelementptr inbounds %struct.t4_sge_context, %struct.t4_sge_context* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = call i32 @t4_sge_ctxt_rd_bd(%struct.adapter* %79, i64 %82, i64 %85, i32* %89)
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %78, %76
  %93 = load %struct.adapter*, %struct.adapter** %4, align 8
  %94 = call i32 @end_synchronized_op(%struct.adapter* %93, i32 0)
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %92, %48, %38, %12
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @begin_synchronized_op(%struct.adapter*, i32*, i32, i8*) #1

declare dso_local i32 @t4_sge_ctxt_rd(%struct.adapter*, i32, i64, i64, i32*) #1

declare dso_local i32 @t4_sge_ctxt_rd_bd(%struct.adapter*, i64, i64, i32*) #1

declare dso_local i32 @end_synchronized_op(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
