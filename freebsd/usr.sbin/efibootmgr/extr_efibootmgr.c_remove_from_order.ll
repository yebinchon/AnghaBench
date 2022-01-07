; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/efibootmgr/extr_efibootmgr.c_remove_from_order.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/efibootmgr/extr_efibootmgr.c_remove_from_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EFI_GLOBAL_GUID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"BootOrder\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Boot variable %04x not in BootOrder\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Unable to update BootOrder with new value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @remove_from_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_from_order(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i64 %0, i64* %2, align 8
  %9 = load i32, i32* @EFI_GLOBAL_GUID, align 4
  %10 = call i64 @efi_get_variable(i32 %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32** %8, i64* %4, i32* %3)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %64

13:                                               ; preds = %1
  %14 = load i64, i64* %4, align 8
  %15 = call i32* @malloc(i64 %14)
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %13
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %21

21:                                               ; preds = %43, %20
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %21
  %26 = load i32*, i32** %8, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = call i64 @le16dec(i32* %28)
  %30 = load i64, i64* %2, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %43

33:                                               ; preds = %25
  %34 = load i32*, i32** %7, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32*, i32** %8, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = call i32 @memcpy(i32* %36, i32* %39, i32 8)
  %41 = load i64, i64* %6, align 8
  %42 = add i64 %41, 8
  store i64 %42, i64* %6, align 8
  br label %43

43:                                               ; preds = %33, %32
  %44 = load i64, i64* %5, align 8
  %45 = add i64 %44, 8
  store i64 %45, i64* %5, align 8
  br label %21

46:                                               ; preds = %21
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i64, i64* %2, align 8
  %52 = call i32 @warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %51)
  br label %61

53:                                               ; preds = %46
  %54 = load i32*, i32** %7, align 8
  %55 = load i64, i64* %6, align 8
  %56 = call i64 @set_bootvar(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %54, i64 %55)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = call i32 @err(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %53
  br label %61

61:                                               ; preds = %60, %50
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @free(i32* %62)
  br label %64

64:                                               ; preds = %61, %12
  ret void
}

declare dso_local i64 @efi_get_variable(i32, i8*, i32**, i64*, i32*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @le16dec(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @warnx(i8*, i64) #1

declare dso_local i64 @set_bootvar(i8*, i32*, i64) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
