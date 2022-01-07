; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpimport.c_snmp_import_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmpimport.c_snmp_import_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_toolinfo = type { i32 }
%struct.fname = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Failed to read mappings from file %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snmp_import_file(%struct.snmp_toolinfo* %0, %struct.fname* %1) #0 {
  %3 = alloca %struct.snmp_toolinfo*, align 8
  %4 = alloca %struct.fname*, align 8
  %5 = alloca i32, align 4
  store %struct.snmp_toolinfo* %0, %struct.snmp_toolinfo** %3, align 8
  store %struct.fname* %1, %struct.fname** %4, align 8
  %6 = load %struct.fname*, %struct.fname** %4, align 8
  %7 = getelementptr inbounds %struct.fname, %struct.fname* %6, i32 0, i32 1
  %8 = call i32 @snmp_import_init(i32* %7)
  %9 = load %struct.fname*, %struct.fname** %4, align 8
  %10 = getelementptr inbounds %struct.fname, %struct.fname* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @input_fopen(i32 %11)
  %13 = load %struct.snmp_toolinfo*, %struct.snmp_toolinfo** %3, align 8
  %14 = call i32 @snmp_import(%struct.snmp_toolinfo* %13)
  store i32 %14, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.fname*, %struct.fname** %4, align 8
  %18 = getelementptr inbounds %struct.fname, %struct.fname* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @warnx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %16, %2
  %22 = call i32 (...) @input_close()
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

declare dso_local i32 @snmp_import_init(i32*) #1

declare dso_local i32 @input_fopen(i32) #1

declare dso_local i32 @snmp_import(%struct.snmp_toolinfo*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @input_close(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
