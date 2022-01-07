; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidcontrol/extr_hid.c_hid_dump_descriptor.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidcontrol/extr_hid.c_hid_dump_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_data = type { i32 }
%struct.hid_item = type { i32, i32 }

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Collection page=%s usage=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"End collection\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Input  \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Output \00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Feature\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @hid_dump_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hid_dump_descriptor(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hid_data*, align 8
  %4 = alloca %struct.hid_item, align 4
  store i32 %0, i32* %2, align 4
  store %struct.hid_data* null, %struct.hid_data** %3, align 8
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.hid_data* @hid_start_parse(i32 %5, i32 -1, i32 -1)
  store %struct.hid_data* %6, %struct.hid_data** %3, align 8
  br label %7

7:                                                ; preds = %33, %1
  %8 = load %struct.hid_data*, %struct.hid_data** %3, align 8
  %9 = call i64 @hid_get_item(%struct.hid_data* %8, %struct.hid_item* %4)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %4, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %33 [
    i32 132, label %14
    i32 131, label %24
    i32 129, label %27
    i32 128, label %29
    i32 130, label %31
  ]

14:                                               ; preds = %11
  %15 = load i32, i32* @stdout, align 4
  %16 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %4, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @HID_PAGE(i32 %17)
  %19 = call i8* @hid_usage_page(i32 %18)
  %20 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %4, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @hid_usage_in_page(i32 %21)
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %19, i8* %22)
  br label %33

24:                                               ; preds = %11
  %25 = load i32, i32* @stdout, align 4
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %33

27:                                               ; preds = %11
  %28 = call i32 @hid_dump_item(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.hid_item* %4)
  br label %33

29:                                               ; preds = %11
  %30 = call i32 @hid_dump_item(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %struct.hid_item* %4)
  br label %33

31:                                               ; preds = %11
  %32 = call i32 @hid_dump_item(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %struct.hid_item* %4)
  br label %33

33:                                               ; preds = %11, %31, %29, %27, %24, %14
  br label %7

34:                                               ; preds = %7
  %35 = load %struct.hid_data*, %struct.hid_data** %3, align 8
  %36 = call i32 @hid_end_parse(%struct.hid_data* %35)
  ret void
}

declare dso_local %struct.hid_data* @hid_start_parse(i32, i32, i32) #1

declare dso_local i64 @hid_get_item(%struct.hid_data*, %struct.hid_item*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @hid_usage_page(i32) #1

declare dso_local i32 @HID_PAGE(i32) #1

declare dso_local i8* @hid_usage_in_page(i32) #1

declare dso_local i32 @hid_dump_item(i8*, %struct.hid_item*) #1

declare dso_local i32 @hid_end_parse(%struct.hid_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
