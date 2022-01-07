; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_domain.c_pffindproto.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_domain.c_pffindproto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protosw = type { i32, i32 }
%struct.domain = type { %struct.protosw*, %struct.protosw* }

@SOCK_RAW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.protosw* @pffindproto(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.protosw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.domain*, align 8
  %9 = alloca %struct.protosw*, align 8
  %10 = alloca %struct.protosw*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.protosw* null, %struct.protosw** %10, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store %struct.protosw* null, %struct.protosw** %4, align 8
  br label %70

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.domain* @pffinddomain(i32 %15)
  store %struct.domain* %16, %struct.domain** %8, align 8
  %17 = load %struct.domain*, %struct.domain** %8, align 8
  %18 = icmp eq %struct.domain* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store %struct.protosw* null, %struct.protosw** %4, align 8
  br label %70

20:                                               ; preds = %14
  %21 = load %struct.domain*, %struct.domain** %8, align 8
  %22 = getelementptr inbounds %struct.domain, %struct.domain* %21, i32 0, i32 1
  %23 = load %struct.protosw*, %struct.protosw** %22, align 8
  store %struct.protosw* %23, %struct.protosw** %9, align 8
  br label %24

24:                                               ; preds = %65, %20
  %25 = load %struct.protosw*, %struct.protosw** %9, align 8
  %26 = load %struct.domain*, %struct.domain** %8, align 8
  %27 = getelementptr inbounds %struct.domain, %struct.domain* %26, i32 0, i32 0
  %28 = load %struct.protosw*, %struct.protosw** %27, align 8
  %29 = icmp ult %struct.protosw* %25, %28
  br i1 %29, label %30, label %68

30:                                               ; preds = %24
  %31 = load %struct.protosw*, %struct.protosw** %9, align 8
  %32 = getelementptr inbounds %struct.protosw, %struct.protosw* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load %struct.protosw*, %struct.protosw** %9, align 8
  %38 = getelementptr inbounds %struct.protosw, %struct.protosw* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load %struct.protosw*, %struct.protosw** %9, align 8
  store %struct.protosw* %43, %struct.protosw** %4, align 8
  br label %70

44:                                               ; preds = %36, %30
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @SOCK_RAW, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %44
  %49 = load %struct.protosw*, %struct.protosw** %9, align 8
  %50 = getelementptr inbounds %struct.protosw, %struct.protosw* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @SOCK_RAW, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %48
  %55 = load %struct.protosw*, %struct.protosw** %9, align 8
  %56 = getelementptr inbounds %struct.protosw, %struct.protosw* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.protosw*, %struct.protosw** %10, align 8
  %61 = icmp eq %struct.protosw* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load %struct.protosw*, %struct.protosw** %9, align 8
  store %struct.protosw* %63, %struct.protosw** %10, align 8
  br label %64

64:                                               ; preds = %62, %59, %54, %48, %44
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.protosw*, %struct.protosw** %9, align 8
  %67 = getelementptr inbounds %struct.protosw, %struct.protosw* %66, i32 1
  store %struct.protosw* %67, %struct.protosw** %9, align 8
  br label %24

68:                                               ; preds = %24
  %69 = load %struct.protosw*, %struct.protosw** %10, align 8
  store %struct.protosw* %69, %struct.protosw** %4, align 8
  br label %70

70:                                               ; preds = %68, %42, %19, %13
  %71 = load %struct.protosw*, %struct.protosw** %4, align 8
  ret %struct.protosw* %71
}

declare dso_local %struct.domain* @pffinddomain(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
