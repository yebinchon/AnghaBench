; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptc.c_snmp_oct2bits.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptc.c_snmp_oct2bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"0x%llx.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*, i8*)* @snmp_oct2bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @snmp_oct2bits(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp ugt i64 %12, 8
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i8*, i8** %7, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %14, %3
  store i8* null, i8** %4, align 8
  br label %50

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %8, align 4
  store i64 0, i64* %10, align 8
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %38, %21
  %24 = load i32, i32* %8, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %23
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = load i32, i32* %9, align 4
  %34 = shl i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %10, align 8
  %37 = add nsw i64 %36, %35
  store i64 %37, i64* %10, align 8
  br label %38

38:                                               ; preds = %26
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 8
  store i32 %42, i32* %9, align 4
  br label %23

43:                                               ; preds = %23
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  store i8 0, i8* %45, align 1
  %46 = load i8*, i8** %7, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @sprintf(i8* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %47)
  %49 = load i8*, i8** %7, align 8
  store i8* %49, i8** %4, align 8
  br label %50

50:                                               ; preds = %43, %20
  %51 = load i8*, i8** %4, align 8
  ret i8* %51
}

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
