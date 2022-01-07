; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/efidp/extr_efidp.c_efi_to_unix.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/efidp/extr_efidp.c_efi_to_unix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXSIZE = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s:%s %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Can't convert '%s' to unix\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @efi_to_unix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efi_to_unix() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = load i32, i32* @MAXSIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %1, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %2, align 8
  %15 = load i32, i32* @MAXSIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %3, align 8
  %18 = ptrtoint i8* %17 to i64
  store i64 %18, i64* %4, align 8
  br label %19

19:                                               ; preds = %43, %0
  %20 = trunc i64 %12 to i32
  %21 = load i32, i32* @stdin, align 4
  %22 = call i64 @fgets(i8* %14, i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %19
  %25 = call i8* @trim(i8* %14)
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i64, i64* %4, align 8
  %28 = trunc i64 %16 to i32
  %29 = call i64 @efidp_parse_device_path(i8* %26, i64 %27, i32 %28)
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @efivar_device_path_to_unix_path(i64 %30, i8** %7, i8** %8, i8** %9)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load i8*, i8** %7, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %35, i8* %36, i8* %37)
  br label %43

39:                                               ; preds = %24
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* @errno, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %39, %34
  br label %19

44:                                               ; preds = %19
  %45 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %45)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @fgets(i8*, i32, i32) #2

declare dso_local i8* @trim(i8*) #2

declare dso_local i64 @efidp_parse_device_path(i8*, i64, i32) #2

declare dso_local i32 @efivar_device_path_to_unix_path(i64, i8**, i8**, i8**) #2

declare dso_local i32 @printf(i8*, i8*, i8*, i8*) #2

declare dso_local i32 @warn(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
