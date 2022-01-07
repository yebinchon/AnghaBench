; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_printer_tbl.c_hrPrinter_get_OS_entries.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_printer_tbl.c_hrPrinter_get_OS_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printer = type { i8* }

@.str = private unnamed_addr constant [28 x i8] c"---->Getting printers .....\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"---->Got printer %s\00", align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"hrPrinterTable: printcap entry for %s has errors, skipping\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"<noname?>\00", align 1
@this_tick = common dso_local global i32 0, align 4
@printer_tick = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @hrPrinter_get_OS_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hrPrinter_get_OS_entries() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.printer, align 8
  %4 = alloca %struct.printer*, align 8
  store %struct.printer* %3, %struct.printer** %4, align 8
  %5 = load %struct.printer*, %struct.printer** %4, align 8
  %6 = call i32 @init_printer(%struct.printer* %5)
  %7 = call i32 (i8*, ...) @HRDBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.printer*, %struct.printer** %4, align 8
  %9 = call i32 @firstprinter(%struct.printer* %8, i32* %1)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %1, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  br label %27

13:                                               ; preds = %0
  br label %14

14:                                               ; preds = %53, %13
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %54

17:                                               ; preds = %14
  br label %18

18:                                               ; preds = %51, %17
  %19 = load %struct.printer*, %struct.printer** %4, align 8
  %20 = getelementptr inbounds %struct.printer, %struct.printer* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 (i8*, ...) @HRDBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  %23 = load %struct.printer*, %struct.printer** %4, align 8
  %24 = call i32 @handle_printer(%struct.printer* %23)
  %25 = load %struct.printer*, %struct.printer** %4, align 8
  %26 = call i32 @nextprinter(%struct.printer* %25, i32* %1)
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %18, %12
  %28 = load i32, i32* %1, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = load i32, i32* @LOG_WARNING, align 4
  %32 = load %struct.printer*, %struct.printer** %4, align 8
  %33 = getelementptr inbounds %struct.printer, %struct.printer* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.printer*, %struct.printer** %4, align 8
  %38 = getelementptr inbounds %struct.printer, %struct.printer* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  br label %41

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40, %36
  %42 = phi i8* [ %39, %36 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), %40 ]
  %43 = call i32 @syslog(i32 %31, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %41, %27
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %2, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %1, align 4
  %50 = icmp ne i32 %49, 0
  br label %51

51:                                               ; preds = %48, %45
  %52 = phi i1 [ false, %45 ], [ %50, %48 ]
  br i1 %52, label %18, label %53

53:                                               ; preds = %51
  br label %14

54:                                               ; preds = %14
  %55 = call i32 (...) @lastprinter()
  %56 = load i32, i32* @this_tick, align 4
  store i32 %56, i32* @printer_tick, align 4
  ret void
}

declare dso_local i32 @init_printer(%struct.printer*) #1

declare dso_local i32 @HRDBG(i8*, ...) #1

declare dso_local i32 @firstprinter(%struct.printer*, i32*) #1

declare dso_local i32 @handle_printer(%struct.printer*) #1

declare dso_local i32 @nextprinter(%struct.printer*, i32*) #1

declare dso_local i32 @syslog(i32, i8*, i8*) #1

declare dso_local i32 @lastprinter(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
