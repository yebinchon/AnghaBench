; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/usbhidctl/extr_usbhid.c_dumpitems.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/usbhidctl/extr_usbhid.c_dumpitems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_data = type { i32 }
%struct.hid_item = type { i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Collection type=%s page=%s usage=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"End collection\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Input  \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Output \00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Feature\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Total   input size %d bytes\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Total  output size %d bytes\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Total feature size %d bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @dumpitems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dumpitems(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hid_data*, align 8
  %4 = alloca %struct.hid_item, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.hid_data* @hid_start_parse(i32 %6, i32 -1, i32 -1)
  store %struct.hid_data* %7, %struct.hid_data** %3, align 8
  br label %8

8:                                                ; preds = %35, %1
  %9 = load %struct.hid_data*, %struct.hid_data** %3, align 8
  %10 = call i64 @hid_get_item(%struct.hid_data* %9, %struct.hid_item* %4)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %4, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %35 [
    i32 132, label %15
    i32 131, label %27
    i32 129, label %29
    i32 128, label %31
    i32 130, label %33
  ]

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %4, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @hid_collection_type(i32 %17)
  %19 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %4, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @HID_PAGE(i32 %20)
  %22 = call i8* @hid_usage_page(i32 %21)
  %23 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %4, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @hid_usage_in_page(i32 %24)
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %18, i8* %22, i8* %25)
  br label %35

27:                                               ; preds = %12
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %35

29:                                               ; preds = %12
  %30 = call i32 @dumpitem(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.hid_item* %4)
  br label %35

31:                                               ; preds = %12
  %32 = call i32 @dumpitem(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %struct.hid_item* %4)
  br label %35

33:                                               ; preds = %12
  %34 = call i32 @dumpitem(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %struct.hid_item* %4)
  br label %35

35:                                               ; preds = %12, %33, %31, %29, %27, %15
  br label %8

36:                                               ; preds = %8
  %37 = load %struct.hid_data*, %struct.hid_data** %3, align 8
  %38 = call i32 @hid_end_parse(%struct.hid_data* %37)
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @hid_report_size(i32 %39, i32 129, i32 -1)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @hid_report_size(i32 %43, i32 128, i32 -1)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %2, align 4
  %48 = call i32 @hid_report_size(i32 %47, i32 130, i32 -1)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %49)
  ret void
}

declare dso_local %struct.hid_data* @hid_start_parse(i32, i32, i32) #1

declare dso_local i64 @hid_get_item(%struct.hid_data*, %struct.hid_item*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @hid_collection_type(i32) #1

declare dso_local i8* @hid_usage_page(i32) #1

declare dso_local i32 @HID_PAGE(i32) #1

declare dso_local i8* @hid_usage_in_page(i32) #1

declare dso_local i32 @dumpitem(i8*, %struct.hid_item*) #1

declare dso_local i32 @hid_end_parse(%struct.hid_data*) #1

declare dso_local i32 @hid_report_size(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
