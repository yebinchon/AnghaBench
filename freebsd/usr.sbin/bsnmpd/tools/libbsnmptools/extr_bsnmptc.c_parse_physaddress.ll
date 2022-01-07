; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptc.c_parse_physaddress.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptc.c_parse_physaddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_value = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32* }

@SNMP_PHYSADDR_OCTETS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Integer value %s not supported\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed reading octet - %s\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"malloc failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@SNMP_SYNTAX_OCTETSTRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_value*, i8*)* @parse_physaddress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_physaddress(%struct.snmp_value* %0, i8* %1) #0 {
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
  %12 = load i32, i32* @SNMP_PHYSADDR_OCTETS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %42, %2
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 5
  br i1 %18, label %19, label %45

19:                                               ; preds = %16
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @strtoul(i8* %20, i8** %6, i32 16)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp sgt i32 %22, 255
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %25)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %84

27:                                               ; preds = %19
  %28 = load i8*, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 58
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %84

35:                                               ; preds = %27
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %15, i64 %38
  store i32 %36, i32* %39, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  store i8* %41, i8** %5, align 8
  br label %42

42:                                               ; preds = %35
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %16

45:                                               ; preds = %16
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @strtoul(i8* %46, i8** %6, i32 16)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp sgt i32 %48, 255
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %51)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %84

53:                                               ; preds = %45
  %54 = load i32, i32* %8, align 4
  %55 = getelementptr inbounds i32, i32* %15, i64 5
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @SNMP_PHYSADDR_OCTETS, align 4
  %57 = call i32* @malloc(i32 %56)
  %58 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %59 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i32* %57, i32** %61, align 8
  %62 = icmp eq i32* %57, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %53
  %64 = load i32, i32* @LOG_ERR, align 4
  %65 = load i32, i32* @errno, align 4
  %66 = call i32 @strerror(i32 %65)
  %67 = call i32 @syslog(i32 %64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %84

68:                                               ; preds = %53
  %69 = load i32, i32* @SNMP_PHYSADDR_OCTETS, align 4
  %70 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %71 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 8
  %74 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %75 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* @SNMP_PHYSADDR_OCTETS, align 4
  %80 = call i32 @memcpy(i32* %78, i32* %15, i32 %79)
  %81 = load i32, i32* @SNMP_SYNTAX_OCTETSTRING, align 4
  %82 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %83 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  store i32 1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %84

84:                                               ; preds = %68, %63, %50, %32, %24
  %85 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %85)
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #2

declare dso_local i32 @warnx(i8*, i8*) #2

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
