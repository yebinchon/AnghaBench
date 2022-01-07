; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/efidev/extr_efirt.c_efi_is_in_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/efidev/extr_efirt.c_efi_is_in_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efi_md = type { i32, i64, i64 }

@EFI_MD_ATTR_RT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efi_md*, i32, i32, i64)* @efi_is_in_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efi_is_in_map(%struct.efi_md* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.efi_md*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.efi_md*, align 8
  %11 = alloca i32, align 4
  store %struct.efi_md* %0, %struct.efi_md** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.efi_md*, %struct.efi_md** %6, align 8
  store %struct.efi_md* %12, %struct.efi_md** %10, align 8
  br label %13

13:                                               ; preds = %45, %4
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %51

17:                                               ; preds = %13
  %18 = load %struct.efi_md*, %struct.efi_md** %10, align 8
  %19 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @EFI_MD_ATTR_RT, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %45

25:                                               ; preds = %17
  %26 = load i64, i64* %9, align 8
  %27 = load %struct.efi_md*, %struct.efi_md** %10, align 8
  %28 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp uge i64 %26, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %25
  %32 = load i64, i64* %9, align 8
  %33 = load %struct.efi_md*, %struct.efi_md** %10, align 8
  %34 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.efi_md*, %struct.efi_md** %10, align 8
  %37 = getelementptr inbounds %struct.efi_md, %struct.efi_md* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PAGE_SIZE, align 8
  %40 = mul i64 %38, %39
  %41 = add i64 %35, %40
  %42 = icmp ult i64 %32, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  store i32 1, i32* %5, align 4
  br label %52

44:                                               ; preds = %31, %25
  br label %45

45:                                               ; preds = %44, %24
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  %48 = load %struct.efi_md*, %struct.efi_md** %10, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call %struct.efi_md* @efi_next_descriptor(%struct.efi_md* %48, i32 %49)
  store %struct.efi_md* %50, %struct.efi_md** %10, align 8
  br label %13

51:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %51, %43
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local %struct.efi_md* @efi_next_descriptor(%struct.efi_md*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
