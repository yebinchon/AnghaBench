; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpmap.c_snmp_mapping_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpmap.c_snmp_mapping_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_toolinfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }

@_bsnmptools_debug = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"No snmptool context!\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"No mappings!\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"snmp_nodelist:\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"snmp_intlist:\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"snmp_octlist:\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"snmp_oidlist:\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"snmp_iplist:\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"snmp_ticklist:\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"snmp_cntlist:\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"snmp_gaugelist:\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"snmp_cnt64list:\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"snmp_enumlist:\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"snmp_tablelist:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snmp_mapping_dump(%struct.snmp_toolinfo* %0) #0 {
  %2 = alloca %struct.snmp_toolinfo*, align 8
  store %struct.snmp_toolinfo* %0, %struct.snmp_toolinfo** %2, align 8
  %3 = load i32, i32* @_bsnmptools_debug, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %76

6:                                                ; preds = %1
  %7 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %2, align 8
  %8 = icmp eq %struct.snmp_toolinfo* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32, i32* @stderr, align 4
  %11 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %76

12:                                               ; preds = %6
  %13 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %2, align 8
  %14 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %13, i32 0, i32 11
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %76

20:                                               ; preds = %12
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %23 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %2, align 8
  %24 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %23, i32 0, i32 10
  %25 = call i32 @snmp_mapping_dumplist(i32* %24)
  %26 = load i32, i32* @stderr, align 4
  %27 = call i32 @fprintf(i32 %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %28 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %2, align 8
  %29 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %28, i32 0, i32 9
  %30 = call i32 @snmp_mapping_dumplist(i32* %29)
  %31 = load i32, i32* @stderr, align 4
  %32 = call i32 @fprintf(i32 %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %33 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %2, align 8
  %34 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %33, i32 0, i32 8
  %35 = call i32 @snmp_mapping_dumplist(i32* %34)
  %36 = load i32, i32* @stderr, align 4
  %37 = call i32 @fprintf(i32 %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %38 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %2, align 8
  %39 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %38, i32 0, i32 7
  %40 = call i32 @snmp_mapping_dumplist(i32* %39)
  %41 = load i32, i32* @stderr, align 4
  %42 = call i32 @fprintf(i32 %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %43 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %2, align 8
  %44 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %43, i32 0, i32 6
  %45 = call i32 @snmp_mapping_dumplist(i32* %44)
  %46 = load i32, i32* @stderr, align 4
  %47 = call i32 @fprintf(i32 %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %48 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %2, align 8
  %49 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %48, i32 0, i32 5
  %50 = call i32 @snmp_mapping_dumplist(i32* %49)
  %51 = load i32, i32* @stderr, align 4
  %52 = call i32 @fprintf(i32 %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %53 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %2, align 8
  %54 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %53, i32 0, i32 4
  %55 = call i32 @snmp_mapping_dumplist(i32* %54)
  %56 = load i32, i32* @stderr, align 4
  %57 = call i32 @fprintf(i32 %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %58 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %2, align 8
  %59 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %58, i32 0, i32 3
  %60 = call i32 @snmp_mapping_dumplist(i32* %59)
  %61 = load i32, i32* @stderr, align 4
  %62 = call i32 @fprintf(i32 %61, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %63 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %2, align 8
  %64 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %63, i32 0, i32 2
  %65 = call i32 @snmp_mapping_dumplist(i32* %64)
  %66 = load i32, i32* @stderr, align 4
  %67 = call i32 @fprintf(i32 %66, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  %68 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %2, align 8
  %69 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %68, i32 0, i32 1
  %70 = call i32 @snmp_mapping_dumplist(i32* %69)
  %71 = load i32, i32* @stderr, align 4
  %72 = call i32 @fprintf(i32 %71, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  %73 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %2, align 8
  %74 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %73, i32 0, i32 0
  %75 = call i32 @snmp_mapping_dumptable(i32* %74)
  br label %76

76:                                               ; preds = %20, %17, %9, %5
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @snmp_mapping_dumplist(i32*) #1

declare dso_local i32 @snmp_mapping_dumptable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
