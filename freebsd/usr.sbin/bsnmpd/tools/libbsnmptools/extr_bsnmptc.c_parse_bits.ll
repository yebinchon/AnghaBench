; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptc.c_parse_bits.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptc.c_parse_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_value = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Bad BITS value %s\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"malloc failed: %s\00", align 1
@SNMP_SYNTAX_OCTETSTRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_value*, i8*)* @parse_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_bits(%struct.snmp_value* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snmp_value*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snmp_value* %0, %struct.snmp_value** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* @errno, align 4
  store i32 %13, i32* %10, align 4
  store i32 0, i32* @errno, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @strtoull(i8* %14, i8** %6, i32 16)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* @errno, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %89

22:                                               ; preds = %2
  store i32 8, i32* %9, align 4
  store i32 4, i32* %8, align 4
  br label %23

23:                                               ; preds = %36, %22
  %24 = load i32, i32* %8, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %12, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %39

32:                                               ; preds = %26
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %9, align 4
  %35 = ashr i32 %33, %34
  store i32 %35, i32* %12, align 4
  br label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %8, align 4
  br label %23

39:                                               ; preds = %31, %23
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 1, i32* %8, align 4
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i32, i32* %8, align 4
  %45 = call i32* @malloc(i32 %44)
  %46 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %47 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32* %45, i32** %49, align 8
  %50 = icmp eq i32* %45, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %43
  %52 = load i32, i32* @LOG_ERR, align 4
  %53 = load i32, i32* @errno, align 4
  %54 = call i32 @strerror(i32 %53)
  %55 = call i32 @syslog(i32 %52, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  store i32 -1, i32* %3, align 4
  br label %89

56:                                               ; preds = %43
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %59 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i32 %57, i32* %61, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %80, %56
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %85

66:                                               ; preds = %62
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %12, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* %9, align 4
  %71 = ashr i32 %69, %70
  %72 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %73 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %71, i32* %79, align 4
  br label %80

80:                                               ; preds = %66
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 8
  store i32 %84, i32* %9, align 4
  br label %62

85:                                               ; preds = %62
  %86 = load i32, i32* @SNMP_SYNTAX_OCTETSTRING, align 4
  %87 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %88 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  store i32 1, i32* %3, align 4
  br label %89

89:                                               ; preds = %85, %51, %18
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @strtoull(i8*, i8**, i32) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
