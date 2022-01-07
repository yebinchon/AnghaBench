; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_scalars.c_OS_getSystemDate.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_scalars.c_OS_getSystemDate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_value = type { i32 }
%struct.tm = type { i32 }
%struct.timeval = type { i32, i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"gettimeofday failed: %m\00", align 1
@SNMP_ERR_GENERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"localtime_r() failed: %m \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_value*)* @OS_getSystemDate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OS_getSystemDate(%struct.snmp_value* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snmp_value*, align 8
  %4 = alloca [11 x i32], align 16
  %5 = alloca %struct.tm, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.timeval, align 4
  %8 = alloca i32, align 4
  store %struct.snmp_value* %0, %struct.snmp_value** %3, align 8
  %9 = call i64 @gettimeofday(%struct.timeval* %7, i32* null)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @LOG_ERR, align 4
  %13 = call i32 @syslog(i32 %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %14, i32* %2, align 4
  br label %34

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = call i32* @localtime_r(i32* %6, %struct.tm* %5)
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* @LOG_ERR, align 4
  %22 = call i32 @syslog(i32 %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %23, i32* %2, align 4
  br label %34

24:                                               ; preds = %15
  %25 = getelementptr inbounds [11 x i32], [11 x i32]* %4, i64 0, i64 0
  %26 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %27, 100000
  %29 = call i32 @make_date_time(i32* %25, %struct.tm* %5, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.snmp_value*, %struct.snmp_value** %3, align 8
  %31 = getelementptr inbounds [11 x i32], [11 x i32]* %4, i64 0, i64 0
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @string_get(%struct.snmp_value* %30, i32* %31, i32 %32)
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %24, %20, %11
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @syslog(i32, i8*) #1

declare dso_local i32* @localtime_r(i32*, %struct.tm*) #1

declare dso_local i32 @make_date_time(i32*, %struct.tm*, i32) #1

declare dso_local i32 @string_get(%struct.snmp_value*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
