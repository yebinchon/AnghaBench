; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpimport.c_parse_enum.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpimport.c_parse_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_toolinfo = type { i32 }
%struct.enum_pairs = type { i32 }

@TOK_STR = common dso_local global i32 0, align 4
@val = common dso_local global i32 0, align 4
@nexttok = common dso_local global i32 0, align 4
@TOK_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"')' at end of enums\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_toolinfo*, i32*, %struct.enum_pairs*)* @parse_enum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_enum(%struct.snmp_toolinfo* %0, i32* %1, %struct.enum_pairs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snmp_toolinfo*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.enum_pairs*, align 8
  store %struct.snmp_toolinfo* %0, %struct.snmp_toolinfo** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.enum_pairs* %2, %struct.enum_pairs** %7, align 8
  br label %8

8:                                                ; preds = %28, %3
  %9 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %10 = call i32 @gettoken(%struct.snmp_toolinfo* %9)
  %11 = load i32*, i32** %6, align 8
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @TOK_STR, align 4
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %8
  %15 = load %struct.enum_pairs*, %struct.enum_pairs** %7, align 8
  %16 = load i32, i32* @val, align 4
  %17 = load i32, i32* @nexttok, align 4
  %18 = call i64 @enum_pair_insert(%struct.enum_pairs* %15, i32 %16, i32 %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 -1, i32* %4, align 4
  br label %36

21:                                               ; preds = %14
  %22 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %5, align 8
  %23 = call i32 @gettoken(%struct.snmp_toolinfo* %22)
  %24 = load i32*, i32** %6, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @TOK_NUM, align 4
  %26 = icmp ne i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %29

28:                                               ; preds = %21
  br label %8

29:                                               ; preds = %27, %8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 41
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call i32 @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %36

35:                                               ; preds = %29
  store i32 1, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %33, %20
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @gettoken(%struct.snmp_toolinfo*) #1

declare dso_local i64 @enum_pair_insert(%struct.enum_pairs*, i32, i32) #1

declare dso_local i32 @warnx(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
