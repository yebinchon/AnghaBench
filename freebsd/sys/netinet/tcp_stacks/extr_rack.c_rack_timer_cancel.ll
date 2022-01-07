; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_timer_cancel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_timer_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32 }
%struct.tcp_rack = type { i32, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }

@PACE_PKT_OUTPUT = common dso_local global i32 0, align 4
@HPTS_REMOVE_OUTPUT = common dso_local global i32 0, align 4
@PACE_TMR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.tcp_rack*, i32, i32)* @rack_timer_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rack_timer_cancel(%struct.tcpcb* %0, %struct.tcp_rack* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.tcpcb*, align 8
  %6 = alloca %struct.tcp_rack*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %5, align 8
  store %struct.tcp_rack* %1, %struct.tcp_rack** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %11 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PACE_PKT_OUTPUT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %20 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @TSTMP_GEQ(i32 %18, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %27 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i32, i32* @HPTS_REMOVE_OUTPUT, align 4
  %30 = call i32 @tcp_hpts_remove(%struct.TYPE_4__* %28, i32 %29)
  store i32 1, i32* %9, align 4
  br label %31

31:                                               ; preds = %25, %17, %4
  %32 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %33 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PACE_TMR_MASK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %80

39:                                               ; preds = %31
  %40 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %41 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PACE_TMR_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %47 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %49 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %39
  %55 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %56 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @PACE_PKT_OUTPUT, align 4
  %60 = and i32 %58, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %54
  %63 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %64 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %63, i32 0, i32 2
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i32, i32* @HPTS_REMOVE_OUTPUT, align 4
  %67 = call i32 @tcp_hpts_remove(%struct.TYPE_4__* %65, i32 %66)
  store i32 1, i32* %9, align 4
  br label %68

68:                                               ; preds = %62, %54, %39
  %69 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @rack_log_to_cancel(%struct.tcp_rack* %69, i32 %70, i32 %71)
  %73 = load i32, i32* @PACE_TMR_MASK, align 4
  %74 = xor i32 %73, -1
  %75 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %76 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, %74
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %68, %31
  ret void
}

declare dso_local i64 @TSTMP_GEQ(i32, i32) #1

declare dso_local i32 @tcp_hpts_remove(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @rack_log_to_cancel(%struct.tcp_rack*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
