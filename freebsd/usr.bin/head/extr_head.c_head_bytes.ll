; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/head/extr_head.c_head_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/head/extr_head.c_head_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @head_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @head_bytes(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [4096 x i8], align 16
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  br label %7

7:                                                ; preds = %35, %2
  %8 = load i64, i64* %4, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %39

10:                                               ; preds = %7
  %11 = load i64, i64* %4, align 8
  %12 = trunc i64 %11 to i32
  %13 = sext i32 %12 to i64
  %14 = icmp ult i64 %13, 4096
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i64, i64* %4, align 8
  store i64 %16, i64* %6, align 8
  br label %18

17:                                               ; preds = %10
  store i64 4096, i64* %6, align 8
  br label %18

18:                                               ; preds = %17, %15
  %19 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %20 = load i64, i64* %6, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = call i64 @fread(i8* %19, i32 1, i64 %20, i32* %21)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %39

26:                                               ; preds = %18
  %27 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %28 = load i64, i64* %6, align 8
  %29 = load i32, i32* @stdout, align 4
  %30 = call i64 @fwrite(i8* %27, i32 1, i64 %28, i32 %29)
  %31 = load i64, i64* %6, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %26
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %4, align 8
  %38 = sub i64 %37, %36
  store i64 %38, i64* %4, align 8
  br label %7

39:                                               ; preds = %25, %7
  ret void
}

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i64 @fwrite(i8*, i32, i64, i32) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
