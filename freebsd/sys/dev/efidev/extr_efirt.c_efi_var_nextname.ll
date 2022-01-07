; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/efidev/extr_efirt.c_efi_var_nextname.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/efidev/extr_efirt.c_efi_var_nextname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uuid = type { i32 }
%struct.efirt_callinfo = type { i32, i8*, i64, i64, i64, i32 }

@efi_runtime = common dso_local global i32* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"rt_scanvar\00", align 1
@rt_scanvar = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efi_var_nextname(i64* %0, i32* %1, %struct.uuid* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.uuid*, align 8
  %8 = alloca %struct.efirt_callinfo, align 8
  store i64* %0, i64** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.uuid* %2, %struct.uuid** %7, align 8
  %9 = load i32*, i32** @efi_runtime, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @ENXIO, align 4
  store i32 %12, i32* %4, align 4
  br label %30

13:                                               ; preds = %3
  %14 = call i32 @bzero(%struct.efirt_callinfo* %8, i32 48)
  %15 = getelementptr inbounds %struct.efirt_callinfo, %struct.efirt_callinfo* %8, i32 0, i32 0
  store i32 3, i32* %15, align 8
  %16 = getelementptr inbounds %struct.efirt_callinfo, %struct.efirt_callinfo* %8, i32 0, i32 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %17 = load i64*, i64** %5, align 8
  %18 = ptrtoint i64* %17 to i64
  %19 = getelementptr inbounds %struct.efirt_callinfo, %struct.efirt_callinfo* %8, i32 0, i32 2
  store i64 %18, i64* %19, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = ptrtoint i32* %20 to i64
  %22 = getelementptr inbounds %struct.efirt_callinfo, %struct.efirt_callinfo* %8, i32 0, i32 3
  store i64 %21, i64* %22, align 8
  %23 = load %struct.uuid*, %struct.uuid** %7, align 8
  %24 = ptrtoint %struct.uuid* %23 to i64
  %25 = getelementptr inbounds %struct.efirt_callinfo, %struct.efirt_callinfo* %8, i32 0, i32 4
  store i64 %24, i64* %25, align 8
  %26 = load i32, i32* @rt_scanvar, align 4
  %27 = call i32 @EFI_RT_METHOD_PA(i32 %26)
  %28 = getelementptr inbounds %struct.efirt_callinfo, %struct.efirt_callinfo* %8, i32 0, i32 5
  store i32 %27, i32* %28, align 8
  %29 = call i32 @efi_call(%struct.efirt_callinfo* %8)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %13, %11
  %31 = load i32, i32* %4, align 4
  ret i32 %31
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
