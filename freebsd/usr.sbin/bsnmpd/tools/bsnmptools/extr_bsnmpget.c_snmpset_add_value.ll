; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/bsnmptools/extr_bsnmpget.c_snmpset_add_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/bsnmptools/extr_bsnmpget.c_snmpset_add_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_value = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Unknown syntax %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_value*, %struct.snmp_value*)* @snmpset_add_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snmpset_add_value(%struct.snmp_value* %0, %struct.snmp_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snmp_value*, align 8
  %5 = alloca %struct.snmp_value*, align 8
  store %struct.snmp_value* %0, %struct.snmp_value** %4, align 8
  store %struct.snmp_value* %1, %struct.snmp_value** %5, align 8
  %6 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %7 = icmp eq %struct.snmp_value* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %10 = icmp eq %struct.snmp_value* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %2
  store i32 -1, i32* %3, align 4
  br label %84

12:                                               ; preds = %8
  %13 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %14 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %78 [
    i32 132, label %16
    i32 128, label %26
    i32 133, label %36
    i32 135, label %46
    i32 134, label %56
    i32 131, label %66
    i32 130, label %70
    i32 129, label %74
  ]

16:                                               ; preds = %12
  %17 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %18 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %22 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  store i32 %20, i32* %23, align 4
  %24 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %25 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %24, i32 0, i32 0
  store i32 132, i32* %25, align 4
  br label %83

26:                                               ; preds = %12
  %27 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %28 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %32 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %35 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %34, i32 0, i32 0
  store i32 128, i32* %35, align 4
  br label %83

36:                                               ; preds = %12
  %37 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %38 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %42 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  %44 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %45 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %44, i32 0, i32 0
  store i32 133, i32* %45, align 4
  br label %83

46:                                               ; preds = %12
  %47 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %48 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %52 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  %54 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %55 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %54, i32 0, i32 0
  store i32 135, i32* %55, align 4
  br label %83

56:                                               ; preds = %12
  %57 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %58 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %62 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 4
  %64 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %65 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %64, i32 0, i32 0
  store i32 134, i32* %65, align 4
  br label %83

66:                                               ; preds = %12
  %67 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %68 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %69 = call i32 @add_ip_syntax(%struct.snmp_value* %67, %struct.snmp_value* %68)
  br label %83

70:                                               ; preds = %12
  %71 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %72 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %73 = call i32 @add_octstring_syntax(%struct.snmp_value* %71, %struct.snmp_value* %72)
  br label %83

74:                                               ; preds = %12
  %75 = load %struct.snmp_value*, %struct.snmp_value** %4, align 8
  %76 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %77 = call i32 @add_oid_syntax(%struct.snmp_value* %75, %struct.snmp_value* %76)
  br label %83

78:                                               ; preds = %12
  %79 = load %struct.snmp_value*, %struct.snmp_value** %5, align 8
  %80 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @warnx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %81)
  store i32 -1, i32* %3, align 4
  br label %84

83:                                               ; preds = %74, %70, %66, %56, %46, %36, %26, %16
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %78, %11
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @add_ip_syntax(%struct.snmp_value*, %struct.snmp_value*) #1

declare dso_local i32 @add_octstring_syntax(%struct.snmp_value*, %struct.snmp_value*) #1

declare dso_local i32 @add_oid_syntax(%struct.snmp_value*, %struct.snmp_value*) #1

declare dso_local i32 @warnx(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
