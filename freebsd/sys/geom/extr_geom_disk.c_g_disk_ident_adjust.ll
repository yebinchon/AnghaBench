; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_disk.c_g_disk_ident_adjust.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_disk.c_g_disk_ident_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DISK_IDENT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"x%02hhx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @g_disk_ident_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_disk_ident_adjust(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [4 x i8], align 1
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i32, i32* @DISK_IDENT_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %7, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %8, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 0, i8* %13, align 16
  %14 = load i8*, i8** %3, align 8
  store i8* %14, i8** %5, align 8
  br label %15

15:                                               ; preds = %43, %2
  %16 = load i8*, i8** %5, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %15
  %21 = load i8*, i8** %5, align 8
  %22 = load i8, i8* %21, align 1
  %23 = call i64 @isprint(i8 signext %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i8*, i8** %5, align 8
  %27 = load i8, i8* %26, align 1
  %28 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 1
  store i8 0, i8* %29, align 1
  br label %35

30:                                               ; preds = %20
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %32 = load i8*, i8** %5, align 8
  %33 = load i8, i8* %32, align 1
  %34 = call i32 @snprintf(i8* %31, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8 zeroext %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %37 = trunc i64 %10 to i32
  %38 = call i32 @strlcat(i8* %12, i8* %36, i32 %37)
  %39 = sext i32 %38 to i64
  %40 = icmp uge i64 %39, %10
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %46

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %5, align 8
  br label %15

46:                                               ; preds = %41, %15
  %47 = load i8*, i8** %3, align 8
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @bzero(i8* %47, i64 %48)
  %50 = load i8*, i8** %3, align 8
  %51 = load i64, i64* %4, align 8
  %52 = call i32 @strlcpy(i8* %50, i8* %12, i64 %51)
  %53 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %53)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @isprint(i8 signext) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8 zeroext) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i32 @bzero(i8*, i64) #2

declare dso_local i32 @strlcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
