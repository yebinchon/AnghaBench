; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/bsnmptools/extr_bsnmpget.c_parse_int_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/bsnmptools/extr_bsnmpget.c_parse_int_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_object = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Unknown enumerated integer type - %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_object*, i8*)* @parse_int_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_int_string(%struct.snmp_object* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snmp_object*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.snmp_object* %0, %struct.snmp_object** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = call i64 @isdigit(i8 signext %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.snmp_object*, %struct.snmp_object** %4, align 8
  %14 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %13, i32 0, i32 0
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @parse_int(%struct.TYPE_6__* %14, i8* %15)
  store i32 %16, i32* %3, align 4
  br label %43

17:                                               ; preds = %2
  %18 = load %struct.snmp_object*, %struct.snmp_object** %4, align 8
  %19 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = icmp eq %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @warnx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %23)
  store i32 -1, i32* %3, align 4
  br label %43

25:                                               ; preds = %17
  %26 = load %struct.snmp_object*, %struct.snmp_object** %4, align 8
  %27 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @enum_number_lookup(i32 %30, i8* %31)
  store i32 %32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @warnx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %34, %25
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.snmp_object*, %struct.snmp_object** %4, align 8
  %40 = getelementptr inbounds %struct.snmp_object, %struct.snmp_object* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 8
  store i32 1, i32* %3, align 4
  br label %43

43:                                               ; preds = %37, %22, %12
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @parse_int(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @enum_number_lookup(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
