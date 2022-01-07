; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/bsnmptools/extr_bsnmpget.c_parse_pdu_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/bsnmptools/extr_bsnmpget.c_parse_pdu_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_toolinfo = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"getbulk\00", align 1
@SNMP_PDU_GETBULK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"getnext\00", align 1
@SNMP_PDU_GETNEXT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@SNMP_PDU_GET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"PDU type '%s' not supported.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_toolinfo*, i8*)* @parse_pdu_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_pdu_type(%struct.snmp_toolinfo* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snmp_toolinfo*, align 8
  %5 = alloca i8*, align 8
  store %struct.snmp_toolinfo* %0, %struct.snmp_toolinfo** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = icmp ne i8* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @strcasecmp(i8* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %15 = load i32, i32* @SNMP_PDU_GETBULK, align 4
  %16 = call i32 @SET_PDUTYPE(%struct.snmp_toolinfo* %14, i32 %15)
  br label %38

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @strcasecmp(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %23 = load i32, i32* @SNMP_PDU_GETNEXT, align 4
  %24 = call i32 @SET_PDUTYPE(%struct.snmp_toolinfo* %22, i32 %23)
  br label %37

25:                                               ; preds = %17
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @strcasecmp(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %31 = load i32, i32* @SNMP_PDU_GET, align 4
  %32 = call i32 @SET_PDUTYPE(%struct.snmp_toolinfo* %30, i32 %31)
  br label %36

33:                                               ; preds = %25
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %34)
  store i32 -1, i32* %3, align 4
  br label %39

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %21
  br label %38

38:                                               ; preds = %37, %13
  store i32 2, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %33
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @SET_PDUTYPE(%struct.snmp_toolinfo*, i32) #1

declare dso_local i32 @warnx(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
