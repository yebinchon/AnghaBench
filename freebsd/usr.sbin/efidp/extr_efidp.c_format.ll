; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/efidp/extr_efidp.c_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/efidp/extr_efidp.c_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXSIZE = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = load i32, i32* @MAXSIZE, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %1, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %2, align 8
  %12 = load i32, i32* @STDIN_FILENO, align 4
  %13 = call i32 @read_file(i32 %12, i8** %5)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %18

16:                                               ; preds = %0
  %17 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %0
  %19 = load i8*, i8** %5, align 8
  %20 = ptrtoint i8* %19 to i64
  store i64 %20, i64* %7, align 8
  br label %21

21:                                               ; preds = %35, %18
  %22 = load i32, i32* %4, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %21
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @efidp_size(i64 %25)
  store i64 %26, i64* %6, align 8
  %27 = trunc i64 %9 to i32
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @efidp_format_device_path(i8* %11, i32 %27, i64 %28, i64 %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %11)
  br label %35

35:                                               ; preds = %33, %24
  %36 = load i64, i64* %6, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = sub i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %4, align 4
  %41 = load i64, i64* %7, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = ptrtoint i8* %44 to i64
  store i64 %45, i64* %7, align 8
  br label %21

46:                                               ; preds = %21
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @free(i8* %47)
  %49 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %49)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @read_file(i32, i8**) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i64 @efidp_size(i64) #2

declare dso_local i32 @efidp_format_device_path(i8*, i32, i64, i64) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
