; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_hash_expand.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_hash_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uma_hash = type { i64, i32* }
%struct.TYPE_4__ = type { i32 }

@us_hlink = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uma_hash*, %struct.uma_hash*)* @hash_expand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_expand(%struct.uma_hash* %0, %struct.uma_hash* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uma_hash*, align 8
  %5 = alloca %struct.uma_hash*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.uma_hash* %0, %struct.uma_hash** %4, align 8
  store %struct.uma_hash* %1, %struct.uma_hash** %5, align 8
  %9 = load %struct.uma_hash*, %struct.uma_hash** %5, align 8
  %10 = getelementptr inbounds %struct.uma_hash, %struct.uma_hash* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %72

14:                                               ; preds = %2
  %15 = load %struct.uma_hash*, %struct.uma_hash** %4, align 8
  %16 = getelementptr inbounds %struct.uma_hash, %struct.uma_hash* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.uma_hash*, %struct.uma_hash** %5, align 8
  %19 = getelementptr inbounds %struct.uma_hash, %struct.uma_hash* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %72

23:                                               ; preds = %14
  store i64 0, i64* %8, align 8
  br label %24

24:                                               ; preds = %68, %23
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.uma_hash*, %struct.uma_hash** %4, align 8
  %27 = getelementptr inbounds %struct.uma_hash, %struct.uma_hash* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %25, %28
  br i1 %29, label %30, label %71

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %40, %30
  %32 = load %struct.uma_hash*, %struct.uma_hash** %4, align 8
  %33 = getelementptr inbounds %struct.uma_hash, %struct.uma_hash* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = call i32 @SLIST_EMPTY(i32* %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br i1 %39, label %40, label %67

40:                                               ; preds = %31
  %41 = load %struct.uma_hash*, %struct.uma_hash** %4, align 8
  %42 = getelementptr inbounds %struct.uma_hash, %struct.uma_hash* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = call %struct.TYPE_4__* @SLIST_FIRST(i32* %45)
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %6, align 8
  %47 = load %struct.uma_hash*, %struct.uma_hash** %4, align 8
  %48 = getelementptr inbounds %struct.uma_hash, %struct.uma_hash* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %8, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* @us_hlink, align 4
  %53 = call i32 @SLIST_REMOVE_HEAD(i32* %51, i32 %52)
  %54 = load %struct.uma_hash*, %struct.uma_hash** %5, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @UMA_HASH(%struct.uma_hash* %54, i32 %57)
  store i64 %58, i64* %7, align 8
  %59 = load %struct.uma_hash*, %struct.uma_hash** %5, align 8
  %60 = getelementptr inbounds %struct.uma_hash, %struct.uma_hash* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* %7, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %65 = load i32, i32* @us_hlink, align 4
  %66 = call i32 @SLIST_INSERT_HEAD(i32* %63, %struct.TYPE_4__* %64, i32 %65)
  br label %31

67:                                               ; preds = %31
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %8, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %8, align 8
  br label %24

71:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %22, %13
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @SLIST_EMPTY(i32*) #1

declare dso_local %struct.TYPE_4__* @SLIST_FIRST(i32*) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(i32*, i32) #1

declare dso_local i64 @UMA_HASH(%struct.uma_hash*, i32) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
