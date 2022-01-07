; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_modify_dp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_modify_dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.sym_pmc, %struct.sym_pmc, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.sym_pmc = type { %struct.TYPE_11__, i8* }
%struct.TYPE_11__ = type { i8*, i8* }
%struct.TYPE_8__ = type { i32 }

@nc_temp = common dso_local global i32 0, align 4
@HF_SENSE = common dso_local global i32 0, align 4
@SYM_CONF_MAX_SG = common dso_local global i32 0, align 4
@HF_PRT = common dso_local global i32 0, align 4
@HF_DP_SAVED = common dso_local global i32 0, align 4
@HF_ACT_PM = common dso_local global i32 0, align 4
@pm0_data = common dso_local global i32 0, align 4
@pm1_data = common dso_local global i32 0, align 4
@clrack = common dso_local global i32 0, align 4
@msg_bad = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_12__*, i32)* @sym_modify_dp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_modify_dp(i32 %0, %struct.TYPE_12__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sym_pmc*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @nc_temp, align 4
  %16 = call i32 @INL(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @HF_SENSE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %138

24:                                               ; preds = %3
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @sym_evaluate_dp(i32 %25, %struct.TYPE_12__* %26, i32 %27, i32* %7)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %138

32:                                               ; preds = %24
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i8* @cpu_to_scr(i32 %37)
  %39 = ptrtoint i8* %38 to i32
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = sub nsw i32 %40, 8
  %42 = load i32, i32* @SYM_CONF_MAX_SG, align 4
  %43 = load i32, i32* %12, align 4
  %44 = sub nsw i32 %42, %43
  %45 = mul nsw i32 %44, 8
  %46 = sub nsw i32 %41, %45
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %32
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %8, align 4
  br label %130

51:                                               ; preds = %32
  %52 = load i32, i32* @HF_PRT, align 4
  %53 = call i32 @INB(i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @HF_DP_SAVED, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load i32, i32* @HF_ACT_PM, align 4
  %60 = load i32, i32* %11, align 4
  %61 = xor i32 %60, %59
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %58, %51
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @HF_ACT_PM, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %62
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  store %struct.sym_pmc* %70, %struct.sym_pmc** %13, align 8
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @pm0_data, align 4
  %73 = call i32 @SCRIPTA_BA(i32 %71, i32 %72)
  store i32 %73, i32* %8, align 4
  br label %81

74:                                               ; preds = %62
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  store %struct.sym_pmc* %77, %struct.sym_pmc** %13, align 8
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @pm1_data, align 4
  %80 = call i32 @SCRIPTA_BA(i32 %78, i32 %79)
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %74, %67
  %82 = load i32, i32* @HF_DP_SAVED, align 4
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %11, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* @HF_PRT, align 4
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @OUTB(i32 %86, i32 %87)
  %89 = load i32, i32* %9, align 4
  %90 = call i8* @cpu_to_scr(i32 %89)
  %91 = load %struct.sym_pmc*, %struct.sym_pmc** %13, align 8
  %92 = getelementptr inbounds %struct.sym_pmc, %struct.sym_pmc* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @scr_to_cpu(i32 %102)
  store i32 %103, i32* %10, align 4
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sub nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @scr_to_cpu(i32 %113)
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %114, %115
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = call i8* @cpu_to_scr(i32 %119)
  %121 = load %struct.sym_pmc*, %struct.sym_pmc** %13, align 8
  %122 = getelementptr inbounds %struct.sym_pmc, %struct.sym_pmc* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  store i8* %120, i8** %123, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sub nsw i32 0, %124
  %126 = call i8* @cpu_to_scr(i32 %125)
  %127 = load %struct.sym_pmc*, %struct.sym_pmc** %13, align 8
  %128 = getelementptr inbounds %struct.sym_pmc, %struct.sym_pmc* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  store i8* %126, i8** %129, align 8
  br label %130

130:                                              ; preds = %81, %49
  %131 = load i32, i32* @nc_temp, align 4
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @OUTL(i32 %131, i32 %132)
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* @clrack, align 4
  %136 = call i32 @SCRIPTA_BA(i32 %134, i32 %135)
  %137 = call i32 @OUTL_DSP(i32 %136)
  br label %143

138:                                              ; preds = %31, %23
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* @msg_bad, align 4
  %141 = call i32 @SCRIPTB_BA(i32 %139, i32 %140)
  %142 = call i32 @OUTL_DSP(i32 %141)
  br label %143

143:                                              ; preds = %138, %130
  ret void
}

declare dso_local i32 @INL(i32) #1

declare dso_local i32 @sym_evaluate_dp(i32, %struct.TYPE_12__*, i32, i32*) #1

declare dso_local i8* @cpu_to_scr(i32) #1

declare dso_local i32 @INB(i32) #1

declare dso_local i32 @SCRIPTA_BA(i32, i32) #1

declare dso_local i32 @OUTB(i32, i32) #1

declare dso_local i32 @scr_to_cpu(i32) #1

declare dso_local i32 @OUTL(i32, i32) #1

declare dso_local i32 @OUTL_DSP(i32) #1

declare dso_local i32 @SCRIPTB_BA(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
