; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hid.c_hid_is_collection.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hid.c_hid_is_collection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_data = type { i32 }
%struct.hid_item = type { i64, i64 }

@hid_input = common dso_local global i32 0, align 4
@hid_collection = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hid_is_collection(i8* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.hid_data*, align 8
  %9 = alloca %struct.hid_item, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @hid_input, align 4
  %14 = call %struct.hid_data* @hid_start_parse(i8* %11, i32 %12, i32 %13)
  store %struct.hid_data* %14, %struct.hid_data** %8, align 8
  %15 = load %struct.hid_data*, %struct.hid_data** %8, align 8
  %16 = icmp eq %struct.hid_data* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %39

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %34, %18
  %20 = load %struct.hid_data*, %struct.hid_data** %8, align 8
  %21 = call i32 @hid_get_item(%struct.hid_data* %20, %struct.hid_item* %9)
  store i32 %21, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %9, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @hid_collection, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %9, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %35

34:                                               ; preds = %28, %23
  br label %19

35:                                               ; preds = %33, %19
  %36 = load %struct.hid_data*, %struct.hid_data** %8, align 8
  %37 = call i32 @hid_end_parse(%struct.hid_data* %36)
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %35, %17
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.hid_data* @hid_start_parse(i8*, i32, i32) #1

declare dso_local i32 @hid_get_item(%struct.hid_data*, %struct.hid_item*) #1

declare dso_local i32 @hid_end_parse(%struct.hid_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
