; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_timeout_rack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_timeout_rack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.tcp_rack = type { i64, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32 }
%struct.rack_sendmap = type { i64, i64 }

@TT_STOPPED = common dso_local global i32 0, align 4
@rack_to_tot = common dso_local global i32 0, align 4
@RACK_TO_FRM_RACK = common dso_local global i32 0, align 4
@rack_tlp_does_nada = common dso_local global i32 0, align 4
@PACE_TMR_RACK = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpcb*, %struct.tcp_rack*, i32)* @rack_timeout_rack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rack_timeout_rack(%struct.tcpcb* %0, %struct.tcp_rack* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcpcb*, align 8
  %6 = alloca %struct.tcp_rack*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rack_sendmap*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %5, align 8
  store %struct.tcp_rack* %1, %struct.tcp_rack** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %13 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TT_STOPPED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %147

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %24 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @TSTMP_LT(i32 %22, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %147

30:                                               ; preds = %21
  %31 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %32 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @IN_RECOVERY(i32 %33)
  store i64 %34, i64* %9, align 8
  %35 = load i32, i32* @rack_to_tot, align 4
  %36 = call i32 @counter_u64_add(i32 %35, i32 1)
  %37 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %38 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %30
  %42 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %43 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %46 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %44, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %51 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %52 = call i32 @rack_set_state(%struct.tcpcb* %50, %struct.tcp_rack* %51)
  br label %53

53:                                               ; preds = %49, %41, %30
  %54 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call %struct.rack_sendmap* @rack_check_recovery_mode(%struct.tcpcb* %54, i32 %55)
  store %struct.rack_sendmap* %56, %struct.rack_sendmap** %8, align 8
  %57 = load %struct.rack_sendmap*, %struct.rack_sendmap** %8, align 8
  %58 = icmp ne %struct.rack_sendmap* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %53
  %60 = load %struct.rack_sendmap*, %struct.rack_sendmap** %8, align 8
  %61 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.rack_sendmap*, %struct.rack_sendmap** %8, align 8
  %64 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %62, %65
  store i64 %66, i64* %10, align 8
  br label %68

67:                                               ; preds = %53
  store i64 0, i64* %10, align 8
  br label %68

68:                                               ; preds = %67, %59
  %69 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %70 = load i32, i32* @RACK_TO_FRM_RACK, align 4
  %71 = load i64, i64* %10, align 8
  %72 = call i32 @rack_log_to_event(%struct.tcp_rack* %69, i32 %70, i64 %71)
  %73 = load %struct.rack_sendmap*, %struct.rack_sendmap** %8, align 8
  %74 = icmp ne %struct.rack_sendmap* %73, null
  br i1 %74, label %75, label %129

75:                                               ; preds = %68
  %76 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %77 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  store i32 1, i32* %11, align 4
  br label %82

82:                                               ; preds = %81, %75
  %83 = load i64, i64* %9, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %101

85:                                               ; preds = %82
  %86 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %87 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %91 = call i64 @ctf_fixed_maxseg(%struct.tcpcb* %90)
  %92 = icmp slt i64 %89, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %85
  %94 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %95 = call i64 @ctf_fixed_maxseg(%struct.tcpcb* %94)
  %96 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %97 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i64 %95, i64* %98, align 8
  %99 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %100 = call i32 @rack_log_to_prr(%struct.tcp_rack* %99, i32 3)
  br label %128

101:                                              ; preds = %85, %82
  %102 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %103 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.rack_sendmap*, %struct.rack_sendmap** %8, align 8
  %107 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.rack_sendmap*, %struct.rack_sendmap** %8, align 8
  %110 = getelementptr inbounds %struct.rack_sendmap, %struct.rack_sendmap* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = sub nsw i64 %108, %111
  %113 = icmp slt i64 %105, %112
  br i1 %113, label %114, label %127

114:                                              ; preds = %101
  %115 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %116 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %114
  %120 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %121 = call i64 @ctf_fixed_maxseg(%struct.tcpcb* %120)
  %122 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %123 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  store i64 %121, i64* %124, align 8
  %125 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %126 = call i32 @rack_log_to_prr(%struct.tcp_rack* %125, i32 4)
  br label %127

127:                                              ; preds = %119, %114, %101
  br label %128

128:                                              ; preds = %127, %93
  br label %139

129:                                              ; preds = %68
  %130 = load i32, i32* @rack_tlp_does_nada, align 4
  %131 = call i32 @counter_u64_add(i32 %130, i32 1)
  %132 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %133 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 2
  %135 = call i32 @TAILQ_FIRST(i32* %134)
  %136 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %137 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 3
  store i32 %135, i32* %138, align 8
  br label %139

139:                                              ; preds = %129, %128
  %140 = load i32, i32* @PACE_TMR_RACK, align 4
  %141 = xor i32 %140, -1
  %142 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %143 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = and i32 %145, %141
  store i32 %146, i32* %144, align 8
  store i32 0, i32* %4, align 4
  br label %147

147:                                              ; preds = %139, %29, %20
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i64 @TSTMP_LT(i32, i32) #1

declare dso_local i64 @IN_RECOVERY(i32) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i32 @rack_set_state(%struct.tcpcb*, %struct.tcp_rack*) #1

declare dso_local %struct.rack_sendmap* @rack_check_recovery_mode(%struct.tcpcb*, i32) #1

declare dso_local i32 @rack_log_to_event(%struct.tcp_rack*, i32, i64) #1

declare dso_local i64 @ctf_fixed_maxseg(%struct.tcpcb*) #1

declare dso_local i32 @rack_log_to_prr(%struct.tcp_rack*, i32) #1

declare dso_local i32 @TAILQ_FIRST(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
