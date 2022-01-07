; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_snmp_parse_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_snmp_parse_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_pdu = type { i64, i64, i64, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Response has wrong version\00", align 1
@SNMP_ERR_NOSUCHNAME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Error - No Such Name\00", align 1
@SNMP_ERR_NOERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"Error %d in response\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Bad number of bindings in response\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snmp_parse_resp(%struct.snmp_pdu* %0, %struct.snmp_pdu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snmp_pdu*, align 8
  %5 = alloca %struct.snmp_pdu*, align 8
  store %struct.snmp_pdu* %0, %struct.snmp_pdu** %4, align 8
  store %struct.snmp_pdu* %1, %struct.snmp_pdu** %5, align 8
  %6 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %7 = icmp eq %struct.snmp_pdu* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %10 = icmp eq %struct.snmp_pdu* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %2
  store i32 -2, i32* %3, align 4
  br label %74

12:                                               ; preds = %8
  %13 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %14 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %17 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %74

22:                                               ; preds = %12
  %23 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %24 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SNMP_ERR_NOSUCHNAME, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %74

30:                                               ; preds = %22
  %31 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %32 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SNMP_ERR_NOERROR, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %38 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %39)
  store i32 -1, i32* %3, align 4
  br label %74

41:                                               ; preds = %30
  %42 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %43 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %46 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %44, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %41
  %50 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %51 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 129
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %74

56:                                               ; preds = %49, %41
  %57 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %58 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  switch i32 %59, label %72 [
    i32 130, label %60
    i32 129, label %64
    i32 128, label %68
  ]

60:                                               ; preds = %56
  %61 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %62 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %63 = call i32 @snmp_parse_get_resp(%struct.snmp_pdu* %61, %struct.snmp_pdu* %62)
  store i32 %63, i32* %3, align 4
  br label %74

64:                                               ; preds = %56
  %65 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %66 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %67 = call i32 @snmp_parse_getbulk_resp(%struct.snmp_pdu* %65, %struct.snmp_pdu* %66)
  store i32 %67, i32* %3, align 4
  br label %74

68:                                               ; preds = %56
  %69 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %70 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %71 = call i32 @snmp_parse_getnext_resp(%struct.snmp_pdu* %69, %struct.snmp_pdu* %70)
  store i32 %71, i32* %3, align 4
  br label %74

72:                                               ; preds = %56
  br label %73

73:                                               ; preds = %72
  store i32 -2, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %68, %64, %60, %54, %36, %28, %20, %11
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @snmp_parse_get_resp(%struct.snmp_pdu*, %struct.snmp_pdu*) #1

declare dso_local i32 @snmp_parse_getbulk_resp(%struct.snmp_pdu*, %struct.snmp_pdu*) #1

declare dso_local i32 @snmp_parse_getnext_resp(%struct.snmp_pdu*, %struct.snmp_pdu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
