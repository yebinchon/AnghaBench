; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_bridgestp.c_bstp_set_port_tc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_bridgestp.c_bstp_set_port_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstp_port = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.bstp_state* }
%struct.TYPE_2__ = type { i32 }
%struct.bstp_state = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"%s -> TC_ACTIVE\0A\00", align 1
@taskqueue_swi = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"%s -> TC_INACTIVE\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"%s -> TC_LEARNING\0A\00", align 1
@BSTP_PORT_NEWINFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"%s -> TC_DETECTED\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"%s -> TC_TCN\0A\00", align 1
@BSTP_ROLE_DESIGNATED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"%s -> TC_TC\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"%s -> TC_PROPAG\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"%s -> TC_ACK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bstp_port*, i32)* @bstp_set_port_tc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bstp_set_port_tc(%struct.bstp_port* %0, i32 %1) #0 {
  %3 = alloca %struct.bstp_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bstp_state*, align 8
  store %struct.bstp_port* %0, %struct.bstp_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %7 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %6, i32 0, i32 12
  %8 = load %struct.bstp_state*, %struct.bstp_state** %7, align 8
  store %struct.bstp_state* %8, %struct.bstp_state** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %11 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %13 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %145 [
    i32 134, label %15
    i32 132, label %22
    i32 131, label %40
    i32 133, label %55
    i32 128, label %79
    i32 129, label %88
    i32 130, label %112
    i32 135, label %131
  ]

15:                                               ; preds = %2
  %16 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %17 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @DPRINTF(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %145

22:                                               ; preds = %2
  %23 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %24 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %23, i32 0, i32 5
  %25 = call i32 @bstp_timer_stop(i32* %24)
  %26 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %27 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %26, i32 0, i32 1
  store i32 1, i32* %27, align 4
  %28 = load i32, i32* @taskqueue_swi, align 4
  %29 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %30 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %29, i32 0, i32 7
  %31 = call i32 @taskqueue_enqueue(i32 %28, i32* %30)
  %32 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %33 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %32, i32 0, i32 2
  store i32 0, i32* %33, align 8
  %34 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %35 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %34, i32 0, i32 3
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @DPRINTF(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %145

40:                                               ; preds = %2
  %41 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %42 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %41, i32 0, i32 10
  store i32 0, i32* %42, align 8
  %43 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %44 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %43, i32 0, i32 9
  store i32 0, i32* %44, align 4
  %45 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %46 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %45, i32 0, i32 4
  store i32 0, i32* %46, align 8
  %47 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %48 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %47, i32 0, i32 6
  store i32 0, i32* %48, align 8
  %49 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %50 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @DPRINTF(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  br label %145

55:                                               ; preds = %2
  %56 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %57 = call i32 @bstp_set_timer_tc(%struct.bstp_port* %56)
  %58 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %59 = call i32 @bstp_set_other_tcprop(%struct.bstp_port* %58)
  %60 = load i32, i32* @BSTP_PORT_NEWINFO, align 4
  %61 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %62 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %61, i32 0, i32 11
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.bstp_state*, %struct.bstp_state** %5, align 8
  %66 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %67 = call i32 @bstp_transmit(%struct.bstp_state* %65, %struct.bstp_port* %66)
  %68 = load %struct.bstp_state*, %struct.bstp_state** %5, align 8
  %69 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %68, i32 0, i32 0
  %70 = call i32 @getmicrotime(i32* %69)
  %71 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %72 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %71, i32 0, i32 3
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @DPRINTF(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  %77 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %78 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %77, i32 0, i32 0
  store i32 134, i32* %78, align 8
  br label %145

79:                                               ; preds = %2
  %80 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %81 = call i32 @bstp_set_timer_tc(%struct.bstp_port* %80)
  %82 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %83 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %82, i32 0, i32 3
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @DPRINTF(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %2, %79
  %89 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %90 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %89, i32 0, i32 10
  store i32 0, i32* %90, align 8
  %91 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %92 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %91, i32 0, i32 9
  store i32 0, i32* %92, align 4
  %93 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %94 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %93, i32 0, i32 8
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @BSTP_ROLE_DESIGNATED, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %88
  %99 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %100 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %99, i32 0, i32 2
  store i32 1, i32* %100, align 8
  br label %101

101:                                              ; preds = %98, %88
  %102 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %103 = call i32 @bstp_set_other_tcprop(%struct.bstp_port* %102)
  %104 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %105 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %104, i32 0, i32 3
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @DPRINTF(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %108)
  %110 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %111 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %110, i32 0, i32 0
  store i32 134, i32* %111, align 8
  br label %145

112:                                              ; preds = %2
  %113 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %114 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %113, i32 0, i32 1
  store i32 1, i32* %114, align 4
  %115 = load i32, i32* @taskqueue_swi, align 4
  %116 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %117 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %116, i32 0, i32 7
  %118 = call i32 @taskqueue_enqueue(i32 %115, i32* %117)
  %119 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %120 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %119, i32 0, i32 6
  store i32 0, i32* %120, align 8
  %121 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %122 = call i32 @bstp_set_timer_tc(%struct.bstp_port* %121)
  %123 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %124 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %123, i32 0, i32 3
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @DPRINTF(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %127)
  %129 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %130 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %129, i32 0, i32 0
  store i32 134, i32* %130, align 8
  br label %145

131:                                              ; preds = %2
  %132 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %133 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %132, i32 0, i32 5
  %134 = call i32 @bstp_timer_stop(i32* %133)
  %135 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %136 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %135, i32 0, i32 4
  store i32 0, i32* %136, align 8
  %137 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %138 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %137, i32 0, i32 3
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @DPRINTF(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %141)
  %143 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %144 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %143, i32 0, i32 0
  store i32 134, i32* %144, align 8
  br label %145

145:                                              ; preds = %2, %131, %112, %101, %55, %40, %22, %15
  ret void
}

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @bstp_timer_stop(i32*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

declare dso_local i32 @bstp_set_timer_tc(%struct.bstp_port*) #1

declare dso_local i32 @bstp_set_other_tcprop(%struct.bstp_port*) #1

declare dso_local i32 @bstp_transmit(%struct.bstp_state*, %struct.bstp_port*) #1

declare dso_local i32 @getmicrotime(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
