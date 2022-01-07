; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_bridgestp.c_bstp_set_port_role.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_bridgestp.c_bstp_set_port_role.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstp_port = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i64, i32, i32, i32, i32, i32, %struct.bstp_state* }
%struct.TYPE_2__ = type { i32 }
%struct.bstp_state = type { i64 }

@BSTP_DEFAULT_FORWARD_DELAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s role -> ALT/BACK/DISABLED\0A\00", align 1
@BSTP_IFSTATE_DISCARDING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"%s role -> ROOT\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"%s role -> DESIGNATED\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bstp_port*, i32)* @bstp_set_port_role to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bstp_set_port_role(%struct.bstp_port* %0, i32 %1) #0 {
  %3 = alloca %struct.bstp_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bstp_state*, align 8
  store %struct.bstp_port* %0, %struct.bstp_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %7 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %6, i32 0, i32 14
  %8 = load %struct.bstp_state*, %struct.bstp_state** %7, align 8
  store %struct.bstp_state* %8, %struct.bstp_state** %5, align 8
  %9 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %10 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %118

15:                                               ; preds = %2
  %16 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %17 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %52 [
    i32 129, label %19
    i32 131, label %26
    i32 132, label %34
    i32 128, label %47
  ]

19:                                               ; preds = %15
  %20 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %21 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %20, i32 0, i32 12
  %22 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %23 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @bstp_timer_start(i32* %21, i32 %24)
  br label %52

26:                                               ; preds = %15
  %27 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %28 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %27, i32 0, i32 13
  %29 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %30 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = mul nsw i32 %31, 2
  %33 = call i32 @bstp_timer_start(i32* %28, i32 %32)
  br label %34

34:                                               ; preds = %15, %26
  %35 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %36 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %35, i32 0, i32 12
  %37 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %38 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @bstp_timer_start(i32* %36, i32 %39)
  %41 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %42 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %41, i32 0, i32 11
  store i32 0, i32* %42, align 8
  %43 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %44 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %43, i32 0, i32 4
  store i32 1, i32* %44, align 8
  %45 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %46 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %45, i32 0, i32 10
  store i32 0, i32* %46, align 4
  br label %52

47:                                               ; preds = %15
  %48 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %49 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %48, i32 0, i32 9
  %50 = load i32, i32* @BSTP_DEFAULT_FORWARD_DELAY, align 4
  %51 = call i32 @bstp_timer_start(i32* %49, i32 %50)
  br label %52

52:                                               ; preds = %15, %47, %34, %19
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %55 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %57 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %56, i32 0, i32 8
  store i64 0, i64* %57, align 8
  %58 = load %struct.bstp_state*, %struct.bstp_state** %5, align 8
  %59 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  %60 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %61 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  switch i32 %62, label %115 [
    i32 129, label %63
    i32 132, label %63
    i32 131, label %63
    i32 128, label %85
    i32 130, label %100
  ]

63:                                               ; preds = %52, %52, %52
  %64 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %65 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %64, i32 0, i32 7
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @DPRINTF(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %71 = load i32, i32* @BSTP_IFSTATE_DISCARDING, align 4
  %72 = call i32 @bstp_set_port_state(%struct.bstp_port* %70, i32 %71)
  %73 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %74 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %73, i32 0, i32 9
  %75 = call i32 @bstp_timer_stop(i32* %74)
  %76 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %77 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %76, i32 0, i32 12
  %78 = call i32 @bstp_timer_latch(i32* %77)
  %79 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %80 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %79, i32 0, i32 11
  store i32 0, i32* %80, align 8
  %81 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %82 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %81, i32 0, i32 4
  store i32 1, i32* %82, align 8
  %83 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %84 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %83, i32 0, i32 10
  store i32 0, i32* %84, align 4
  br label %115

85:                                               ; preds = %52
  %86 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %87 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %86, i32 0, i32 7
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @DPRINTF(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  %92 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %93 = load i32, i32* @BSTP_IFSTATE_DISCARDING, align 4
  %94 = call i32 @bstp_set_port_state(%struct.bstp_port* %92, i32 %93)
  %95 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %96 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %95, i32 0, i32 9
  %97 = call i32 @bstp_timer_latch(i32* %96)
  %98 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %99 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %98, i32 0, i32 8
  store i64 0, i64* %99, align 8
  br label %115

100:                                              ; preds = %52
  %101 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %102 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %101, i32 0, i32 7
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @DPRINTF(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  %107 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %108 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %107, i32 0, i32 6
  %109 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %110 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @bstp_timer_start(i32* %108, i32 %111)
  %113 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %114 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %113, i32 0, i32 5
  store i32 0, i32* %114, align 4
  br label %115

115:                                              ; preds = %52, %100, %85, %63
  %116 = load %struct.bstp_port*, %struct.bstp_port** %3, align 8
  %117 = call i32 @bstp_update_tc(%struct.bstp_port* %116)
  br label %118

118:                                              ; preds = %115, %14
  ret void
}

declare dso_local i32 @bstp_timer_start(i32*, i32) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @bstp_set_port_state(%struct.bstp_port*, i32) #1

declare dso_local i32 @bstp_timer_stop(i32*) #1

declare dso_local i32 @bstp_timer_latch(i32*) #1

declare dso_local i32 @bstp_update_tc(%struct.bstp_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
