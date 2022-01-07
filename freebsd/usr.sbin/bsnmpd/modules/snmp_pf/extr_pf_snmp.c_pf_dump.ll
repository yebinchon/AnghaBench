; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_pf/extr_pf_snmp.c_pf_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_pf/extr_pf_snmp.c_pf_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@altq_enabled = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Dump: pfi_table_age = %jd\00", align 1
@pfi_table_age = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Dump: pfi_table_count = %d\00", align 1
@pfi_table_count = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Dump: pfq_table_age = %jd\00", align 1
@pfq_table_age = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"Dump: pfq_table_count = %d\00", align 1
@pfq_table_count = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Dump: pft_table_age = %jd\00", align 1
@pft_table_age = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"Dump: pft_table_count = %d\00", align 1
@pft_table_count = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"Dump: pfa_table_age = %jd\00", align 1
@pfa_table_age = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [27 x i8] c"Dump: pfa_table_count = %d\00", align 1
@pfa_table_count = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"Dump: pfl_table_age = %jd\00", align 1
@pfl_table_age = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [27 x i8] c"Dump: pfl_table_count = %d\00", align 1
@pfl_table_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pf_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pf_dump() #0 {
  %1 = call i32 (...) @pfi_refresh()
  %2 = load i64, i64* @altq_enabled, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 (...) @pfq_refresh()
  br label %6

6:                                                ; preds = %4, %0
  %7 = call i32 (...) @pft_refresh()
  %8 = call i32 (...) @pfa_refresh()
  %9 = call i32 (...) @pfl_refresh()
  %10 = load i32, i32* @LOG_ERR, align 4
  %11 = load i64, i64* @pfi_table_age, align 8
  %12 = trunc i64 %11 to i32
  %13 = call i32 @syslog(i32 %10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @LOG_ERR, align 4
  %15 = load i32, i32* @pfi_table_count, align 4
  %16 = call i32 @syslog(i32 %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @LOG_ERR, align 4
  %18 = load i64, i64* @pfq_table_age, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @syslog(i32 %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @LOG_ERR, align 4
  %22 = load i32, i32* @pfq_table_count, align 4
  %23 = call i32 @syslog(i32 %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @LOG_ERR, align 4
  %25 = load i64, i64* @pft_table_age, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @syslog(i32 %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @LOG_ERR, align 4
  %29 = load i32, i32* @pft_table_count, align 4
  %30 = call i32 @syslog(i32 %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @LOG_ERR, align 4
  %32 = load i64, i64* @pfa_table_age, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 @syslog(i32 %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @LOG_ERR, align 4
  %36 = load i32, i32* @pfa_table_count, align 4
  %37 = call i32 @syslog(i32 %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @LOG_ERR, align 4
  %39 = load i64, i64* @pfl_table_age, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 @syslog(i32 %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @LOG_ERR, align 4
  %43 = load i32, i32* @pfl_table_count, align 4
  %44 = call i32 @syslog(i32 %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %43)
  ret void
}

declare dso_local i32 @pfi_refresh(...) #1

declare dso_local i32 @pfq_refresh(...) #1

declare dso_local i32 @pft_refresh(...) #1

declare dso_local i32 @pfa_refresh(...) #1

declare dso_local i32 @pfl_refresh(...) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
