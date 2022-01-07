; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/usbhidctl/extr_usbhid.c_prdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/usbhidctl/extr_usbhid.c_prdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_item = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@hexdump = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c" [0x%x]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.hid_item*)* @prdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prdata(i32* %0, %struct.hid_item* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.hid_item*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.hid_item* %1, %struct.hid_item** %4, align 8
  %8 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %9 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %52, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %14 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %55

17:                                               ; preds = %11
  %18 = load i32*, i32** %3, align 8
  %19 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %20 = call i32 @hid_get_data(i32* %18, %struct.hid_item* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %17
  %26 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %27 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %36

33:                                               ; preds = %25
  %34 = load i32, i32* %5, align 4
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i64, i64* @hexdump, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %39, %36
  %43 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %44 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %47 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %45
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 8
  br label %52

52:                                               ; preds = %42
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %11

55:                                               ; preds = %11
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.hid_item*, %struct.hid_item** %4, align 8
  %58 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  ret void
}

declare dso_local i32 @hid_get_data(i32*, %struct.hid_item*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
