; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_htcp.c_htcp_recalc_alpha.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_htcp.c_htcp_recalc_alpha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_var = type { %struct.htcp* }
%struct.htcp = type { i32, i32, i32 }

@ticks = common dso_local global i32 0, align 4
@HTCP_DELTA_L = common dso_local global i32 0, align 4
@htcp_max_diff = common dso_local global i32 0, align 4
@V_htcp_adaptive_backoff = common dso_local global i64 0, align 8
@HTCP_SHIFT = common dso_local global i32 0, align 4
@V_htcp_rtt_scaling = common dso_local global i64 0, align 8
@HTCP_MINROWE = common dso_local global i32 0, align 4
@t_srtt = common dso_local global i32 0, align 4
@htcp_rtt_ref = common dso_local global i32 0, align 4
@HTCP_MAXROWE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cc_var*)* @htcp_recalc_alpha to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htcp_recalc_alpha(%struct.cc_var* %0) #0 {
  %2 = alloca %struct.cc_var*, align 8
  %3 = alloca %struct.htcp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cc_var* %0, %struct.cc_var** %2, align 8
  %7 = load %struct.cc_var*, %struct.cc_var** %2, align 8
  %8 = getelementptr inbounds %struct.cc_var, %struct.cc_var* %7, i32 0, i32 0
  %9 = load %struct.htcp*, %struct.htcp** %8, align 8
  store %struct.htcp* %9, %struct.htcp** %3, align 8
  %10 = load i32, i32* @ticks, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.htcp*, %struct.htcp** %3, align 8
  %13 = getelementptr inbounds %struct.htcp, %struct.htcp* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @HTCP_DELTA_L, align 4
  %19 = sub nsw i32 %17, %18
  %20 = load %struct.htcp*, %struct.htcp** %3, align 8
  %21 = getelementptr inbounds %struct.htcp, %struct.htcp* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %16, %1
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.htcp*, %struct.htcp** %3, align 8
  %25 = getelementptr inbounds %struct.htcp, %struct.htcp* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %23, %26
  %28 = load i32, i32* @HTCP_DELTA_L, align 4
  %29 = sub nsw i32 %27, %28
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @htcp_max_diff, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %80

33:                                               ; preds = %22
  %34 = load i32, i32* %5, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %75

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @HTCP_CALC_ALPHA(i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i64, i64* @V_htcp_adaptive_backoff, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = load i32, i32* @HTCP_SHIFT, align 4
  %43 = shl i32 1, %42
  %44 = load %struct.htcp*, %struct.htcp** %3, align 8
  %45 = getelementptr inbounds %struct.htcp, %struct.htcp* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %43, %46
  %48 = mul nsw i32 2, %47
  %49 = load i32, i32* %4, align 4
  %50 = mul nsw i32 %48, %49
  %51 = load i32, i32* @HTCP_SHIFT, align 4
  %52 = ashr i32 %50, %51
  %53 = call i32 @max(i32 1, i32 %52)
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %41, %36
  %55 = load i64, i64* @V_htcp_rtt_scaling, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %54
  %58 = load i32, i32* @HTCP_MINROWE, align 4
  %59 = load %struct.cc_var*, %struct.cc_var** %2, align 8
  %60 = load i32, i32* @t_srtt, align 4
  %61 = call i32 @CCV(%struct.cc_var* %59, i32 %60)
  %62 = load i32, i32* @HTCP_SHIFT, align 4
  %63 = shl i32 %61, %62
  %64 = load i32, i32* @htcp_rtt_ref, align 4
  %65 = sdiv i32 %63, %64
  %66 = call i32 @max(i32 %58, i32 %65)
  %67 = load i32, i32* @HTCP_MAXROWE, align 4
  %68 = call i32 @min(i32 %66, i32 %67)
  %69 = load i32, i32* %4, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load i32, i32* @HTCP_SHIFT, align 4
  %72 = ashr i32 %70, %71
  %73 = call i32 @max(i32 1, i32 %72)
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %57, %54
  br label %76

75:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %74
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.htcp*, %struct.htcp** %3, align 8
  %79 = getelementptr inbounds %struct.htcp, %struct.htcp* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %76, %22
  ret void
}

declare dso_local i32 @HTCP_CALC_ALPHA(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @CCV(%struct.cc_var*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
