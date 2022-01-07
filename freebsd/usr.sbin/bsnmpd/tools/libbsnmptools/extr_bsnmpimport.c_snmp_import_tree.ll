; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpimport.c_snmp_import_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpimport.c_snmp_import_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_toolinfo = type { i32 }

@TOK_EOF = common dso_local global i32 0, align 4
@current_oid = common dso_local global i32 0, align 4
@ENTRY_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_toolinfo*, i32*)* @snmp_import_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snmp_import_tree(%struct.snmp_toolinfo* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snmp_toolinfo*, align 8
  %5 = alloca i32*, align 8
  store %struct.snmp_toolinfo* %0, %struct.snmp_toolinfo** %4, align 8
  store i32* %1, i32** %5, align 8
  br label %6

6:                                                ; preds = %29, %2
  %7 = load i32*, i32** %5, align 8
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @TOK_EOF, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %33

11:                                               ; preds = %6
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %28 [
    i32 128, label %14
    i32 40, label %15
    i32 41, label %21
  ]

14:                                               ; preds = %11
  store i32 -1, i32* %3, align 4
  br label %34

15:                                               ; preds = %11
  %16 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %17 = call i32 @snmp_import_object(%struct.snmp_toolinfo* %16)
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %34

20:                                               ; preds = %15
  br label %29

21:                                               ; preds = %11
  %22 = call i32 @snmp_suboid_pop(i32* @current_oid)
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 -1, i32* %3, align 4
  br label %34

25:                                               ; preds = %21
  %26 = load i32, i32* @ENTRY_NONE, align 4
  %27 = call i32 @snmp_import_update_table(i32 %26, i32* null)
  br label %29

28:                                               ; preds = %11
  store i32 -1, i32* %3, align 4
  br label %34

29:                                               ; preds = %25, %20
  %30 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %4, align 8
  %31 = call i32 @gettoken(%struct.snmp_toolinfo* %30)
  %32 = load i32*, i32** %5, align 8
  store i32 %31, i32* %32, align 4
  br label %6

33:                                               ; preds = %6
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %28, %24, %19, %14
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @snmp_import_object(%struct.snmp_toolinfo*) #1

declare dso_local i32 @snmp_suboid_pop(i32*) #1

declare dso_local i32 @snmp_import_update_table(i32, i32*) #1

declare dso_local i32 @gettoken(%struct.snmp_toolinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
