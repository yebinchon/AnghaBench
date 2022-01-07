; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_chap.c_chap_Init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_chap.c_chap_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chap = type { i64, i64, %struct.TYPE_6__, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.physical = type { i32 }

@CHAP_DESCRIPTOR = common dso_local global i32 0, align 4
@chap_UpdateSet = common dso_local global i32 0, align 4
@chap_IsSet = common dso_local global i32 0, align 4
@chap_Read = common dso_local global i32 0, align 4
@chap_Write = common dso_local global i32 0, align 4
@chap_Challenge = common dso_local global i32 0, align 4
@chap_Success = common dso_local global i32 0, align 4
@chap_Failure = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chap_Init(%struct.chap* %0, %struct.physical* %1) #0 {
  %3 = alloca %struct.chap*, align 8
  %4 = alloca %struct.physical*, align 8
  store %struct.chap* %0, %struct.chap** %3, align 8
  store %struct.physical* %1, %struct.physical** %4, align 8
  %5 = load i32, i32* @CHAP_DESCRIPTOR, align 4
  %6 = load %struct.chap*, %struct.chap** %3, align 8
  %7 = getelementptr inbounds %struct.chap, %struct.chap* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  store i32 %5, i32* %8, align 8
  %9 = load i32, i32* @chap_UpdateSet, align 4
  %10 = load %struct.chap*, %struct.chap** %3, align 8
  %11 = getelementptr inbounds %struct.chap, %struct.chap* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* @chap_IsSet, align 4
  %14 = load %struct.chap*, %struct.chap** %3, align 8
  %15 = getelementptr inbounds %struct.chap, %struct.chap* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  store i32 %13, i32* %16, align 8
  %17 = load i32, i32* @chap_Read, align 4
  %18 = load %struct.chap*, %struct.chap** %3, align 8
  %19 = getelementptr inbounds %struct.chap, %struct.chap* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @chap_Write, align 4
  %22 = load %struct.chap*, %struct.chap** %3, align 8
  %23 = getelementptr inbounds %struct.chap, %struct.chap* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load %struct.chap*, %struct.chap** %3, align 8
  %26 = getelementptr inbounds %struct.chap, %struct.chap* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.chap*, %struct.chap** %3, align 8
  %29 = getelementptr inbounds %struct.chap, %struct.chap* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32 -1, i32* %30, align 8
  %31 = load %struct.chap*, %struct.chap** %3, align 8
  %32 = getelementptr inbounds %struct.chap, %struct.chap* %31, i32 0, i32 3
  %33 = load %struct.physical*, %struct.physical** %4, align 8
  %34 = load i32, i32* @chap_Challenge, align 4
  %35 = load i32, i32* @chap_Success, align 4
  %36 = load i32, i32* @chap_Failure, align 4
  %37 = call i32 @auth_Init(i32* %32, %struct.physical* %33, i32 %34, i32 %35, i32 %36)
  %38 = load %struct.chap*, %struct.chap** %3, align 8
  %39 = getelementptr inbounds %struct.chap, %struct.chap* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  store i8 0, i8* %41, align 1
  %42 = load %struct.chap*, %struct.chap** %3, align 8
  %43 = getelementptr inbounds %struct.chap, %struct.chap* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  store i8 0, i8* %45, align 1
  %46 = load %struct.chap*, %struct.chap** %3, align 8
  %47 = getelementptr inbounds %struct.chap, %struct.chap* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.chap*, %struct.chap** %3, align 8
  %49 = getelementptr inbounds %struct.chap, %struct.chap* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  ret void
}

declare dso_local i32 @auth_Init(i32*, %struct.physical*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
