; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_lm75/extr_snmp_lm75.c_add_sensor.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_lm75/extr_snmp_lm75.c_add_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm75_snmp_sensor = type { i32, i32, i64 }

@.str = private unnamed_addr constant [24 x i8] c"dev.lm75.%d.temperature\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"temperature\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Unable to allocate %zu bytes for resource\00", align 1
@lm75_sensors = common dso_local global i64 0, align 8
@TZ_ZEROC = common dso_local global i32 0, align 4
@sensors = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @add_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_sensor(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.lm75_snmp_sensor*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @sscanf(i8* %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* %4)
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %44

12:                                               ; preds = %1
  store i64 4, i64* %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @update_sensor_sysctl(i32* %5, i64* %6, i32 %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 -1, i32* %2, align 4
  br label %44

17:                                               ; preds = %12
  %18 = call %struct.lm75_snmp_sensor* @calloc(i32 1, i32 16)
  store %struct.lm75_snmp_sensor* %18, %struct.lm75_snmp_sensor** %7, align 8
  %19 = load %struct.lm75_snmp_sensor*, %struct.lm75_snmp_sensor** %7, align 8
  %20 = icmp eq %struct.lm75_snmp_sensor* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @LOG_ERR, align 4
  %23 = call i32 @syslog(i32 %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 16)
  store i32 -1, i32* %2, align 4
  br label %44

24:                                               ; preds = %17
  %25 = load i64, i64* @lm75_sensors, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* @lm75_sensors, align 8
  %27 = load %struct.lm75_snmp_sensor*, %struct.lm75_snmp_sensor** %7, align 8
  %28 = getelementptr inbounds %struct.lm75_snmp_sensor, %struct.lm75_snmp_sensor* %27, i32 0, i32 2
  store i64 %26, i64* %28, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.lm75_snmp_sensor*, %struct.lm75_snmp_sensor** %7, align 8
  %31 = getelementptr inbounds %struct.lm75_snmp_sensor, %struct.lm75_snmp_sensor* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @TZ_ZEROC, align 4
  %34 = sub nsw i32 %32, %33
  %35 = sdiv i32 %34, 10
  %36 = load %struct.lm75_snmp_sensor*, %struct.lm75_snmp_sensor** %7, align 8
  %37 = getelementptr inbounds %struct.lm75_snmp_sensor, %struct.lm75_snmp_sensor* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.lm75_snmp_sensor*, %struct.lm75_snmp_sensor** %7, align 8
  %39 = load i32, i32* @link, align 4
  %40 = call i32 @TAILQ_INSERT_TAIL(i32* @sensors, %struct.lm75_snmp_sensor* %38, i32 %39)
  %41 = load %struct.lm75_snmp_sensor*, %struct.lm75_snmp_sensor** %7, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @update_sensor(%struct.lm75_snmp_sensor* %41, i32 %42)
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %24, %21, %16, %11
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i64 @update_sensor_sysctl(i32*, i64*, i32, i8*) #1

declare dso_local %struct.lm75_snmp_sensor* @calloc(i32, i32) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.lm75_snmp_sensor*, i32) #1

declare dso_local i32 @update_sensor(%struct.lm75_snmp_sensor*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
