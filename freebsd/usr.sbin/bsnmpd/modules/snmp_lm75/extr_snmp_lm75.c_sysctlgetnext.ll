; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_lm75/extr_snmp_lm75.c_sysctlgetnext.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_lm75/extr_snmp_lm75.c_sysctlgetnext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i64*)* @sysctlgetnext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysctlgetnext(i32* %0, i32 %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca [12 x i32], align 16
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp sgt i32 %11, 10
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %34

14:                                               ; preds = %4
  %15 = getelementptr inbounds [12 x i32], [12 x i32]* %10, i64 0, i64 0
  store i32 0, i32* %15, align 16
  %16 = getelementptr inbounds [12 x i32], [12 x i32]* %10, i64 0, i64 1
  store i32 2, i32* %16, align 4
  %17 = getelementptr inbounds [12 x i32], [12 x i32]* %10, i64 0, i64 0
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 4
  %23 = trunc i64 %22 to i32
  %24 = call i32 @memcpy(i32* %18, i32* %19, i32 %23)
  %25 = getelementptr inbounds [12 x i32], [12 x i32]* %10, i64 0, i64 0
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 2
  %28 = load i32*, i32** %8, align 8
  %29 = load i64*, i64** %9, align 8
  %30 = call i32 @sysctl(i32* %25, i32 %27, i32* %28, i64* %29, i32 0, i32 0)
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %14
  store i32 -1, i32* %5, align 4
  br label %34

33:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %33, %32, %13
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @sysctl(i32*, i32, i32*, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
