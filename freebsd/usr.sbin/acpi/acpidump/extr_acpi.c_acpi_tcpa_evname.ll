; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/acpi/acpidump/extr_acpi.c_acpi_tcpa_evname.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/acpi/acpidump/extr_acpi.c_acpi_tcpa_evname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCPAevent = type { i32, i32 }
%struct.TCPApc_event = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tcpa_event_type_strings = common dso_local global i64* null, align 8
@TCPA_pcclient_strings = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"<unknown tag 0x%02x>\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"<unknown 0x%02x>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TCPAevent*)* @acpi_tcpa_evname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @acpi_tcpa_evname(%struct.TCPAevent* %0) #0 {
  %2 = alloca %struct.TCPAevent*, align 8
  %3 = alloca %struct.TCPApc_event*, align 8
  %4 = alloca i8*, align 8
  store %struct.TCPAevent* %0, %struct.TCPAevent** %2, align 8
  store i8* null, i8** %4, align 8
  %5 = load %struct.TCPAevent*, %struct.TCPAevent** %2, align 8
  %6 = getelementptr inbounds %struct.TCPAevent, %struct.TCPAevent* %5, i64 1
  %7 = bitcast %struct.TCPAevent* %6 to %struct.TCPApc_event*
  store %struct.TCPApc_event* %7, %struct.TCPApc_event** %3, align 8
  %8 = load %struct.TCPAevent*, %struct.TCPAevent** %2, align 8
  %9 = getelementptr inbounds %struct.TCPAevent, %struct.TCPAevent* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %50 [
    i32 136, label %11
    i32 138, label %11
    i32 128, label %11
    i32 145, label %11
    i32 133, label %11
    i32 135, label %11
    i32 134, label %11
    i32 153, label %11
    i32 140, label %11
    i32 129, label %11
    i32 154, label %11
    i32 150, label %11
    i32 149, label %11
    i32 148, label %11
    i32 147, label %11
    i32 146, label %11
    i32 157, label %20
    i32 151, label %32
  ]

11:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %12 = load i64*, i64** @tcpa_event_type_strings, align 8
  %13 = load %struct.TCPAevent*, %struct.TCPAevent** %2, align 8
  %14 = getelementptr inbounds %struct.TCPAevent, %struct.TCPAevent* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %12, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @asprintf(i8** %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %18)
  br label %56

20:                                               ; preds = %1
  %21 = load %struct.TCPAevent*, %struct.TCPAevent** %2, align 8
  %22 = getelementptr inbounds %struct.TCPAevent, %struct.TCPAevent* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  %25 = call i8* @calloc(i32 %24, i32 1)
  store i8* %25, i8** %4, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = load %struct.TCPApc_event*, %struct.TCPApc_event** %3, align 8
  %28 = load %struct.TCPAevent*, %struct.TCPAevent** %2, align 8
  %29 = getelementptr inbounds %struct.TCPAevent, %struct.TCPAevent* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @memcpy(i8* %26, %struct.TCPApc_event* %27, i32 %30)
  br label %56

32:                                               ; preds = %1
  %33 = load %struct.TCPApc_event*, %struct.TCPApc_event** %3, align 8
  %34 = getelementptr inbounds %struct.TCPApc_event, %struct.TCPApc_event* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  switch i64 %35, label %44 [
    i64 132, label %36
    i64 156, label %36
    i64 155, label %36
    i64 144, label %36
    i64 142, label %36
    i64 143, label %36
    i64 130, label %36
    i64 139, label %36
    i64 152, label %36
    i64 141, label %36
    i64 131, label %36
    i64 137, label %36
  ]

36:                                               ; preds = %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32
  %37 = load i64*, i64** @TCPA_pcclient_strings, align 8
  %38 = load %struct.TCPApc_event*, %struct.TCPApc_event** %3, align 8
  %39 = getelementptr inbounds %struct.TCPApc_event, %struct.TCPApc_event* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i64, i64* %37, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @asprintf(i8** %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %42)
  br label %49

44:                                               ; preds = %32
  %45 = load %struct.TCPApc_event*, %struct.TCPApc_event** %3, align 8
  %46 = getelementptr inbounds %struct.TCPApc_event, %struct.TCPApc_event* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @asprintf(i8** %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %47)
  br label %49

49:                                               ; preds = %44, %36
  br label %56

50:                                               ; preds = %1
  %51 = load %struct.TCPAevent*, %struct.TCPAevent** %2, align 8
  %52 = getelementptr inbounds %struct.TCPAevent, %struct.TCPAevent* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = call i32 @asprintf(i8** %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %54)
  br label %56

56:                                               ; preds = %50, %49, %20, %11
  %57 = load i8*, i8** %4, align 8
  ret i8* %57
}

declare dso_local i32 @asprintf(i8**, i8*, i64) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, %struct.TCPApc_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
