; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptc.c_parse_octetstring.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptc.c_parse_octetstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_value = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32* }

@MAX_OCTSTRING_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Octetstring too long - %d is max allowed\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"malloc failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@SNMP_SYNTAX_OCTETSTRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_value*, i8*)* @parse_octetstring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_octetstring(%struct.snmp_value* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snmp_value*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.snmp_value* %0, %struct.snmp_value** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i64 @strlen(i8* %7)
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* @MAX_OCTSTRING_LEN, align 8
  %10 = icmp uge i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i64, i64* @MAX_OCTSTRING_LEN, align 8
  %13 = sub i64 %12, 1
  %14 = call i32 @warnx(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %13)
  store i32 -1, i32* %3, align 4
  br label %49

15:                                               ; preds = %2
  %16 = load i64, i64* %6, align 8
  %17 = call i32* @malloc(i64 %16)
  %18 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %19 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i32* %17, i32** %21, align 8
  %22 = icmp eq i32* %17, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %15
  %24 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %25 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* @LOG_ERR, align 4
  %29 = load i32, i32* @errno, align 4
  %30 = call i32 @strerror(i32 %29)
  %31 = call i32 @syslog(i32 %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  store i32 -1, i32* %3, align 4
  br label %49

32:                                               ; preds = %15
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %35 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i64 %33, i64* %37, align 8
  %38 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %39 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @memcpy(i32* %42, i8* %43, i64 %44)
  %46 = load i32, i32* @SNMP_SYNTAX_OCTETSTRING, align 4
  %47 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %48 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %32, %23, %11
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @warnx(i8*, i64) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
