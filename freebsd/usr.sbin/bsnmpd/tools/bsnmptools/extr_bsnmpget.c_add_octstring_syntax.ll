; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/bsnmptools/extr_bsnmpget.c_add_octstring_syntax.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/bsnmptools/extr_bsnmpget.c_add_octstring_syntax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_value = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32* }

@ASN_MAXOCTETSTRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"OctetString len too big - %u\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"malloc() failed - %s\00", align 1
@errno = common dso_local global i32 0, align 4
@SNMP_SYNTAX_OCTETSTRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_value*, %struct.snmp_value*)* @add_octstring_syntax to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_octstring_syntax(%struct.snmp_value* %0, %struct.snmp_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snmp_value*, align 8
  %5 = alloca %struct.snmp_value*, align 8
  store %struct.snmp_value* %0, %struct.snmp_value** %4, align 8
  store %struct.snmp_value* %1, %struct.snmp_value** %5, align 8
  %6 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %7 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ASN_MAXOCTETSTRING, align 8
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %15 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %18)
  store i32 -1, i32* %3, align 4
  br label %66

20:                                               ; preds = %2
  %21 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %22 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32* @malloc(i64 %25)
  %27 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %28 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i32* %26, i32** %30, align 8
  %31 = icmp eq i32* %26, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %20
  %33 = load i32, i32* @LOG_ERR, align 4
  %34 = load i32, i32* @errno, align 4
  %35 = call i32 @strerror(i32 %34)
  %36 = call i32 @syslog(i32 %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  store i32 -1, i32* %3, align 4
  br label %66

37:                                               ; preds = %20
  %38 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %39 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %44 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %49 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @memcpy(i32* %42, i32* %47, i64 %52)
  %54 = load i32, i32* @SNMP_SYNTAX_OCTETSTRING, align 4
  %55 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %56 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %58 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %63 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i64 %61, i64* %65, align 8
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %37, %32, %13
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @warnx(i8*, i64) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
