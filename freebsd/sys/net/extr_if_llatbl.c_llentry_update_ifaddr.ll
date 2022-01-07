; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_llatbl.c_llentry_update_ifaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_llatbl.c_llentry_update_ifaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lltable = type { i32 }
%struct.llentry = type { i32, i32, i32* }
%struct.ifnet = type { i32 }

@LLE_MAX_LINKHDR = common dso_local global i32 0, align 4
@LLE_VALID = common dso_local global i32 0, align 4
@LLE_IFADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lltable*, %struct.llentry*, i8*)* @llentry_update_ifaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llentry_update_ifaddr(%struct.lltable* %0, %struct.llentry* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lltable*, align 8
  %6 = alloca %struct.llentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.lltable* %0, %struct.lltable** %5, align 8
  store %struct.llentry* %1, %struct.llentry** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i32, i32* @LLE_MAX_LINKHDR, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to %struct.ifnet*
  store %struct.ifnet* %20, %struct.ifnet** %8, align 8
  %21 = load %struct.llentry*, %struct.llentry** %6, align 8
  %22 = getelementptr inbounds %struct.llentry, %struct.llentry* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %12, align 8
  %24 = load %struct.llentry*, %struct.llentry** %6, align 8
  %25 = call i32 @LLE_WLOCK(%struct.llentry* %24)
  %26 = load %struct.llentry*, %struct.llentry** %6, align 8
  %27 = getelementptr inbounds %struct.llentry, %struct.llentry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @LLE_VALID, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %3
  %33 = load %struct.llentry*, %struct.llentry** %6, align 8
  %34 = call i32 @LLE_WUNLOCK(%struct.llentry* %33)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %60

35:                                               ; preds = %3
  %36 = load %struct.llentry*, %struct.llentry** %6, align 8
  %37 = getelementptr inbounds %struct.llentry, %struct.llentry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @LLE_IFADDR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %44 = call i32* @IF_LLADDR(%struct.ifnet* %43)
  store i32* %44, i32** %12, align 8
  br label %45

45:                                               ; preds = %42, %35
  %46 = mul nuw i64 4, %16
  store i64 %46, i64* %11, align 8
  %47 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %48 = load %struct.lltable*, %struct.lltable** %5, align 8
  %49 = getelementptr inbounds %struct.lltable, %struct.lltable* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %12, align 8
  %52 = call i32 @lltable_calc_llheader(%struct.ifnet* %47, i32 %50, i32* %51, i32* %18, i64* %11, i32* %13)
  %53 = load %struct.llentry*, %struct.llentry** %6, align 8
  %54 = getelementptr inbounds %struct.llentry, %struct.llentry* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* %11, align 8
  %57 = call i32 @memcpy(i32 %55, i32* %18, i64 %56)
  %58 = load %struct.llentry*, %struct.llentry** %6, align 8
  %59 = call i32 @LLE_WUNLOCK(%struct.llentry* %58)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %60

60:                                               ; preds = %45, %32
  %61 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @LLE_WLOCK(%struct.llentry*) #2

declare dso_local i32 @LLE_WUNLOCK(%struct.llentry*) #2

declare dso_local i32* @IF_LLADDR(%struct.ifnet*) #2

declare dso_local i32 @lltable_calc_llheader(%struct.ifnet*, i32, i32*, i32*, i64*, i32*) #2

declare dso_local i32 @memcpy(i32, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
