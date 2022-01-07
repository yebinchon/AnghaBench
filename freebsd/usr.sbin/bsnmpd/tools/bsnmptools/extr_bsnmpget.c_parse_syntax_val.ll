; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/bsnmptools/extr_bsnmpget.c_parse_syntax_val.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/bsnmptools/extr_bsnmpget.c_parse_syntax_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_value = type { i32 }

@SNMP_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_value*, i32, i8*)* @parse_syntax_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_syntax_val(%struct.snmp_value* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snmp_value*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.snmp_value* %0, %struct.snmp_value** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %42 [
    i32 132, label %9
    i32 131, label %13
    i32 135, label %17
    i32 133, label %21
    i32 128, label %25
    i32 134, label %29
    i32 130, label %33
    i32 129, label %38
  ]

9:                                                ; preds = %3
  %10 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i32 @parse_int(%struct.snmp_value* %10, i8* %11)
  store i32 %12, i32* %4, align 4
  br label %44

13:                                               ; preds = %3
  %14 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @parse_ip(%struct.snmp_value* %14, i8* %15)
  store i32 %16, i32* %4, align 4
  br label %44

17:                                               ; preds = %3
  %18 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @parse_counter(%struct.snmp_value* %18, i8* %19)
  store i32 %20, i32* %4, align 4
  br label %44

21:                                               ; preds = %3
  %22 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @parse_gauge(%struct.snmp_value* %22, i8* %23)
  store i32 %24, i32* %4, align 4
  br label %44

25:                                               ; preds = %3
  %26 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @parse_ticks(%struct.snmp_value* %26, i8* %27)
  store i32 %28, i32* %4, align 4
  br label %44

29:                                               ; preds = %3
  %30 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @parse_uint64(%struct.snmp_value* %30, i8* %31)
  store i32 %32, i32* %4, align 4
  br label %44

33:                                               ; preds = %3
  %34 = load i32, i32* @SNMP_STRING, align 4
  %35 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @snmp_tc2oct(i32 %34, %struct.snmp_value* %35, i8* %36)
  store i32 %37, i32* %4, align 4
  br label %44

38:                                               ; preds = %3
  %39 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @parse_oid_numeric(%struct.snmp_value* %39, i8* %40)
  store i32 %41, i32* %4, align 4
  br label %44

42:                                               ; preds = %3
  br label %43

43:                                               ; preds = %42
  store i32 -1, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %38, %33, %29, %25, %21, %17, %13, %9
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @parse_int(%struct.snmp_value*, i8*) #1

declare dso_local i32 @parse_ip(%struct.snmp_value*, i8*) #1

declare dso_local i32 @parse_counter(%struct.snmp_value*, i8*) #1

declare dso_local i32 @parse_gauge(%struct.snmp_value*, i8*) #1

declare dso_local i32 @parse_ticks(%struct.snmp_value*, i8*) #1

declare dso_local i32 @parse_uint64(%struct.snmp_value*, i8*) #1

declare dso_local i32 @snmp_tc2oct(i32, %struct.snmp_value*, i8*) #1

declare dso_local i32 @parse_oid_numeric(%struct.snmp_value*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
