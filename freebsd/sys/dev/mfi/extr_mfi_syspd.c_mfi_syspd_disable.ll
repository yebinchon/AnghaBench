; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_syspd.c_mfi_syspd_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_syspd.c_mfi_syspd_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_system_pd = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [16 x i8] c"syspd disable \0A\00", align 1
@MA_OWNED = common dso_local global i32 0, align 4
@MFI_DISK_FLAGS_OPEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Unable to delete busy syspd device\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@MFI_DISK_FLAGS_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mfi_syspd_disable(%struct.mfi_system_pd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mfi_system_pd*, align 8
  store %struct.mfi_system_pd* %0, %struct.mfi_system_pd** %3, align 8
  %4 = load %struct.mfi_system_pd*, %struct.mfi_system_pd** %3, align 8
  %5 = getelementptr inbounds %struct.mfi_system_pd, %struct.mfi_system_pd* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @device_printf(i32 %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.mfi_system_pd*, %struct.mfi_system_pd** %3, align 8
  %9 = getelementptr inbounds %struct.mfi_system_pd, %struct.mfi_system_pd* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* @MA_OWNED, align 4
  %13 = call i32 @mtx_assert(i32* %11, i32 %12)
  %14 = load %struct.mfi_system_pd*, %struct.mfi_system_pd** %3, align 8
  %15 = getelementptr inbounds %struct.mfi_system_pd, %struct.mfi_system_pd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @MFI_DISK_FLAGS_OPEN, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %1
  %21 = load %struct.mfi_system_pd*, %struct.mfi_system_pd** %3, align 8
  %22 = getelementptr inbounds %struct.mfi_system_pd, %struct.mfi_system_pd* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %40

28:                                               ; preds = %20
  %29 = load %struct.mfi_system_pd*, %struct.mfi_system_pd** %3, align 8
  %30 = getelementptr inbounds %struct.mfi_system_pd, %struct.mfi_system_pd* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EBUSY, align 4
  store i32 %33, i32* %2, align 4
  br label %40

34:                                               ; preds = %1
  %35 = load i32, i32* @MFI_DISK_FLAGS_DISABLED, align 4
  %36 = load %struct.mfi_system_pd*, %struct.mfi_system_pd** %3, align 8
  %37 = getelementptr inbounds %struct.mfi_system_pd, %struct.mfi_system_pd* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %34, %28, %27
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
