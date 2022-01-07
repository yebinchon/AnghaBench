; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if.c_if_grow.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if.c_if_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }

@V_if_indexlim = common dso_local global i32 0, align 4
@M_IFNET = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@V_ifindex_table = common dso_local global %struct.ifnet** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @if_grow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @if_grow() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet**, align 8
  %5 = alloca i8*, align 8
  store i8* null, i8** %5, align 8
  %6 = call i32 (...) @IFNET_WLOCK_ASSERT()
  %7 = load i32, i32* @V_if_indexlim, align 4
  store i32 %7, i32* %2, align 4
  %8 = call i32 (...) @IFNET_WUNLOCK()
  %9 = load i32, i32* %2, align 4
  %10 = shl i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 8
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @M_IFNET, align 4
  %16 = load i32, i32* @M_WAITOK, align 4
  %17 = load i32, i32* @M_ZERO, align 4
  %18 = or i32 %16, %17
  %19 = call %struct.ifnet** @malloc(i32 %14, i32 %15, i32 %18)
  store %struct.ifnet** %19, %struct.ifnet*** %4, align 8
  %20 = call i32 (...) @IFNET_WLOCK()
  %21 = load i32, i32* @V_if_indexlim, align 4
  %22 = load i32, i32* %2, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %0
  %25 = load %struct.ifnet**, %struct.ifnet*** %4, align 8
  %26 = load i32, i32* @M_IFNET, align 4
  %27 = call i32 @free(%struct.ifnet** %25, i32 %26)
  store i8* null, i8** %1, align 8
  br label %46

28:                                               ; preds = %0
  %29 = load %struct.ifnet**, %struct.ifnet*** @V_ifindex_table, align 8
  %30 = icmp ne %struct.ifnet** %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load %struct.ifnet**, %struct.ifnet*** %4, align 8
  %33 = ptrtoint %struct.ifnet** %32 to i32
  %34 = load %struct.ifnet**, %struct.ifnet*** @V_ifindex_table, align 8
  %35 = ptrtoint %struct.ifnet** %34 to i32
  %36 = load i32, i32* %3, align 4
  %37 = sdiv i32 %36, 2
  %38 = call i32 @memcpy(i32 %33, i32 %35, i32 %37)
  %39 = load %struct.ifnet**, %struct.ifnet*** @V_ifindex_table, align 8
  %40 = bitcast %struct.ifnet** %39 to i8*
  store i8* %40, i8** %5, align 8
  br label %41

41:                                               ; preds = %31, %28
  %42 = load i32, i32* @V_if_indexlim, align 4
  %43 = shl i32 %42, 1
  store i32 %43, i32* @V_if_indexlim, align 4
  %44 = load %struct.ifnet**, %struct.ifnet*** %4, align 8
  store %struct.ifnet** %44, %struct.ifnet*** @V_ifindex_table, align 8
  %45 = load i8*, i8** %5, align 8
  store i8* %45, i8** %1, align 8
  br label %46

46:                                               ; preds = %41, %24
  %47 = load i8*, i8** %1, align 8
  ret i8* %47
}

declare dso_local i32 @IFNET_WLOCK_ASSERT(...) #1

declare dso_local i32 @IFNET_WUNLOCK(...) #1

declare dso_local %struct.ifnet** @malloc(i32, i32, i32) #1

declare dso_local i32 @IFNET_WLOCK(...) #1

declare dso_local i32 @free(%struct.ifnet**, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
