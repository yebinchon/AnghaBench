; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/efidev/extr_efirt.c_efi_set_time_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/efidev/extr_efirt.c_efi_set_time_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efi_tm = type { i32 }
%struct.efirt_callinfo = type { i8*, i32, i64, i32 }

@efi_runtime = common dso_local global i32* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"rt_settime\00", align 1
@rt_settime = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efi_tm*)* @efi_set_time_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efi_set_time_locked(%struct.efi_tm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efi_tm*, align 8
  %4 = alloca %struct.efirt_callinfo, align 8
  store %struct.efi_tm* %0, %struct.efi_tm** %3, align 8
  %5 = call i32 (...) @EFI_TIME_OWNED()
  %6 = load i32*, i32** @efi_runtime, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @ENXIO, align 4
  store i32 %9, i32* %2, align 4
  br label %21

10:                                               ; preds = %1
  %11 = call i32 @bzero(%struct.efirt_callinfo* %4, i32 32)
  %12 = getelementptr inbounds %struct.efirt_callinfo, %struct.efirt_callinfo* %4, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %13 = getelementptr inbounds %struct.efirt_callinfo, %struct.efirt_callinfo* %4, i32 0, i32 1
  store i32 1, i32* %13, align 8
  %14 = load %struct.efi_tm*, %struct.efi_tm** %3, align 8
  %15 = ptrtoint %struct.efi_tm* %14 to i64
  %16 = getelementptr inbounds %struct.efirt_callinfo, %struct.efirt_callinfo* %4, i32 0, i32 2
  store i64 %15, i64* %16, align 8
  %17 = load i32, i32* @rt_settime, align 4
  %18 = call i32 @EFI_RT_METHOD_PA(i32 %17)
  %19 = getelementptr inbounds %struct.efirt_callinfo, %struct.efirt_callinfo* %4, i32 0, i32 3
  store i32 %18, i32* %19, align 8
  %20 = call i32 @efi_call(%struct.efirt_callinfo* %4)
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %10, %8
  %22 = load i32, i32* %2, align 4
  ret i32 %22
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
