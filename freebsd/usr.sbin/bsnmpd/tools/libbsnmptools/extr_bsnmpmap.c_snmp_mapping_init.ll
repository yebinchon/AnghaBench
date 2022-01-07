; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpmap.c_snmp_mapping_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpmap.c_snmp_mapping_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_mappings = type { i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"malloc() failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.snmp_mappings* @snmp_mapping_init() #0 {
  %1 = alloca %struct.snmp_mappings*, align 8
  %2 = alloca %struct.snmp_mappings*, align 8
  %3 = call %struct.snmp_mappings* @calloc(i32 1, i32 4)
  store %struct.snmp_mappings* %3, %struct.snmp_mappings** %2, align 8
  %4 = icmp eq %struct.snmp_mappings* %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %0
  %6 = load i32, i32* @LOG_ERR, align 4
  %7 = load i32, i32* @errno, align 4
  %8 = call i32 @strerror(i32 %7)
  %9 = call i32 @syslog(i32 %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %8)
  store %struct.snmp_mappings* null, %struct.snmp_mappings** %1, align 8
  br label %12

10:                                               ; preds = %0
  %11 = load %struct.snmp_mappings*, %struct.snmp_mappings** %2, align 8
  store %struct.snmp_mappings* %11, %struct.snmp_mappings** %1, align 8
  br label %12

12:                                               ; preds = %10, %5
  %13 = load %struct.snmp_mappings*, %struct.snmp_mappings** %1, align 8
  ret %struct.snmp_mappings* %13
}

declare dso_local %struct.snmp_mappings* @calloc(i32, i32) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
