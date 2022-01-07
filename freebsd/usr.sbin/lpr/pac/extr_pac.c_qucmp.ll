; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/pac/extr_pac.c_qucmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/pac/extr_pac.c_qucmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hent = type { i64, i32 }

@sort = common dso_local global i64 0, align 8
@reverse = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @qucmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qucmp(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hent*, align 8
  %6 = alloca %struct.hent*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.hent**
  %10 = load %struct.hent*, %struct.hent** %9, align 8
  store %struct.hent* %10, %struct.hent** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.hent**
  %13 = load %struct.hent*, %struct.hent** %12, align 8
  store %struct.hent* %13, %struct.hent** %6, align 8
  %14 = load i64, i64* @sort, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %2
  %17 = load %struct.hent*, %struct.hent** %5, align 8
  %18 = getelementptr inbounds %struct.hent, %struct.hent* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.hent*, %struct.hent** %6, align 8
  %21 = getelementptr inbounds %struct.hent, %struct.hent* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %34

25:                                               ; preds = %16
  %26 = load %struct.hent*, %struct.hent** %5, align 8
  %27 = getelementptr inbounds %struct.hent, %struct.hent* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.hent*, %struct.hent** %6, align 8
  %30 = getelementptr inbounds %struct.hent, %struct.hent* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %28, %31
  %33 = zext i1 %32 to i32
  br label %34

34:                                               ; preds = %25, %24
  %35 = phi i32 [ -1, %24 ], [ %33, %25 ]
  store i32 %35, i32* %7, align 4
  br label %44

36:                                               ; preds = %2
  %37 = load %struct.hent*, %struct.hent** %5, align 8
  %38 = getelementptr inbounds %struct.hent, %struct.hent* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.hent*, %struct.hent** %6, align 8
  %41 = getelementptr inbounds %struct.hent, %struct.hent* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @strcmp(i32 %39, i32 %42)
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %36, %34
  %45 = load i64, i64* @reverse, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %7, align 4
  %49 = sub nsw i32 0, %48
  br label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %7, align 4
  br label %52

52:                                               ; preds = %50, %47
  %53 = phi i32 [ %49, %47 ], [ %51, %50 ]
  ret i32 %53
}

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
