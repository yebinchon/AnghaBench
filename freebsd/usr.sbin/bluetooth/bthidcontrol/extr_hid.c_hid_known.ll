; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidcontrol/extr_hid.c_hid_known.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidcontrol/extr_hid.c_hid_known.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, i64 }
%struct.hostent = type { i8* }

@FAILED = common dso_local global i32 0, align 4
@OK = common dso_local global i32 0, align 4
@AF_BLUETOOTH = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8**)* @hid_known to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_known(i32* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.hid_device*, align 8
  %8 = alloca %struct.hostent*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  store %struct.hid_device* null, %struct.hid_device** %7, align 8
  store %struct.hostent* null, %struct.hostent** %8, align 8
  %10 = load i32, i32* @FAILED, align 4
  store i32 %10, i32* %9, align 4
  %11 = call i64 (...) @read_config_file()
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %60

13:                                               ; preds = %3
  %14 = call i64 (...) @read_hids_file()
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %58

16:                                               ; preds = %13
  %17 = load i32, i32* @OK, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %19 = call %struct.hid_device* @get_next_hid_device(%struct.hid_device* %18)
  store %struct.hid_device* %19, %struct.hid_device** %7, align 8
  br label %20

20:                                               ; preds = %54, %16
  %21 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %22 = icmp ne %struct.hid_device* %21, null
  br i1 %22, label %23, label %57

23:                                               ; preds = %20
  %24 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %25 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %54

29:                                               ; preds = %23
  %30 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %31 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %30, i32 0, i32 0
  %32 = bitcast i32* %31 to i8*
  %33 = load i32, i32* @AF_BLUETOOTH, align 4
  %34 = call %struct.hostent* @bt_gethostbyaddr(i8* %32, i32 4, i32 %33)
  store %struct.hostent* %34, %struct.hostent** %8, align 8
  %35 = load i32, i32* @stdout, align 4
  %36 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %37 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %36, i32 0, i32 0
  %38 = call i8* @bt_ntoa(i32* %37, i32* null)
  %39 = load %struct.hostent*, %struct.hostent** %8, align 8
  %40 = icmp ne %struct.hostent* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %29
  %42 = load %struct.hostent*, %struct.hostent** %8, align 8
  %43 = getelementptr inbounds %struct.hostent, %struct.hostent* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.hostent*, %struct.hostent** %8, align 8
  %48 = getelementptr inbounds %struct.hostent, %struct.hostent* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  br label %51

50:                                               ; preds = %41, %29
  br label %51

51:                                               ; preds = %50, %46
  %52 = phi i8* [ %49, %46 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %50 ]
  %53 = call i32 @fprintf(i32 %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %38, i8* %52)
  br label %54

54:                                               ; preds = %51, %28
  %55 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %56 = call %struct.hid_device* @get_next_hid_device(%struct.hid_device* %55)
  store %struct.hid_device* %56, %struct.hid_device** %7, align 8
  br label %20

57:                                               ; preds = %20
  br label %58

58:                                               ; preds = %57, %13
  %59 = call i32 (...) @clean_config()
  br label %60

60:                                               ; preds = %58, %3
  %61 = load i32, i32* %9, align 4
  ret i32 %61
}

declare dso_local i64 @read_config_file(...) #1

declare dso_local i64 @read_hids_file(...) #1

declare dso_local %struct.hid_device* @get_next_hid_device(%struct.hid_device*) #1

declare dso_local %struct.hostent* @bt_gethostbyaddr(i8*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @bt_ntoa(i32*, i32*) #1

declare dso_local i32 @clean_config(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
