; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_parse_server.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_parse_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32* }

@snmp_client = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@SNMP_TRANS_UDP = common dso_local global i64 0, align 8
@SNMP_DEFAULT_LOCAL = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"malloc() failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_server(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = icmp ne i8* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @snmp_parse_server(%struct.TYPE_3__* @snmp_client, i8* %8)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %35

12:                                               ; preds = %1
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @snmp_client, i32 0, i32 0), align 8
  %14 = load i64, i64* @SNMP_TRANS_UDP, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %12
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @snmp_client, i32 0, i32 1), align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = load i32, i32* @SNMP_DEFAULT_LOCAL, align 4
  %21 = call i64 @strlen(i32 %20)
  %22 = add nsw i64 %21, 1
  %23 = call i32* @malloc(i64 %22)
  store i32* %23, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @snmp_client, i32 0, i32 1), align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load i32, i32* @LOG_ERR, align 4
  %27 = load i32, i32* @errno, align 4
  %28 = call i32 @strerror(i32 %27)
  %29 = call i32 @syslog(i32 %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i32 -1, i32* %2, align 4
  br label %35

30:                                               ; preds = %19
  %31 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @snmp_client, i32 0, i32 1), align 8
  %32 = load i32, i32* @SNMP_DEFAULT_LOCAL, align 4
  %33 = call i32 @strcpy(i32* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %16, %12
  store i32 2, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %25, %11
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @snmp_parse_server(%struct.TYPE_3__*, i8*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @strcpy(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
