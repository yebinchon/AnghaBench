; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_db_interface.c_db_inst_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_db_interface.c_db_inst_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@IT_BRANCH = common dso_local global i32 0, align 4
@IT_CALL = common dso_local global i32 0, align 4
@IT_LOAD = common dso_local global i32 0, align 4
@IT_STORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db_inst_type(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %2, align 4
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  store i32 %5, i32* %6, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = trunc i64 %9 to i32
  switch i32 %10, label %46 [
    i32 131, label %11
    i32 166, label %21
    i32 145, label %31
    i32 146, label %33
    i32 163, label %33
    i32 162, label %33
    i32 149, label %33
    i32 148, label %33
    i32 155, label %33
    i32 154, label %33
    i32 157, label %33
    i32 156, label %33
    i32 147, label %35
    i32 142, label %42
    i32 139, label %42
    i32 137, label %42
    i32 140, label %42
    i32 141, label %42
    i32 138, label %42
    i32 135, label %42
    i32 136, label %42
    i32 134, label %44
    i32 132, label %44
    i32 130, label %44
    i32 133, label %44
    i32 129, label %44
  ]

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  switch i32 %15, label %20 [
    i32 143, label %16
    i32 144, label %18
    i32 128, label %18
  ]

16:                                               ; preds = %11
  %17 = load i32, i32* @IT_BRANCH, align 4
  store i32 %17, i32* %4, align 4
  br label %20

18:                                               ; preds = %11, %11
  %19 = load i32, i32* @IT_CALL, align 4
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %11, %18, %16
  br label %46

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  switch i32 %25, label %30 [
    i32 153, label %26
    i32 150, label %26
    i32 161, label %26
    i32 158, label %26
    i32 152, label %28
    i32 151, label %28
    i32 160, label %28
    i32 159, label %28
  ]

26:                                               ; preds = %21, %21, %21, %21
  %27 = load i32, i32* @IT_BRANCH, align 4
  store i32 %27, i32* %4, align 4
  br label %30

28:                                               ; preds = %21, %21, %21, %21
  %29 = load i32, i32* @IT_CALL, align 4
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %21, %28, %26
  br label %46

31:                                               ; preds = %1
  %32 = load i32, i32* @IT_CALL, align 4
  store i32 %32, i32* %4, align 4
  br label %46

33:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1
  %34 = load i32, i32* @IT_BRANCH, align 4
  store i32 %34, i32* %4, align 4
  br label %46

35:                                               ; preds = %1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %41 [
    i32 165, label %39
    i32 164, label %39
  ]

39:                                               ; preds = %35, %35
  %40 = load i32, i32* @IT_BRANCH, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %35, %39
  br label %46

42:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  %43 = load i32, i32* @IT_LOAD, align 4
  store i32 %43, i32* %4, align 4
  br label %46

44:                                               ; preds = %1, %1, %1, %1, %1
  %45 = load i32, i32* @IT_STORE, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %1, %44, %42, %41, %33, %31, %30, %20
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
