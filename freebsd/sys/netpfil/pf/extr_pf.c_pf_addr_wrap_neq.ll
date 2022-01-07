; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_addr_wrap_neq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_addr_wrap_neq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_addr_wrap = type { i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"invalid address type: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pf_addr_wrap*, %struct.pf_addr_wrap*)* @pf_addr_wrap_neq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pf_addr_wrap_neq(%struct.pf_addr_wrap* %0, %struct.pf_addr_wrap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pf_addr_wrap*, align 8
  %5 = alloca %struct.pf_addr_wrap*, align 8
  store %struct.pf_addr_wrap* %0, %struct.pf_addr_wrap** %4, align 8
  store %struct.pf_addr_wrap* %1, %struct.pf_addr_wrap** %5, align 8
  %6 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %4, align 8
  %7 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %5, align 8
  %10 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %77

14:                                               ; preds = %2
  %15 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %4, align 8
  %16 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %72 [
    i32 133, label %18
    i32 130, label %18
    i32 132, label %45
    i32 131, label %60
    i32 128, label %60
    i32 129, label %61
  ]

18:                                               ; preds = %14, %14
  %19 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %4, align 8
  %20 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %5, align 8
  %24 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* @AF_INET6, align 4
  %28 = call i32 @PF_ANEQ(i32* %22, i32* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %77

31:                                               ; preds = %18
  %32 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %4, align 8
  %33 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %5, align 8
  %37 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* @AF_INET6, align 4
  %41 = call i32 @PF_ANEQ(i32* %35, i32* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %77

44:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %77

45:                                               ; preds = %14
  %46 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %4, align 8
  %47 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %5, align 8
  %53 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %51, %57
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %3, align 4
  br label %77

60:                                               ; preds = %14, %14
  store i32 0, i32* %3, align 4
  br label %77

61:                                               ; preds = %14
  %62 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %4, align 8
  %63 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %5, align 8
  %67 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %65, %69
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %3, align 4
  br label %77

72:                                               ; preds = %14
  %73 = load %struct.pf_addr_wrap*, %struct.pf_addr_wrap** %4, align 8
  %74 = getelementptr inbounds %struct.pf_addr_wrap, %struct.pf_addr_wrap* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %75)
  store i32 1, i32* %3, align 4
  br label %77

77:                                               ; preds = %72, %61, %60, %45, %44, %43, %30, %13
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @PF_ANEQ(i32*, i32*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
