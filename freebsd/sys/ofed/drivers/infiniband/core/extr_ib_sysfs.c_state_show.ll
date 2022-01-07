; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_sysfs.c_state_show.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_sysfs.c_state_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_port = type { i32, i32 }
%struct.port_attribute = type { i32 }
%struct.ib_port_attr = type { i64 }

@state_show.state_name = internal global [134 x i8*] [i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"NOP\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"INIT\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"DOWN\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"ARMED\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"ACTIVE_DEFER\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"ACTIVE\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%d: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ib_port*, %struct.port_attribute*, i8*)* @state_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @state_show(%struct.ib_port* %0, %struct.port_attribute* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ib_port*, align 8
  %6 = alloca %struct.port_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ib_port_attr, align 8
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
  br label %42

21:                                               ; preds = %3
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %8, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %8, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp uge i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %8, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @ARRAY_SIZE(i8** getelementptr inbounds ([134 x i8*], [134 x i8*]* @state_show.state_name, i64 0, i64 0))
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %8, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds [134 x i8*], [134 x i8*]* @state_show.state_name, i64 0, i64 %35
  %37 = load i8*, i8** %36, align 8
  br label %39

38:                                               ; preds = %28, %21
  br label %39

39:                                               ; preds = %38, %33
  %40 = phi i8* [ %37, %33 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), %38 ]
  %41 = call i64 @sprintf(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i64 %24, i8* %40)
  store i64 %41, i64* %4, align 8
  br label %42

42:                                               ; preds = %39, %19
  %43 = load i64, i64* %4, align 8
  ret i64 %43
}

declare dso_local i64 @ib_query_port(i32, i32, %struct.ib_port_attr*) #1

declare dso_local i64 @sprintf(i8*, i8*, i64, i8*) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
