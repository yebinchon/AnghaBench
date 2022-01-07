; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/asmc/extr_asmc.c_asmc_fan_getvalue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/asmc/extr_asmc.c_asmc_fan_getvalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @asmc_fan_getvalue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asmc_fan_getvalue(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca [5 x i8], align 1
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @snprintf(i8* %11, i32 5, i8* %12, i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %18 = call i64 @asmc_key_read(i32 %15, i8* %16, i32* %17, i32 8)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %30

21:                                               ; preds = %3
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 6
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 2
  %28 = or i32 %24, %27
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %21, %20
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @asmc_key_read(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
