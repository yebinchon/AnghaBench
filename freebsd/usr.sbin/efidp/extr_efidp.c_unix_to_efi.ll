; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/efidp/extr_efidp.c_unix_to_efi.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/efidp/extr_efidp.c_unix_to_efi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXSIZE = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Can't convert '%s' to efi\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Can't format dp for '%s'\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @unix_to_efi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unix_to_efi() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @MAXSIZE, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %1, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %2, align 8
  %11 = load i32, i32* @MAXSIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %3, align 8
  store i32* null, i32** %4, align 8
  br label %14

14:                                               ; preds = %44, %41, %30, %0
  %15 = trunc i64 %8 to i32
  %16 = load i32, i32* @stdin, align 4
  %17 = call i64 @fgets(i8* %10, i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %14
  %20 = call i8* @trim(i8* %10)
  store i8* %20, i8** %5, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @free(i32* %21)
  store i32* null, i32** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @efivar_unix_path_to_device_path(i8* %23, i32** %4)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = load i32*, i32** %4, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27, %19
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* @errno, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %32)
  br label %14

34:                                               ; preds = %27
  %35 = trunc i64 %12 to i32
  %36 = load i32*, i32** %4, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @efidp_size(i32* %37)
  %39 = call i64 @efidp_format_device_path(i8* %13, i32 %35, i32* %36, i32 %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  br label %14

44:                                               ; preds = %34
  %45 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %13)
  br label %14

46:                                               ; preds = %14
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @free(i32* %47)
  %49 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %49)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @fgets(i8*, i32, i32) #2

declare dso_local i8* @trim(i8*) #2

declare dso_local i32 @free(i32*) #2

declare dso_local i32 @efivar_unix_path_to_device_path(i8*, i32**) #2

declare dso_local i32 @warn(i8*, i8*) #2

declare dso_local i64 @efidp_format_device_path(i8*, i32, i32*, i32) #2

declare dso_local i32 @efidp_size(i32*) #2

declare dso_local i32 @warnx(i8*, i8*) #2

declare dso_local i32 @printf(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
