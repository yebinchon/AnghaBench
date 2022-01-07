; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_snmp_object_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_snmp_object_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_toolinfo = type { i64, i32 }
%struct.snmp_object = type { i32 }

@SNMP_MAX_BINDINGS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Too many bindings in PDU - %u\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"malloc() failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Invalid OID - %s\00", align 1
@link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snmp_object_add(%struct.snmp_toolinfo* %0, i64 (%struct.snmp_toolinfo*, %struct.snmp_object*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snmp_toolinfo*, align 8
  %6 = alloca i64 (%struct.snmp_toolinfo*, %struct.snmp_object*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.snmp_object*, align 8
  store %struct.snmp_toolinfo* %0, %struct.snmp_toolinfo** %5, align 8
  store i64 (%struct.snmp_toolinfo*, %struct.snmp_object*, i8*)* %1, i64 (%struct.snmp_toolinfo*, %struct.snmp_object*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %10 = icmp eq %struct.snmp_toolinfo* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %55

12:                                               ; preds = %3
  %13 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %14 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SNMP_MAX_BINDINGS, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %20 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %23)
  store i32 -1, i32* %4, align 4
  br label %55

25:                                               ; preds = %12
  %26 = call %struct.snmp_object* @calloc(i32 1, i32 4)
  store %struct.snmp_object* %26, %struct.snmp_object** %8, align 8
  %27 = icmp eq %struct.snmp_object* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i32, i32* @LOG_ERR, align 4
  %30 = load i32, i32* @errno, align 4
  %31 = call i32 @strerror(i32 %30)
  %32 = call i32 @syslog(i32 %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  store i32 -1, i32* %4, align 4
  br label %55

33:                                               ; preds = %25
  %34 = load i64 (%struct.snmp_toolinfo*, %struct.snmp_object*, i8*)*, i64 (%struct.snmp_toolinfo*, %struct.snmp_object*, i8*)** %6, align 8
  %35 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %36 = load %struct.snmp_object*, %struct.snmp_object** %8, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i64 %34(%struct.snmp_toolinfo* %35, %struct.snmp_object* %36, i8* %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  %43 = load %struct.snmp_object*, %struct.snmp_object** %8, align 8
  %44 = call i32 @free(%struct.snmp_object* %43)
  store i32 -1, i32* %4, align 4
  br label %55

45:                                               ; preds = %33
  %46 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %47 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %47, align 8
  %50 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %51 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %50, i32 0, i32 1
  %52 = load %struct.snmp_object*, %struct.snmp_object** %8, align 8
  %53 = load i32, i32* @link, align 4
  %54 = call i32 @SLIST_INSERT_HEAD(i32* %51, %struct.snmp_object* %52, i32 %53)
  store i32 1, i32* %4, align 4
  br label %55

55:                                               ; preds = %45, %40, %28, %18, %11
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local %struct.snmp_object* @calloc(i32, i32) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @free(%struct.snmp_object*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.snmp_object*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
