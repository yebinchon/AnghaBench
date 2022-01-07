; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/crypto/extr_cryptostats.c_printt.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/crypto/extr_cryptostats.c_printt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptotstat = type { i64, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }

@.str = private unnamed_addr constant [64 x i8] c"%16.16s: avg %6llu ns : min %6llu ns : max %7llu ns [%u samps]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.cryptotstat*)* @printt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printt(i8* %0, %struct.cryptotstat* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cryptotstat*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.cryptotstat* %1, %struct.cryptotstat** %4, align 8
  %8 = load %struct.cryptotstat*, %struct.cryptotstat** %4, align 8
  %9 = getelementptr inbounds %struct.cryptotstat, %struct.cryptotstat* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %56

13:                                               ; preds = %2
  %14 = load %struct.cryptotstat*, %struct.cryptotstat** %4, align 8
  %15 = getelementptr inbounds %struct.cryptotstat, %struct.cryptotstat* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = mul nsw i64 1000000000, %17
  %19 = load %struct.cryptotstat*, %struct.cryptotstat** %4, align 8
  %20 = getelementptr inbounds %struct.cryptotstat, %struct.cryptotstat* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %18, %22
  %24 = load %struct.cryptotstat*, %struct.cryptotstat** %4, align 8
  %25 = getelementptr inbounds %struct.cryptotstat, %struct.cryptotstat* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sdiv i64 %23, %26
  store i64 %27, i64* %5, align 8
  %28 = load %struct.cryptotstat*, %struct.cryptotstat** %4, align 8
  %29 = getelementptr inbounds %struct.cryptotstat, %struct.cryptotstat* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = mul nsw i64 1000000000, %31
  %33 = load %struct.cryptotstat*, %struct.cryptotstat** %4, align 8
  %34 = getelementptr inbounds %struct.cryptotstat, %struct.cryptotstat* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %32, %36
  store i64 %37, i64* %6, align 8
  %38 = load %struct.cryptotstat*, %struct.cryptotstat** %4, align 8
  %39 = getelementptr inbounds %struct.cryptotstat, %struct.cryptotstat* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = mul nsw i64 1000000000, %41
  %43 = load %struct.cryptotstat*, %struct.cryptotstat** %4, align 8
  %44 = getelementptr inbounds %struct.cryptotstat, %struct.cryptotstat* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %42, %46
  store i64 %47, i64* %7, align 8
  %48 = load i8*, i8** %3, align 8
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.cryptotstat*, %struct.cryptotstat** %4, align 8
  %53 = getelementptr inbounds %struct.cryptotstat, %struct.cryptotstat* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i8* %48, i64 %49, i64 %50, i64 %51, i64 %54)
  br label %56

56:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
