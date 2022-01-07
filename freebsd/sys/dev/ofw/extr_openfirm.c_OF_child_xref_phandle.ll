; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_openfirm.c_OF_child_xref_phandle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_openfirm.c_OF_child_xref_phandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"phandle\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ibm,phandle\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"linux,phandle\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @OF_child_xref_phandle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @OF_child_xref_phandle(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i64 @OF_child(i64 %8)
  store i64 %9, i64* %6, align 8
  br label %10

10:                                               ; preds = %41, %2
  %11 = load i64, i64* %6, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %44

13:                                               ; preds = %10
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @OF_child_xref_phandle(i64 %14, i64 %15)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %17, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i64, i64* %7, align 8
  store i64 %20, i64* %3, align 8
  br label %45

21:                                               ; preds = %13
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @OF_getencprop(i64 %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64* %7, i32 8)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @OF_getencprop(i64 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64* %7, i32 8)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @OF_getencprop(i64 %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i64* %7, i32 8)
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %41

34:                                               ; preds = %29, %25, %21
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i64, i64* %6, align 8
  store i64 %39, i64* %3, align 8
  br label %45

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %33
  %42 = load i64, i64* %6, align 8
  %43 = call i64 @OF_peer(i64 %42)
  store i64 %43, i64* %6, align 8
  br label %10

44:                                               ; preds = %10
  store i64 -1, i64* %3, align 8
  br label %45

45:                                               ; preds = %44, %38, %19
  %46 = load i64, i64* %3, align 8
  ret i64 %46
}

declare dso_local i64 @OF_child(i64) #1

declare dso_local i32 @OF_getencprop(i64, i8*, i64*, i32) #1

declare dso_local i64 @OF_peer(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
