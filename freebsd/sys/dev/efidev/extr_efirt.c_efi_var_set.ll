; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/efidev/extr_efirt.c_efi_var_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/efidev/extr_efirt.c_efi_var_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uuid = type { i32 }
%struct.efirt_callinfo = type { i32, i8*, i64, i64, i64, i64, i64, i32 }

@efi_runtime = common dso_local global i32* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"rt_setvar\00", align 1
@rt_setvar = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efi_var_set(i32* %0, %struct.uuid* %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.uuid*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.efirt_callinfo, align 8
  store i32* %0, i32** %7, align 8
  store %struct.uuid* %1, %struct.uuid** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load i32*, i32** @efi_runtime, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %6, align 4
  br label %38

17:                                               ; preds = %5
  %18 = call i32 @bzero(%struct.efirt_callinfo* %12, i32 64)
  %19 = getelementptr inbounds %struct.efirt_callinfo, %struct.efirt_callinfo* %12, i32 0, i32 0
  store i32 5, i32* %19, align 8
  %20 = getelementptr inbounds %struct.efirt_callinfo, %struct.efirt_callinfo* %12, i32 0, i32 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = ptrtoint i32* %21 to i64
  %23 = getelementptr inbounds %struct.efirt_callinfo, %struct.efirt_callinfo* %12, i32 0, i32 2
  store i64 %22, i64* %23, align 8
  %24 = load %struct.uuid*, %struct.uuid** %8, align 8
  %25 = ptrtoint %struct.uuid* %24 to i64
  %26 = getelementptr inbounds %struct.efirt_callinfo, %struct.efirt_callinfo* %12, i32 0, i32 3
  store i64 %25, i64* %26, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds %struct.efirt_callinfo, %struct.efirt_callinfo* %12, i32 0, i32 4
  store i64 %27, i64* %28, align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds %struct.efirt_callinfo, %struct.efirt_callinfo* %12, i32 0, i32 5
  store i64 %29, i64* %30, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = ptrtoint i8* %31 to i64
  %33 = getelementptr inbounds %struct.efirt_callinfo, %struct.efirt_callinfo* %12, i32 0, i32 6
  store i64 %32, i64* %33, align 8
  %34 = load i32, i32* @rt_setvar, align 4
  %35 = call i32 @EFI_RT_METHOD_PA(i32 %34)
  %36 = getelementptr inbounds %struct.efirt_callinfo, %struct.efirt_callinfo* %12, i32 0, i32 7
  store i32 %35, i32* %36, align 8
  %37 = call i32 @efi_call(%struct.efirt_callinfo* %12)
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %17, %15
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i32 @bzero(%struct.efirt_callinfo*, i32) #1

declare dso_local i32 @EFI_RT_METHOD_PA(i32) #1

declare dso_local i32 @efi_call(%struct.efirt_callinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
