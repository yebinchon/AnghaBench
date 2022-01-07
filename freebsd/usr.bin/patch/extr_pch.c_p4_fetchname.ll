; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_pch.c_p4_fetchname.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_pch.c_p4_fetchname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_name = type { i32, i32 }

@strippath = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file_name*, i8*)* @p4_fetchname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p4_fetchname(%struct.file_name* %0, i8* %1) #0 {
  %3 = alloca %struct.file_name*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.file_name* %0, %struct.file_name** %3, align 8
  store i8* %1, i8** %4, align 8
  br label %7

7:                                                ; preds = %12, %2
  %8 = load i8*, i8** %4, align 8
  %9 = load i8, i8* %8, align 1
  %10 = call i64 @isspace(i8 zeroext %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %4, align 8
  br label %7

15:                                               ; preds = %7
  %16 = load i8*, i8** %4, align 8
  store i8* %16, i8** %5, align 8
  store i8* null, i8** %6, align 8
  br label %17

17:                                               ; preds = %38, %15
  %18 = load i8*, i8** %5, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = call i64 @isspace(i8 zeroext %24)
  %26 = icmp ne i64 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %22, %17
  %29 = phi i1 [ false, %17 ], [ %27, %22 ]
  br i1 %29, label %30, label %41

30:                                               ; preds = %28
  %31 = load i8*, i8** %5, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 35
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i8*, i8** %5, align 8
  store i8* %36, i8** %6, align 8
  br label %37

37:                                               ; preds = %35, %30
  br label %38

38:                                               ; preds = %37
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %5, align 8
  br label %17

41:                                               ; preds = %28
  %42 = load i8*, i8** %6, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i8*, i8** %6, align 8
  store i8 0, i8* %45, align 1
  br label %46

46:                                               ; preds = %44, %41
  %47 = load i8*, i8** %4, align 8
  %48 = load %struct.file_name*, %struct.file_name** %3, align 8
  %49 = getelementptr inbounds %struct.file_name, %struct.file_name* %48, i32 0, i32 0
  %50 = load i32, i32* @strippath, align 4
  %51 = call i32 @fetchname(i8* %47, i32* %49, i32 %50)
  %52 = load %struct.file_name*, %struct.file_name** %3, align 8
  %53 = getelementptr inbounds %struct.file_name, %struct.file_name* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  ret void
}

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i32 @fetchname(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
