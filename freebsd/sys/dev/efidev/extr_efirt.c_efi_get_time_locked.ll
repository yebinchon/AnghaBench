; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/efidev/extr_efirt.c_efi_get_time_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/efidev/extr_efirt.c_efi_get_time_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efi_tm = type { i32 }
%struct.efi_tmcap = type { i32 }
%struct.efirt_callinfo = type { i8*, i32, i64, i64, i32 }

@efi_runtime = common dso_local global i32* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"rt_gettime\00", align 1
@rt_gettime = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efi_tm*, %struct.efi_tmcap*)* @efi_get_time_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efi_get_time_locked(%struct.efi_tm* %0, %struct.efi_tmcap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efi_tm*, align 8
  %5 = alloca %struct.efi_tmcap*, align 8
  %6 = alloca %struct.efirt_callinfo, align 8
  store %struct.efi_tm* %0, %struct.efi_tm** %4, align 8
  store %struct.efi_tmcap* %1, %struct.efi_tmcap** %5, align 8
  %7 = call i32 (...) @EFI_TIME_OWNED()
  %8 = load i32*, i32** @efi_runtime, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @ENXIO, align 4
  store i32 %11, i32* %3, align 4
  br label %26

12:                                               ; preds = %2
  %13 = call i32 @bzero(%struct.efirt_callinfo* %6, i32 40)
  %14 = getelementptr inbounds %struct.efirt_callinfo, %struct.efirt_callinfo* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %15 = getelementptr inbounds %struct.efirt_callinfo, %struct.efirt_callinfo* %6, i32 0, i32 1
  store i32 2, i32* %15, align 8
  %16 = load %struct.efi_tm*, %struct.efi_tm** %4, align 8
  %17 = ptrtoint %struct.efi_tm* %16 to i64
  %18 = getelementptr inbounds %struct.efirt_callinfo, %struct.efirt_callinfo* %6, i32 0, i32 2
  store i64 %17, i64* %18, align 8
  %19 = load %struct.efi_tmcap*, %struct.efi_tmcap** %5, align 8
  %20 = ptrtoint %struct.efi_tmcap* %19 to i64
  %21 = getelementptr inbounds %struct.efirt_callinfo, %struct.efirt_callinfo* %6, i32 0, i32 3
  store i64 %20, i64* %21, align 8
  %22 = load i32, i32* @rt_gettime, align 4
  %23 = call i32 @EFI_RT_METHOD_PA(i32 %22)
  %24 = getelementptr inbounds %struct.efirt_callinfo, %struct.efirt_callinfo* %6, i32 0, i32 4
  store i32 %23, i32* %24, align 8
  %25 = call i32 @efi_call(%struct.efirt_callinfo* %6)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %12, %10
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @EFI_TIME_OWNED(...) #1

declare dso_local i32 @bzero(%struct.efirt_callinfo*, i32) #1

declare dso_local i32 @EFI_RT_METHOD_PA(i32) #1

declare dso_local i32 @efi_call(%struct.efirt_callinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
