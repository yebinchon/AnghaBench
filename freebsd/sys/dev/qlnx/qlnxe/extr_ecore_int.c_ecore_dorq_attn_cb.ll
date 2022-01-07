; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_dorq_attn_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_dorq_attn_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, %struct.ecore_ptt* }
%struct.ecore_ptt = type { i32 }

@DORQ_REG_INT_STS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"DORQ attention. int_sts was %x\0A\00", align 1
@DORQ_REG_INT_STS_DORQ_FIFO_AFULL = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@DORQ_REG_INT_STS_DB_DROP = common dso_local global i32 0, align 4
@DORQ_REG_INT_STS_DORQ_FIFO_OVFL_ERR = common dso_local global i32 0, align 4
@DORQ_REG_DB_DROP_REASON = common dso_local global i32 0, align 4
@ECORE_DORQ_ATTENTION_REASON_MASK = common dso_local global i32 0, align 4
@DORQ_REG_DB_DROP_DETAILS = common dso_local global i32 0, align 4
@DORQ_REG_DB_DROP_DETAILS_ADDRESS = common dso_local global i32 0, align 4
@DORQ_REG_PF_OVFL_STICKY = common dso_local global i32 0, align 4
@DORQ_REG_DB_DROP_DETAILS_REASON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [277 x i8] c"Doorbell drop occurred\0AAddress\09\090x%08x\09(second BAR address)\0AFID\09\090x%04x\09\09(Opaque FID)\0ASize\09\090x%04x\09\09(in bytes)\0A1st drop reason\090x%08x\09(details on first drop since last handling)\0ASticky reasons\090x%08x\09(all drop reasons since last handling)\0AOverflow\090x%x\09\09(a per PF indication)\0A\00", align 1
@ECORE_DORQ_ATTENTION_OPAQUE = common dso_local global i32 0, align 4
@ECORE_DORQ_ATTENTION_SIZE = common dso_local global i32 0, align 4
@DORQ_REG_DB_DROP_DETAILS_REL = common dso_local global i32 0, align 4
@DORQ_REG_INT_STS_WR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"DORQ fatal attention\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*)* @ecore_dorq_attn_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_dorq_attn_cb(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ecore_ptt*, align 8
  %11 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %13 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %12, i32 0, i32 1
  %14 = load %struct.ecore_ptt*, %struct.ecore_ptt** %13, align 8
  store %struct.ecore_ptt* %14, %struct.ecore_ptt** %10, align 8
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %16 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %17 = load i32, i32* @DORQ_REG_INT_STS, align 4
  %18 = call i32 @ecore_rd(%struct.ecore_hwfn* %15, %struct.ecore_ptt* %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %20 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 (i32, i32, i8*, i32, ...) @DP_NOTICE(i32 %21, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @DORQ_REG_INT_STS_DORQ_FIFO_AFULL, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %30, i32* %2, align 4
  br label %116

31:                                               ; preds = %1
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @DORQ_REG_INT_STS_DB_DROP, align 4
  %34 = load i32, i32* @DORQ_REG_INT_STS_DORQ_FIFO_OVFL_ERR, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %112

38:                                               ; preds = %31
  %39 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %40 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %41 = load i32, i32* @DORQ_REG_DB_DROP_REASON, align 4
  %42 = call i32 @ecore_rd(%struct.ecore_hwfn* %39, %struct.ecore_ptt* %40, i32 %41)
  %43 = load i32, i32* @ECORE_DORQ_ATTENTION_REASON_MASK, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %5, align 4
  %45 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %46 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %47 = load i32, i32* @DORQ_REG_DB_DROP_DETAILS, align 4
  %48 = call i32 @ecore_rd(%struct.ecore_hwfn* %45, %struct.ecore_ptt* %46, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %50 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %51 = load i32, i32* @DORQ_REG_DB_DROP_DETAILS_ADDRESS, align 4
  %52 = call i32 @ecore_rd(%struct.ecore_hwfn* %49, %struct.ecore_ptt* %50, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %54 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %55 = load i32, i32* @DORQ_REG_PF_OVFL_STICKY, align 4
  %56 = call i32 @ecore_rd(%struct.ecore_hwfn* %53, %struct.ecore_ptt* %54, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %58 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %59 = load i32, i32* @DORQ_REG_DB_DROP_DETAILS_REASON, align 4
  %60 = call i32 @ecore_rd(%struct.ecore_hwfn* %57, %struct.ecore_ptt* %58, i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %62 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @ECORE_DORQ_ATTENTION_OPAQUE, align 4
  %67 = call i32 @GET_FIELD(i32 %65, i32 %66)
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @ECORE_DORQ_ATTENTION_SIZE, align 4
  %70 = call i32 @GET_FIELD(i32 %68, i32 %69)
  %71 = mul nsw i32 %70, 4
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 (i32, i32, i8*, i32, ...) @DP_NOTICE(i32 %63, i32 0, i8* getelementptr inbounds ([277 x i8], [277 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %67, i32 %71, i32 %72, i32 %73, i32 %74)
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %38
  %79 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %80 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %81 = call i32 @ecore_db_rec_attn(%struct.ecore_hwfn* %79, %struct.ecore_ptt* %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @ECORE_SUCCESS, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %2, align 4
  br label %116

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %87, %38
  %89 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %90 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %91 = load i32, i32* @DORQ_REG_DB_DROP_DETAILS_REL, align 4
  %92 = call i32 @ecore_wr(%struct.ecore_hwfn* %89, %struct.ecore_ptt* %90, i32 %91, i32 0)
  %93 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %94 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %95 = load i32, i32* @DORQ_REG_INT_STS_WR, align 4
  %96 = load i32, i32* @DORQ_REG_INT_STS_DB_DROP, align 4
  %97 = load i32, i32* @DORQ_REG_INT_STS_DORQ_FIFO_OVFL_ERR, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @ecore_wr(%struct.ecore_hwfn* %93, %struct.ecore_ptt* %94, i32 %95, i32 %98)
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @DORQ_REG_INT_STS_DB_DROP, align 4
  %102 = load i32, i32* @DORQ_REG_INT_STS_DORQ_FIFO_OVFL_ERR, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @DORQ_REG_INT_STS_DORQ_FIFO_AFULL, align 4
  %105 = or i32 %103, %104
  %106 = xor i32 %105, -1
  %107 = and i32 %100, %106
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %88
  %110 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %110, i32* %2, align 4
  br label %116

111:                                              ; preds = %88
  br label %112

112:                                              ; preds = %111, %31
  %113 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %114 = call i32 @DP_INFO(%struct.ecore_hwfn* %113, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %115 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %112, %109, %85, %29
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @DP_NOTICE(i32, i32, i8*, i32, ...) #1

declare dso_local i32 @GET_FIELD(i32, i32) #1

declare dso_local i32 @ecore_db_rec_attn(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

declare dso_local i32 @DP_INFO(%struct.ecore_hwfn*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
