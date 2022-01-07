; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicoc.c_iicoc_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicoc.c_iicoc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OC_COMMAND_RDNACK = common dso_local global i8 0, align 1
@OC_COMMAND_READ = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [31 x i8] c"I2C read data byte %d failed.\0A\00", align 1
@IIC_NOERR = common dso_local global i32 0, align 4
@IIC_EBUSERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32*, i32, i32)* @iicoc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iicoc_read(i32 %0, i8* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %17

17:                                               ; preds = %51, %6
  %18 = load i32, i32* %15, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %54

21:                                               ; preds = %17
  %22 = load i32, i32* %15, align 4
  %23 = load i32, i32* %10, align 4
  %24 = sub nsw i32 %23, 1
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i8, i8* @OC_COMMAND_RDNACK, align 1
  %28 = sext i8 %27 to i32
  br label %32

29:                                               ; preds = %21
  %30 = load i8, i8* @OC_COMMAND_READ, align 1
  %31 = sext i8 %30 to i32
  br label %32

32:                                               ; preds = %29, %26
  %33 = phi i32 [ %28, %26 ], [ %31, %29 ]
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %16, align 1
  %35 = load i32, i32* %8, align 4
  %36 = load i8, i8* %16, align 1
  %37 = call i32 @iicoc_rd_cmd(i32 %35, i8 signext %36)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %15, align 4
  %43 = call i32 @device_printf(i32 %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %58

44:                                               ; preds = %32
  %45 = load i32, i32* %14, align 4
  %46 = trunc i32 %45 to i8
  %47 = load i8*, i8** %9, align 8
  %48 = load i32, i32* %15, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  store i8 %46, i8* %50, align 1
  br label %51

51:                                               ; preds = %44
  %52 = load i32, i32* %15, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %15, align 4
  br label %17

54:                                               ; preds = %17
  %55 = load i32, i32* %10, align 4
  %56 = load i32*, i32** %11, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* @IIC_NOERR, align 4
  store i32 %57, i32* %7, align 4
  br label %60

58:                                               ; preds = %40
  %59 = load i32, i32* @IIC_EBUSERR, align 4
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %58, %54
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local i32 @iicoc_rd_cmd(i32, i8 signext) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
