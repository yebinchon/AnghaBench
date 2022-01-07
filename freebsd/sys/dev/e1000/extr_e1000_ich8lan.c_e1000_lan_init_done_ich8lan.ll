; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_lan_init_done_ich8lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_lan_init_done_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@E1000_ICH8_LAN_INIT_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"e1000_lan_init_done_ich8lan\00", align 1
@E1000_STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_LAN_INIT_DONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"LAN_INIT_DONE not set, increase timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*)* @e1000_lan_init_done_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_lan_init_done_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %5 = load i64, i64* @E1000_ICH8_LAN_INIT_TIMEOUT, align 8
  store i64 %5, i64* %4, align 8
  %6 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %22, %1
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = load i32, i32* @E1000_STATUS, align 4
  %10 = call i64 @E1000_READ_REG(%struct.e1000_hw* %8, i32 %9)
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* @E1000_STATUS_LAN_INIT_DONE, align 8
  %12 = load i64, i64* %3, align 8
  %13 = and i64 %12, %11
  store i64 %13, i64* %3, align 8
  %14 = call i32 @usec_delay(i32 100)
  br label %15

15:                                               ; preds = %7
  %16 = load i64, i64* %3, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* %4, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, i64* %4, align 8
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %18, %15
  %23 = phi i1 [ false, %15 ], [ %21, %18 ]
  br i1 %23, label %7, label %24

24:                                               ; preds = %22
  %25 = load i64, i64* %4, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %24
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %31 = load i32, i32* @E1000_STATUS, align 4
  %32 = call i64 @E1000_READ_REG(%struct.e1000_hw* %30, i32 %31)
  store i64 %32, i64* %3, align 8
  %33 = load i64, i64* @E1000_STATUS_LAN_INIT_DONE, align 8
  %34 = xor i64 %33, -1
  %35 = load i64, i64* %3, align 8
  %36 = and i64 %35, %34
  store i64 %36, i64* %3, align 8
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %38 = load i32, i32* @E1000_STATUS, align 4
  %39 = load i64, i64* %3, align 8
  %40 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %37, i32 %38, i64 %39)
  ret void
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
