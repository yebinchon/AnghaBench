; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ether.c_ether_OpenInfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ether.c_ether_OpenInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.physical = type { i32 }
%struct.etherdevice = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"negotiating\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"established\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"disconnected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.physical*)* @ether_OpenInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ether_OpenInfo(%struct.physical* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.physical*, align 8
  %4 = alloca %struct.etherdevice*, align 8
  store %struct.physical* %0, %struct.physical** %3, align 8
  %5 = load %struct.physical*, %struct.physical** %3, align 8
  %6 = getelementptr inbounds %struct.physical, %struct.physical* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.etherdevice* @device2ether(i32 %7)
  store %struct.etherdevice* %8, %struct.etherdevice** %4, align 8
  %9 = load %struct.etherdevice*, %struct.etherdevice** %4, align 8
  %10 = getelementptr inbounds %struct.etherdevice, %struct.etherdevice* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %14 [
    i32 128, label %12
    i32 129, label %13
  ]

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %15

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %15

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %15

15:                                               ; preds = %14, %13, %12
  %16 = load i8*, i8** %2, align 8
  ret i8* %16
}

declare dso_local %struct.etherdevice* @device2ether(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
