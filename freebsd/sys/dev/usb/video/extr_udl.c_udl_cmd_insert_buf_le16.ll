; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/video/extr_udl.c_udl_cmd_insert_buf_le16.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/video/extr_udl.c_udl_cmd_insert_buf_le16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udl_cmd_buf = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.udl_cmd_buf*, i32*, i32)* @udl_cmd_insert_buf_le16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udl_cmd_insert_buf_le16(%struct.udl_cmd_buf* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.udl_cmd_buf*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.udl_cmd_buf* %0, %struct.udl_cmd_buf** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %47, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %50

12:                                               ; preds = %8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = add nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.udl_cmd_buf*, %struct.udl_cmd_buf** %4, align 8
  %20 = getelementptr inbounds %struct.udl_cmd_buf, %struct.udl_cmd_buf* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.udl_cmd_buf*, %struct.udl_cmd_buf** %4, align 8
  %23 = getelementptr inbounds %struct.udl_cmd_buf, %struct.udl_cmd_buf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %24, %25
  %27 = add nsw i32 %26, 0
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %21, i64 %28
  store i32 %18, i32* %29, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 0
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.udl_cmd_buf*, %struct.udl_cmd_buf** %4, align 8
  %37 = getelementptr inbounds %struct.udl_cmd_buf, %struct.udl_cmd_buf* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.udl_cmd_buf*, %struct.udl_cmd_buf** %4, align 8
  %40 = getelementptr inbounds %struct.udl_cmd_buf, %struct.udl_cmd_buf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %41, %42
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %38, i64 %45
  store i32 %35, i32* %46, align 4
  br label %47

47:                                               ; preds = %12
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 2
  store i32 %49, i32* %7, align 4
  br label %8

50:                                               ; preds = %8
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.udl_cmd_buf*, %struct.udl_cmd_buf** %4, align 8
  %53 = getelementptr inbounds %struct.udl_cmd_buf, %struct.udl_cmd_buf* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, %51
  store i32 %55, i32* %53, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
