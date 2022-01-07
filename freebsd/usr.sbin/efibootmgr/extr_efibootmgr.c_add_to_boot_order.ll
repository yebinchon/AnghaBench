; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/efibootmgr/extr_efibootmgr.c_add_to_boot_order.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/efibootmgr/extr_efibootmgr.c_add_to_boot_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EFI_GLOBAL_GUID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"BootOrder\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"efi_get_variable BootOrder\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"set_bootvar\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @add_to_boot_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_to_boot_order(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 4
  %10 = call i32 @strtoul(i8* %9, i32* null, i32 16)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @EFI_GLOBAL_GUID, align 4
  %12 = call i64 @efi_get_variable(i32 %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32** %6, i64* %3, i32* %4)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load i64, i64* @errno, align 8
  %16 = load i64, i64* @ENOENT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i64 0, i64* %3, align 8
  store i32* null, i32** %6, align 8
  br label %21

19:                                               ; preds = %14
  %20 = call i32 @err(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %18
  br label %22

22:                                               ; preds = %21, %1
  %23 = load i64, i64* %3, align 8
  %24 = add i64 %23, 4
  store i64 %24, i64* %3, align 8
  %25 = load i64, i64* %3, align 8
  %26 = call i32* @malloc(i64 %25)
  store i32* %26, i32** %7, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %22
  %30 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %22
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @le16enc(i32* %32, i32 %33)
  %35 = load i64, i64* %3, align 8
  %36 = icmp ugt i64 %35, 4
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 4
  %40 = load i32*, i32** %6, align 8
  %41 = load i64, i64* %3, align 8
  %42 = sub i64 %41, 4
  %43 = call i32 @memcpy(i32* %39, i32* %40, i64 %42)
  br label %44

44:                                               ; preds = %37, %31
  %45 = load i32*, i32** %7, align 8
  %46 = load i64, i64* %3, align 8
  %47 = call i64 @set_bootvar(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %45, i64 %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %44
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @free(i32* %52)
  ret void
}

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i64 @efi_get_variable(i32, i8*, i32**, i64*, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @le16enc(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i64 @set_bootvar(i8*, i32*, i64) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
