; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_chd.c_chd_ack_received.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/cc/extr_cc_chd.c_chd_ack_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_var = type { %struct.chd* }
%struct.chd = type { i32, i32, i64, i64 }
%struct.ertt = type { i32, i32, i32, i64 }

@osd = common dso_local global i32 0, align 4
@ertt_id = common dso_local global i32 0, align 4
@ERTT_NEW_MEASUREMENT = common dso_local global i32 0, align 4
@V_chd_use_max = common dso_local global i64 0, align 8
@t_flags = common dso_local global i32 0, align 4
@V_chd_qmin = common dso_local global i32 0, align 4
@snd_cwnd = common dso_local global i32 0, align 4
@CC_CHD_DELAY = common dso_local global i32 0, align 4
@CC_ACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cc_var*, i64)* @chd_ack_received to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chd_ack_received(%struct.cc_var* %0, i64 %1) #0 {
  %3 = alloca %struct.cc_var*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.chd*, align 8
  %6 = alloca %struct.ertt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cc_var* %0, %struct.cc_var** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.cc_var*, %struct.cc_var** %3, align 8
  %12 = load i32, i32* @osd, align 4
  %13 = call i32 @CCV(%struct.cc_var* %11, i32 %12)
  %14 = load i32, i32* @ertt_id, align 4
  %15 = call %struct.ertt* @khelp_get_osd(i32 %13, i32 %14)
  store %struct.ertt* %15, %struct.ertt** %6, align 8
  %16 = load %struct.cc_var*, %struct.cc_var** %3, align 8
  %17 = getelementptr inbounds %struct.cc_var, %struct.cc_var* %16, i32 0, i32 0
  %18 = load %struct.chd*, %struct.chd** %17, align 8
  store %struct.chd* %18, %struct.chd** %5, align 8
  %19 = load %struct.ertt*, %struct.ertt** %6, align 8
  %20 = getelementptr inbounds %struct.ertt, %struct.ertt* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ERTT_NEW_MEASUREMENT, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  %24 = load %struct.ertt*, %struct.ertt** %6, align 8
  %25 = getelementptr inbounds %struct.ertt, %struct.ertt* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.chd*, %struct.chd** %5, align 8
  %28 = getelementptr inbounds %struct.chd, %struct.chd* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @imax(i32 %26, i32 %29)
  %31 = load %struct.chd*, %struct.chd** %5, align 8
  %32 = getelementptr inbounds %struct.chd, %struct.chd* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %95

35:                                               ; preds = %2
  %36 = load i64, i64* @V_chd_use_max, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.chd*, %struct.chd** %5, align 8
  %40 = getelementptr inbounds %struct.chd, %struct.chd* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  br label %46

42:                                               ; preds = %35
  %43 = load %struct.ertt*, %struct.ertt** %6, align 8
  %44 = getelementptr inbounds %struct.ertt, %struct.ertt* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  br label %46

46:                                               ; preds = %42, %38
  %47 = phi i32 [ %41, %38 ], [ %45, %42 ]
  store i32 %47, i32* %10, align 4
  %48 = load %struct.chd*, %struct.chd** %5, align 8
  %49 = getelementptr inbounds %struct.chd, %struct.chd* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %88

52:                                               ; preds = %46
  %53 = load %struct.ertt*, %struct.ertt** %6, align 8
  %54 = getelementptr inbounds %struct.ertt, %struct.ertt* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %88

57:                                               ; preds = %52
  %58 = load %struct.cc_var*, %struct.cc_var** %3, align 8
  %59 = load i32, i32* @t_flags, align 4
  %60 = call i32 @CCV(%struct.cc_var* %58, i32 %59)
  %61 = call i32 @IN_RECOVERY(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %88, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.ertt*, %struct.ertt** %6, align 8
  %66 = getelementptr inbounds %struct.ertt, %struct.ertt* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %64, %67
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @V_chd_qmin, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %63
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.ertt*, %struct.ertt** %6, align 8
  %75 = getelementptr inbounds %struct.ertt, %struct.ertt* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.ertt*, %struct.ertt** %6, align 8
  %78 = getelementptr inbounds %struct.ertt, %struct.ertt* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = sub nsw i64 %76, %80
  %82 = load %struct.chd*, %struct.chd** %5, align 8
  %83 = call i32 @should_backoff(i32 %73, i64 %81, %struct.chd* %82)
  store i32 %83, i32* %7, align 4
  br label %87

84:                                               ; preds = %63
  %85 = load %struct.chd*, %struct.chd** %5, align 8
  %86 = getelementptr inbounds %struct.chd, %struct.chd* %85, i32 0, i32 3
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %84, %72
  br label %88

88:                                               ; preds = %87, %57, %52, %46
  %89 = load i32, i32* @ERTT_NEW_MEASUREMENT, align 4
  %90 = xor i32 %89, -1
  %91 = load %struct.ertt*, %struct.ertt** %6, align 8
  %92 = getelementptr inbounds %struct.ertt, %struct.ertt* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %93, %90
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %88, %2
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %129

98:                                               ; preds = %95
  %99 = load %struct.chd*, %struct.chd** %5, align 8
  %100 = getelementptr inbounds %struct.chd, %struct.chd* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.chd*, %struct.chd** %5, align 8
  %106 = getelementptr inbounds %struct.chd, %struct.chd* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp sgt i32 %104, %107
  br i1 %108, label %109, label %119

109:                                              ; preds = %103, %98
  %110 = load %struct.cc_var*, %struct.cc_var** %3, align 8
  %111 = load i32, i32* @snd_cwnd, align 4
  %112 = call i32 @CCV(%struct.cc_var* %110, i32 %111)
  %113 = load %struct.chd*, %struct.chd** %5, align 8
  %114 = getelementptr inbounds %struct.chd, %struct.chd* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = call i64 @max(i32 %112, i64 %115)
  %117 = load %struct.chd*, %struct.chd** %5, align 8
  %118 = getelementptr inbounds %struct.chd, %struct.chd* %117, i32 0, i32 2
  store i64 %116, i64* %118, align 8
  br label %122

119:                                              ; preds = %103
  %120 = load %struct.chd*, %struct.chd** %5, align 8
  %121 = getelementptr inbounds %struct.chd, %struct.chd* %120, i32 0, i32 2
  store i64 0, i64* %121, align 8
  br label %122

122:                                              ; preds = %119, %109
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.chd*, %struct.chd** %5, align 8
  %125 = getelementptr inbounds %struct.chd, %struct.chd* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load %struct.cc_var*, %struct.cc_var** %3, align 8
  %127 = load i32, i32* @CC_CHD_DELAY, align 4
  %128 = call i32 @chd_cong_signal(%struct.cc_var* %126, i32 %127)
  br label %138

129:                                              ; preds = %95
  %130 = load i64, i64* %4, align 8
  %131 = load i64, i64* @CC_ACK, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = load %struct.cc_var*, %struct.cc_var** %3, align 8
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @chd_window_increase(%struct.cc_var* %134, i32 %135)
  br label %137

137:                                              ; preds = %133, %129
  br label %138

138:                                              ; preds = %137, %122
  ret void
}

declare dso_local %struct.ertt* @khelp_get_osd(i32, i32) #1

declare dso_local i32 @CCV(%struct.cc_var*, i32) #1

declare dso_local i32 @imax(i32, i32) #1

declare dso_local i32 @IN_RECOVERY(i32) #1

declare dso_local i32 @should_backoff(i32, i64, %struct.chd*) #1

declare dso_local i64 @max(i32, i64) #1

declare dso_local i32 @chd_cong_signal(%struct.cc_var*, i32) #1

declare dso_local i32 @chd_window_increase(%struct.cc_var*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
