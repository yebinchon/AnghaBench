; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_domain.c_pffindtype.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_domain.c_pffindtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protosw = type { i32 }
%struct.domain = type { %struct.protosw*, %struct.protosw* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.protosw* @pffindtype(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.protosw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.domain*, align 8
  %7 = alloca %struct.protosw*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.domain* @pffinddomain(i32 %8)
  store %struct.domain* %9, %struct.domain** %6, align 8
  %10 = load %struct.domain*, %struct.domain** %6, align 8
  %11 = icmp eq %struct.domain* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.protosw* null, %struct.protosw** %3, align 8
  br label %41

13:                                               ; preds = %2
  %14 = load %struct.domain*, %struct.domain** %6, align 8
  %15 = getelementptr inbounds %struct.domain, %struct.domain* %14, i32 0, i32 1
  %16 = load %struct.protosw*, %struct.protosw** %15, align 8
  store %struct.protosw* %16, %struct.protosw** %7, align 8
  br label %17

17:                                               ; preds = %37, %13
  %18 = load %struct.protosw*, %struct.protosw** %7, align 8
  %19 = load %struct.domain*, %struct.domain** %6, align 8
  %20 = getelementptr inbounds %struct.domain, %struct.domain* %19, i32 0, i32 0
  %21 = load %struct.protosw*, %struct.protosw** %20, align 8
  %22 = icmp ult %struct.protosw* %18, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %17
  %24 = load %struct.protosw*, %struct.protosw** %7, align 8
  %25 = getelementptr inbounds %struct.protosw, %struct.protosw* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.protosw*, %struct.protosw** %7, align 8
  %30 = getelementptr inbounds %struct.protosw, %struct.protosw* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load %struct.protosw*, %struct.protosw** %7, align 8
  store %struct.protosw* %35, %struct.protosw** %3, align 8
  br label %41

36:                                               ; preds = %28, %23
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.protosw*, %struct.protosw** %7, align 8
  %39 = getelementptr inbounds %struct.protosw, %struct.protosw* %38, i32 1
  store %struct.protosw* %39, %struct.protosw** %7, align 8
  br label %17

40:                                               ; preds = %17
  store %struct.protosw* null, %struct.protosw** %3, align 8
  br label %41

41:                                               ; preds = %40, %34, %12
  %42 = load %struct.protosw*, %struct.protosw** %3, align 8
  ret %struct.protosw* %42
}

declare dso_local %struct.domain* @pffinddomain(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
