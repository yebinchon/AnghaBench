; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_parse_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_parse_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Error parsing version\00", align 1
@SNMP_V1 = common dso_local global i32 0, align 4
@snmp_client = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@SNMP_V2c = common dso_local global i32 0, align 4
@SNMP_V3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Unsupported SNMP version - %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_version(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load i64, i64* @errno, align 8
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %5, align 4
  store i64 0, i64* @errno, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @strtoul(i8* %12, i32* null, i32 10)
  store i32 %13, i32* %4, align 4
  %14 = load i64, i64* @errno, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = call i32 @warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  store i64 %19, i64* @errno, align 8
  store i32 -1, i32* %2, align 4
  br label %36

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  switch i32 %21, label %28 [
    i32 1, label %22
    i32 2, label %24
    i32 3, label %26
  ]

22:                                               ; preds = %20
  %23 = load i32, i32* @SNMP_V1, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmp_client, i32 0, i32 0), align 4
  br label %33

24:                                               ; preds = %20
  %25 = load i32, i32* @SNMP_V2c, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmp_client, i32 0, i32 0), align 4
  br label %33

26:                                               ; preds = %20
  %27 = load i32, i32* @SNMP_V3, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmp_client, i32 0, i32 0), align 4
  br label %33

28:                                               ; preds = %20
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  store i64 %32, i64* @errno, align 8
  store i32 -1, i32* %2, align 4
  br label %36

33:                                               ; preds = %26, %24, %22
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  store i64 %35, i64* @errno, align 8
  store i32 2, i32* %2, align 4
  br label %36

36:                                               ; preds = %33, %28, %16
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @warnx(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
