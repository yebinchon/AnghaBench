; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_aout.c_funcsymbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_aout.c_funcsymbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlist = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@N_TEXT = common dso_local global i32 0, align 4
@N_EXT = common dso_local global i32 0, align 4
@aflag = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@strtab = common dso_local global i8* null, align 8
@uflag = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlist*)* @funcsymbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @funcsymbol(%struct.nlist* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nlist*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store %struct.nlist* %0, %struct.nlist** %3, align 8
  %6 = load %struct.nlist*, %struct.nlist** %3, align 8
  %7 = getelementptr inbounds %struct.nlist, %struct.nlist* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @N_TEXT, align 4
  %10 = load i32, i32* @N_EXT, align 4
  %11 = or i32 %9, %10
  %12 = icmp eq i32 %8, %11
  br i1 %12, label %24, label %13

13:                                               ; preds = %1
  %14 = load %struct.nlist*, %struct.nlist** %3, align 8
  %15 = getelementptr inbounds %struct.nlist, %struct.nlist* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @N_TEXT, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i64, i64* @aflag, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19, %13
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %2, align 4
  br label %56

24:                                               ; preds = %19, %1
  %25 = load i8*, i8** @strtab, align 8
  %26 = load %struct.nlist*, %struct.nlist** %3, align 8
  %27 = getelementptr inbounds %struct.nlist, %struct.nlist* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %25, i64 %30
  store i8* %31, i8** %4, align 8
  %32 = load i64, i64* @uflag, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %24
  %35 = load i8*, i8** %4, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 95
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %2, align 4
  br label %56

41:                                               ; preds = %34, %24
  br label %42

42:                                               ; preds = %53, %41
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %4, align 8
  %45 = load i8, i8* %43, align 1
  store i8 %45, i8* %5, align 1
  %46 = icmp ne i8 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load i8, i8* %5, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 46
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %2, align 4
  br label %56

53:                                               ; preds = %47
  br label %42

54:                                               ; preds = %42
  %55 = load i32, i32* @TRUE, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %51, %39, %22
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
