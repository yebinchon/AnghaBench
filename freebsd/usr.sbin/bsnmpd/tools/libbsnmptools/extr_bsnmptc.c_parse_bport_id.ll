; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptc.c_parse_bport_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptc.c_parse_bport_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_value = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32* }

@SNMP_BPORT_OCTETS = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SNMP_MAX_BPORT_PRIORITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Bad bridge port priority value %d\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Bad port number - %d\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"malloc failed: %s\00", align 1
@SNMP_SYNTAX_OCTETSTRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_value*, i8*)* @parse_bport_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_bport_id(%struct.snmp_value* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snmp_value*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.snmp_value* %0, %struct.snmp_value** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i32, i32* @SNMP_BPORT_OCTETS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load i32, i32* @errno, align 4
  store i32 %16, i32* %7, align 4
  store i32 0, i32* @errno, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @strtoul(i8* %17, i8** %6, i32 10)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @SNMP_MAX_BPORT_PRIORITY, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @errno, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = load i8*, i8** %6, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 46
  br i1 %29, label %30, label %34

30:                                               ; preds = %25, %22, %2
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* @errno, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %77

34:                                               ; preds = %25
  %35 = load i32, i32* %8, align 4
  %36 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %35, i32* %36, align 16
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  store i8* %38, i8** %5, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @strtoul(i8* %39, i8** %6, i32 16)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp sgt i32 %41, 255
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %77

46:                                               ; preds = %34
  %47 = load i32, i32* %8, align 4
  %48 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @SNMP_BPORT_OCTETS, align 4
  %50 = call i32* @malloc(i32 %49)
  %51 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %52 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i32* %50, i32** %54, align 8
  %55 = icmp eq i32* %50, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %46
  %57 = load i32, i32* @LOG_ERR, align 4
  %58 = load i32, i32* @errno, align 4
  %59 = call i32 @strerror(i32 %58)
  %60 = call i32 @syslog(i32 %57, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %77

61:                                               ; preds = %46
  %62 = load i32, i32* @SNMP_BPORT_OCTETS, align 4
  %63 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %64 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i32 %62, i32* %66, align 8
  %67 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %68 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* @SNMP_BPORT_OCTETS, align 4
  %73 = call i32 @memcpy(i32* %71, i32* %15, i32 %72)
  %74 = load i32, i32* @SNMP_SYNTAX_OCTETSTRING, align 4
  %75 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %76 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  store i32 1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %77

77:                                               ; preds = %61, %56, %43, %30
  %78 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %78)
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #2

declare dso_local i32 @warnx(i8*, i32) #2

declare dso_local i32* @malloc(i32) #2

declare dso_local i32 @syslog(i32, i8*, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
