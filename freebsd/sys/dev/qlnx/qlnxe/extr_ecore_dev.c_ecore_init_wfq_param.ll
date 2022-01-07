; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_init_wfq_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_init_wfq_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@ECORE_WFQ_UNIT = common dso_local global i32 0, align 4
@ECORE_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [98 x i8] c"Vport [%d] - Requested rate[%d Mbps] is less than one percent of configured PF min rate[%d Mbps]\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Number of vports is greater than %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [98 x i8] c"Total requested min rate for all vports[%d Mbps] is greater than configured PF min rate[%d Mbps]\0A\00", align 1
@.str.3 = private unnamed_addr constant [102 x i8] c"Non WFQ configured vports rate [%d Mbps] is less than one percent of configured PF min rate[%d Mbps]\0A\00", align 1
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, i32, i32, i32)* @ecore_init_wfq_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_init_wfq_param(%struct.ecore_hwfn* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %18 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %19 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %22

22:                                               ; preds = %57, %4
  %23 = load i32, i32* %15, align 4
  %24 = load i32, i32* %16, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %60

26:                                               ; preds = %22
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %56

30:                                               ; preds = %26
  %31 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %32 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* %15, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %30
  %42 = load i32, i32* %14, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %14, align 4
  %44 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %45 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i32, i32* %15, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %17, align 4
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %41, %30, %26
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %15, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %15, align 4
  br label %22

60:                                               ; preds = %22
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* %14, align 4
  %68 = sub nsw i32 %66, %67
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @ECORE_WFQ_UNIT, align 4
  %72 = sdiv i32 %70, %71
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %60
  %75 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %76 = load i32, i32* @ECORE_MSG_LINK, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %75, i32 %76, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %78, i32 %79)
  %81 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %81, i32* %5, align 4
  br label %171

82:                                               ; preds = %60
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* @ECORE_WFQ_UNIT, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %88 = load i32, i32* @ECORE_MSG_LINK, align 4
  %89 = load i32, i32* @ECORE_WFQ_UNIT, align 4
  %90 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %87, i32 %88, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %91, i32* %5, align 4
  br label %171

92:                                               ; preds = %82
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %92
  %97 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %98 = load i32, i32* @ECORE_MSG_LINK, align 4
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %97, i32 %98, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.2, i64 0, i64 0), i32 %99, i32 %100)
  %102 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %102, i32* %5, align 4
  br label %171

103:                                              ; preds = %92
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %10, align 4
  %106 = sub nsw i32 %104, %105
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %13, align 4
  %109 = sdiv i32 %107, %108
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @ECORE_WFQ_UNIT, align 4
  %113 = sdiv i32 %111, %112
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %103
  %116 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %117 = load i32, i32* @ECORE_MSG_LINK, align 4
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %9, align 4
  %120 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.ecore_hwfn* %116, i32 %117, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.3, i64 0, i64 0), i32 %118, i32 %119)
  %121 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %121, i32* %5, align 4
  br label %171

122:                                              ; preds = %103
  %123 = load i32, i32* %8, align 4
  %124 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %125 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  store i32 %123, i32* %131, align 4
  %132 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %133 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  store i32 1, i32* %139, align 4
  store i32 0, i32* %15, align 4
  br label %140

140:                                              ; preds = %166, %122
  %141 = load i32, i32* %15, align 4
  %142 = load i32, i32* %16, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %169

144:                                              ; preds = %140
  %145 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %146 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %147, align 8
  %149 = load i32, i32* %15, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %144
  br label %166

156:                                              ; preds = %144
  %157 = load i32, i32* %12, align 4
  %158 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %159 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %160, align 8
  %162 = load i32, i32* %15, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 1
  store i32 %157, i32* %165, align 4
  br label %166

166:                                              ; preds = %156, %155
  %167 = load i32, i32* %15, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %15, align 4
  br label %140

169:                                              ; preds = %140
  %170 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %170, i32* %5, align 4
  br label %171

171:                                              ; preds = %169, %115, %96, %86, %74
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
