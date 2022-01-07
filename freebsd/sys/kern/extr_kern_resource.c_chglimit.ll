; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_chglimit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_chglimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uidinfo = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"negative %s for uid = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uidinfo*, i64*, i32, i64, i8*)* @chglimit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chglimit(%struct.uidinfo* %0, i64* %1, i32 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.uidinfo*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.uidinfo* %0, %struct.uidinfo** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load i64*, i64** %8, align 8
  %14 = load i32, i32* %9, align 4
  %15 = sext i32 %14 to i64
  %16 = call i32 @atomic_fetchadd_long(i64* %13, i64 %15)
  %17 = load i32, i32* %9, align 4
  %18 = add nsw i32 %16, %17
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  %20 = load i32, i32* %9, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %5
  %23 = load i64, i64* %10, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = load i64, i64* %12, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* %10, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28, %25
  %33 = load i64*, i64** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = call i32 @atomic_subtract_long(i64* %33, i64 %35)
  store i32 0, i32* %6, align 4
  br label %49

37:                                               ; preds = %28
  br label %48

38:                                               ; preds = %22, %5
  %39 = load i64, i64* %12, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i8*, i8** %11, align 8
  %43 = load %struct.uidinfo*, %struct.uidinfo** %7, align 8
  %44 = getelementptr inbounds %struct.uidinfo, %struct.uidinfo* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %42, i32 %45)
  br label %47

47:                                               ; preds = %41, %38
  br label %48

48:                                               ; preds = %47, %37
  store i32 1, i32* %6, align 4
  br label %49

49:                                               ; preds = %48, %32
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i32 @atomic_fetchadd_long(i64*, i64) #1

declare dso_local i32 @atomic_subtract_long(i64*, i64) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
