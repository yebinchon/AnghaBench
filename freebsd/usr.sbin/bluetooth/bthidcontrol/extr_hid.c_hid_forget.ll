; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidcontrol/extr_hid.c_hid_forget.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidcontrol/extr_hid.c_hid_forget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }

@FAILED = common dso_local global i32 0, align 4
@OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8**)* @hid_forget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_forget(i32* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.hid_device*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  store %struct.hid_device* null, %struct.hid_device** %7, align 8
  %9 = load i32, i32* @FAILED, align 4
  store i32 %9, i32* %8, align 4
  %10 = call i64 (...) @read_config_file()
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %3
  %13 = call i64 (...) @read_hids_file()
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load i32*, i32** %4, align 8
  %17 = call %struct.hid_device* @get_hid_device(i32* %16)
  store %struct.hid_device* %17, %struct.hid_device** %7, align 8
  %18 = icmp ne %struct.hid_device* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %21 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = call i64 (...) @write_hids_file()
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @OK, align 4
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %24, %19
  br label %27

27:                                               ; preds = %26, %15
  br label %28

28:                                               ; preds = %27, %12
  %29 = call i32 (...) @clean_config()
  br label %30

30:                                               ; preds = %28, %3
  %31 = load i32, i32* %8, align 4
  ret i32 %31
}

declare dso_local i64 @read_config_file(...) #1

declare dso_local i64 @read_hids_file(...) #1

declare dso_local %struct.hid_device* @get_hid_device(i32*) #1

declare dso_local i64 @write_hids_file(...) #1

declare dso_local i32 @clean_config(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
