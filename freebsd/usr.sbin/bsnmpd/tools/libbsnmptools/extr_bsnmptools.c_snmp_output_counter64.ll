; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_snmp_output_counter64.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_snmp_output_counter64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.snmp_toolinfo = type { i32 }

@OUTPUT_VERBOSE = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s : \00", align 1
@syntax_strings = common dso_local global %struct.TYPE_2__* null, align 8
@SNMP_SYNTAX_COUNTER64 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%ju\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snmp_toolinfo*, i8*)* @snmp_output_counter64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snmp_output_counter64(%struct.snmp_toolinfo* %0, i8* %1) #0 {
  %3 = alloca %struct.snmp_toolinfo*, align 8
  %4 = alloca i8*, align 8
  store %struct.snmp_toolinfo* %0, %struct.snmp_toolinfo** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %6 = call i64 @GET_OUTPUT(%struct.snmp_toolinfo* %5)
  %7 = load i64, i64* @OUTPUT_VERBOSE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load i32, i32* @stdout, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @syntax_strings, align 8
  %12 = load i64, i64* @SNMP_SYNTAX_COUNTER64, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %15)
  br label %17

17:                                               ; preds = %9, %2
  %18 = load i32, i32* @stdout, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  ret void
}

declare dso_local i64 @GET_OUTPUT(%struct.snmp_toolinfo*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
