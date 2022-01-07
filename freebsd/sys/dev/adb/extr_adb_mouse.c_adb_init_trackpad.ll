; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/adb/extr_adb_mouse.c_adb_init_trackpad.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/adb/extr_adb_mouse.c_adb_init_trackpad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_mouse_softc = type { i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"ADB Mouse = 0x%x (non-Extended Mode)\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"ADB Mouse = 0x%x (Extended Mode)\0A\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"tapping\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@adb_tapping_sysctl = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Tapping the pad causes button events\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @adb_init_trackpad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adb_init_trackpad(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adb_mouse_softc*, align 8
  %4 = alloca %struct.sysctl_ctx_list*, align 8
  %5 = alloca %struct.sysctl_oid*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [8 x i32], align 16
  %8 = alloca [8 x i32], align 16
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call %struct.adb_mouse_softc* @device_get_softc(i32 %9)
  store %struct.adb_mouse_softc* %10, %struct.adb_mouse_softc** %3, align 8
  %11 = load i32, i32* %2, align 4
  %12 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %13 = call i64 @adb_read_register(i32 %11, i32 1, i32* %12)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 8
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %69

17:                                               ; preds = %1
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 6
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 13
  br i1 %20, label %21, label %54

21:                                               ; preds = %17
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 6
  store i32 13, i32* %22, align 8
  %23 = load i32, i32* %2, align 4
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %25 = call i32 @adb_write_register(i32 %23, i32 1, i32 8, i32* %24)
  %26 = load i32, i32* %2, align 4
  %27 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %28 = call i64 @adb_read_register(i32 %26, i32 1, i32* %27)
  store i64 %28, i64* %6, align 8
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 6
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 13
  br i1 %31, label %32, label %37

32:                                               ; preds = %21
  %33 = load i32, i32* %2, align 4
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 6
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %69

37:                                               ; preds = %21
  %38 = load i32, i32* %2, align 4
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 6
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @device_printf(i32 %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  store i32 25, i32* %42, align 16
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 1
  store i32 148, i32* %43, align 4
  %44 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 2
  store i32 25, i32* %44, align 8
  %45 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 3
  store i32 255, i32* %45, align 4
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 4
  store i32 178, i32* %46, align 16
  %47 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 5
  store i32 138, i32* %47, align 4
  %48 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 6
  store i32 27, i32* %48, align 8
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 7
  store i32 87, i32* %49, align 4
  %50 = load i32, i32* %2, align 4
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %52 = call i32 @adb_write_register(i32 %50, i32 2, i32 8, i32* %51)
  br label %53

53:                                               ; preds = %37
  br label %54

54:                                               ; preds = %53, %17
  %55 = load i32, i32* %2, align 4
  %56 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %55)
  store %struct.sysctl_ctx_list* %56, %struct.sysctl_ctx_list** %4, align 8
  %57 = load i32, i32* %2, align 4
  %58 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %57)
  store %struct.sysctl_oid* %58, %struct.sysctl_oid** %5, align 8
  %59 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %60 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %61 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %60)
  %62 = load i32, i32* @OID_AUTO, align 4
  %63 = load i32, i32* @CTLTYPE_INT, align 4
  %64 = load i32, i32* @CTLFLAG_RW, align 4
  %65 = or i32 %63, %64
  %66 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %3, align 8
  %67 = load i32, i32* @adb_tapping_sysctl, align 4
  %68 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %59, i32 %61, i32 %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %65, %struct.adb_mouse_softc* %66, i32 0, i32 %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %69

69:                                               ; preds = %54, %32, %16
  ret void
}

declare dso_local %struct.adb_mouse_softc* @device_get_softc(i32) #1

declare dso_local i64 @adb_read_register(i32, i32, i32*) #1

declare dso_local i32 @adb_write_register(i32, i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, %struct.adb_mouse_softc*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
