; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_sysfs.c_phys_state_show.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_sysfs.c_phys_state_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_port = type { i32, i32 }
%struct.port_attribute = type { i32 }
%struct.ib_port_attr = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"1: Sleep\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"2: Polling\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"3: Disabled\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"4: PortConfigurationTraining\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"5: LinkUp\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"6: LinkErrorRecovery\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"7: Phy Test\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"%d: <unknown>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ib_port*, %struct.port_attribute*, i8*)* @phys_state_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @phys_state_show(%struct.ib_port* %0, %struct.port_attribute* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ib_port*, align 8
  %6 = alloca %struct.port_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ib_port_attr, align 4
  %9 = alloca i64, align 8
  store %struct.ib_port* %0, %struct.ib_port** %5, align 8
  store %struct.port_attribute* %1, %struct.port_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.ib_port*, %struct.ib_port** %5, align 8
  %11 = getelementptr inbounds %struct.ib_port, %struct.ib_port* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ib_port*, %struct.ib_port** %5, align 8
  %14 = getelementptr inbounds %struct.ib_port, %struct.ib_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @ib_query_port(i32 %12, i32 %15, %struct.ib_port_attr* %8)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i64, i64* %9, align 8
  store i64 %20, i64* %4, align 8
  br label %50

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %8, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %45 [
    i32 1, label %24
    i32 2, label %27
    i32 3, label %30
    i32 4, label %33
    i32 5, label %36
    i32 6, label %39
    i32 7, label %42
  ]

24:                                               ; preds = %21
  %25 = load i8*, i8** %7, align 8
  %26 = call i64 (i8*, i8*, ...) @sprintf(i8* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i64 %26, i64* %4, align 8
  br label %50

27:                                               ; preds = %21
  %28 = load i8*, i8** %7, align 8
  %29 = call i64 (i8*, i8*, ...) @sprintf(i8* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i64 %29, i64* %4, align 8
  br label %50

30:                                               ; preds = %21
  %31 = load i8*, i8** %7, align 8
  %32 = call i64 (i8*, i8*, ...) @sprintf(i8* %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i64 %32, i64* %4, align 8
  br label %50

33:                                               ; preds = %21
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 (i8*, i8*, ...) @sprintf(i8* %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  store i64 %35, i64* %4, align 8
  br label %50

36:                                               ; preds = %21
  %37 = load i8*, i8** %7, align 8
  %38 = call i64 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store i64 %38, i64* %4, align 8
  br label %50

39:                                               ; preds = %21
  %40 = load i8*, i8** %7, align 8
  %41 = call i64 (i8*, i8*, ...) @sprintf(i8* %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  store i64 %41, i64* %4, align 8
  br label %50

42:                                               ; preds = %21
  %43 = load i8*, i8** %7, align 8
  %44 = call i64 (i8*, i8*, ...) @sprintf(i8* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  store i64 %44, i64* %4, align 8
  br label %50

45:                                               ; preds = %21
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %8, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 (i8*, i8*, ...) @sprintf(i8* %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %48)
  store i64 %49, i64* %4, align 8
  br label %50

50:                                               ; preds = %45, %42, %39, %36, %33, %30, %27, %24, %19
  %51 = load i64, i64* %4, align 8
  ret i64 %51
}

declare dso_local i64 @ib_query_port(i32, i32, %struct.ib_port_attr*) #1

declare dso_local i64 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
