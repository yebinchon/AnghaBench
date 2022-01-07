; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athdecode/extr_main.c_opdevice.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athdecode/extr_main.c_opdevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.athregrec = type { i32 }

@state = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unknown device id 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.athregrec*)* @opdevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opdevice(%struct.athregrec* %0) #0 {
  %2 = alloca %struct.athregrec*, align 8
  store %struct.athregrec* %0, %struct.athregrec** %2, align 8
  %3 = load %struct.athregrec*, %struct.athregrec** %2, align 8
  %4 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %11 [
    i32 165, label %6
    i32 166, label %6
    i32 163, label %7
    i32 137, label %7
    i32 164, label %7
    i32 162, label %7
    i32 150, label %8
    i32 149, label %8
    i32 140, label %8
    i32 141, label %8
    i32 154, label %8
    i32 153, label %8
    i32 161, label %8
    i32 160, label %8
    i32 159, label %8
    i32 158, label %8
    i32 157, label %8
    i32 148, label %8
    i32 147, label %8
    i32 146, label %8
    i32 145, label %8
    i32 144, label %8
    i32 143, label %8
    i32 156, label %8
    i32 152, label %8
    i32 151, label %8
    i32 155, label %8
    i32 142, label %8
    i32 139, label %9
    i32 138, label %9
    i32 136, label %10
    i32 135, label %10
    i32 134, label %10
    i32 133, label %10
    i32 132, label %10
    i32 131, label %10
    i32 130, label %10
    i32 129, label %10
    i32 128, label %10
  ]

6:                                                ; preds = %1, %1
  store i32 5210, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 0), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 1, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 1, i32 1), align 4
  br label %17

7:                                                ; preds = %1, %1, %1, %1
  store i32 5211, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 0), align 4
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 1, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 1, i32 1), align 4
  br label %17

8:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i32 5212, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 0), align 4
  store i32 4, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 1, i32 0), align 4
  store i32 5, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 1, i32 1), align 4
  br label %17

9:                                                ; preds = %1, %1
  store i32 5213, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 0), align 4
  store i32 5, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 1, i32 0), align 4
  store i32 9, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 1, i32 1), align 4
  br label %17

10:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i32 5416, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 0), align 4
  store i32 13, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 1, i32 0), align 4
  store i32 8, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 1, i32 1), align 4
  br label %17

11:                                               ; preds = %1
  %12 = load %struct.athregrec*, %struct.athregrec** %2, align 8
  %13 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = call i32 @exit(i32 -1) #3
  unreachable

17:                                               ; preds = %10, %9, %8, %7, %6
  ret void
}

declare dso_local i32 @printf(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
