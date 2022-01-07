; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpmap.c_snmp_syntax_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpmap.c_snmp_syntax_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_idxlist = type { i32 }
%struct.enum_pairs = type { i32 }
%struct.index = type { i32, i32, %struct.enum_pairs* }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"malloc() failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snmp_syntax_insert(%struct.snmp_idxlist* %0, %struct.enum_pairs* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snmp_idxlist*, align 8
  %7 = alloca %struct.enum_pairs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.index*, align 8
  store %struct.snmp_idxlist* %0, %struct.snmp_idxlist** %6, align 8
  store %struct.enum_pairs* %1, %struct.enum_pairs** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = call %struct.index* @calloc(i32 1, i32 16)
  store %struct.index* %11, %struct.index** %10, align 8
  %12 = icmp eq %struct.index* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = load i32, i32* @LOG_ERR, align 4
  %15 = load i32, i32* @errno, align 4
  %16 = call i32 @strerror(i32 %15)
  %17 = call i32 @syslog(i32 %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 -1, i32* %5, align 4
  br label %36

18:                                               ; preds = %4
  %19 = load %struct.snmp_idxlist*, %struct.snmp_idxlist** %6, align 8
  %20 = load %struct.index*, %struct.index** %10, align 8
  %21 = call i64 @snmp_index_insert(%struct.snmp_idxlist* %19, %struct.index* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.index*, %struct.index** %10, align 8
  %25 = call i32 @free(%struct.index* %24)
  store i32 -1, i32* %5, align 4
  br label %36

26:                                               ; preds = %18
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.index*, %struct.index** %10, align 8
  %29 = getelementptr inbounds %struct.index, %struct.index* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.enum_pairs*, %struct.enum_pairs** %7, align 8
  %31 = load %struct.index*, %struct.index** %10, align 8
  %32 = getelementptr inbounds %struct.index, %struct.index* %31, i32 0, i32 2
  store %struct.enum_pairs* %30, %struct.enum_pairs** %32, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.index*, %struct.index** %10, align 8
  %35 = getelementptr inbounds %struct.index, %struct.index* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  store i32 1, i32* %5, align 4
  br label %36

36:                                               ; preds = %26, %23, %13
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local %struct.index* @calloc(i32, i32) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @snmp_index_insert(%struct.snmp_idxlist*, %struct.index*) #1

declare dso_local i32 @free(%struct.index*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
