; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_domain.c_pf_proto_unregister.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_domain.c_pf_proto_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain = type { %struct.protosw*, %struct.protosw* }
%struct.protosw = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i64, %struct.domain* }

@EPFNOSUPPORT = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@EPROTOTYPE = common dso_local global i32 0, align 4
@dom_mtx = common dso_local global i32 0, align 4
@EMLINK = common dso_local global i32 0, align 4
@PROTO_SPACER = common dso_local global i32 0, align 4
@nousrreqs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pf_proto_unregister(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.domain*, align 8
  %9 = alloca %struct.protosw*, align 8
  %10 = alloca %struct.protosw*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @EPFNOSUPPORT, align 4
  store i32 %14, i32* %4, align 4
  br label %104

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* @EPROTONOSUPPORT, align 4
  store i32 %19, i32* %4, align 4
  br label %104

20:                                               ; preds = %15
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @EPROTOTYPE, align 4
  store i32 %24, i32* %4, align 4
  br label %104

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = call %struct.domain* @pffinddomain(i32 %26)
  store %struct.domain* %27, %struct.domain** %8, align 8
  %28 = load %struct.domain*, %struct.domain** %8, align 8
  %29 = icmp eq %struct.domain* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @EPFNOSUPPORT, align 4
  store i32 %31, i32* %4, align 4
  br label %104

32:                                               ; preds = %25
  store %struct.protosw* null, %struct.protosw** %10, align 8
  %33 = call i32 @mtx_lock(i32* @dom_mtx)
  %34 = load %struct.domain*, %struct.domain** %8, align 8
  %35 = getelementptr inbounds %struct.domain, %struct.domain* %34, i32 0, i32 1
  %36 = load %struct.protosw*, %struct.protosw** %35, align 8
  store %struct.protosw* %36, %struct.protosw** %9, align 8
  br label %37

37:                                               ; preds = %65, %32
  %38 = load %struct.protosw*, %struct.protosw** %9, align 8
  %39 = load %struct.domain*, %struct.domain** %8, align 8
  %40 = getelementptr inbounds %struct.domain, %struct.domain* %39, i32 0, i32 0
  %41 = load %struct.protosw*, %struct.protosw** %40, align 8
  %42 = icmp ult %struct.protosw* %38, %41
  br i1 %42, label %43, label %68

43:                                               ; preds = %37
  %44 = load %struct.protosw*, %struct.protosw** %9, align 8
  %45 = getelementptr inbounds %struct.protosw, %struct.protosw* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %43
  %50 = load %struct.protosw*, %struct.protosw** %9, align 8
  %51 = getelementptr inbounds %struct.protosw, %struct.protosw* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %49
  %56 = load %struct.protosw*, %struct.protosw** %10, align 8
  %57 = icmp ne %struct.protosw* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = call i32 @mtx_unlock(i32* @dom_mtx)
  %60 = load i32, i32* @EMLINK, align 4
  store i32 %60, i32* %4, align 4
  br label %104

61:                                               ; preds = %55
  %62 = load %struct.protosw*, %struct.protosw** %9, align 8
  store %struct.protosw* %62, %struct.protosw** %10, align 8
  br label %63

63:                                               ; preds = %61
  br label %64

64:                                               ; preds = %63, %49, %43
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.protosw*, %struct.protosw** %9, align 8
  %67 = getelementptr inbounds %struct.protosw, %struct.protosw* %66, i32 1
  store %struct.protosw* %67, %struct.protosw** %9, align 8
  br label %37

68:                                               ; preds = %37
  %69 = load %struct.protosw*, %struct.protosw** %10, align 8
  %70 = icmp eq %struct.protosw* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = call i32 @mtx_unlock(i32* @dom_mtx)
  %73 = load i32, i32* @EPROTONOSUPPORT, align 4
  store i32 %73, i32* %4, align 4
  br label %104

74:                                               ; preds = %68
  %75 = load %struct.protosw*, %struct.protosw** %10, align 8
  %76 = getelementptr inbounds %struct.protosw, %struct.protosw* %75, i32 0, i32 0
  store i32 0, i32* %76, align 8
  %77 = load %struct.domain*, %struct.domain** %8, align 8
  %78 = load %struct.protosw*, %struct.protosw** %10, align 8
  %79 = getelementptr inbounds %struct.protosw, %struct.protosw* %78, i32 0, i32 12
  store %struct.domain* %77, %struct.domain** %79, align 8
  %80 = load i32, i32* @PROTO_SPACER, align 4
  %81 = load %struct.protosw*, %struct.protosw** %10, align 8
  %82 = getelementptr inbounds %struct.protosw, %struct.protosw* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.protosw*, %struct.protosw** %10, align 8
  %84 = getelementptr inbounds %struct.protosw, %struct.protosw* %83, i32 0, i32 11
  store i64 0, i64* %84, align 8
  %85 = load %struct.protosw*, %struct.protosw** %10, align 8
  %86 = getelementptr inbounds %struct.protosw, %struct.protosw* %85, i32 0, i32 10
  store i32* null, i32** %86, align 8
  %87 = load %struct.protosw*, %struct.protosw** %10, align 8
  %88 = getelementptr inbounds %struct.protosw, %struct.protosw* %87, i32 0, i32 9
  store i32* null, i32** %88, align 8
  %89 = load %struct.protosw*, %struct.protosw** %10, align 8
  %90 = getelementptr inbounds %struct.protosw, %struct.protosw* %89, i32 0, i32 8
  store i32* null, i32** %90, align 8
  %91 = load %struct.protosw*, %struct.protosw** %10, align 8
  %92 = getelementptr inbounds %struct.protosw, %struct.protosw* %91, i32 0, i32 7
  store i32* null, i32** %92, align 8
  %93 = load %struct.protosw*, %struct.protosw** %10, align 8
  %94 = getelementptr inbounds %struct.protosw, %struct.protosw* %93, i32 0, i32 6
  store i32* null, i32** %94, align 8
  %95 = load %struct.protosw*, %struct.protosw** %10, align 8
  %96 = getelementptr inbounds %struct.protosw, %struct.protosw* %95, i32 0, i32 5
  store i32* null, i32** %96, align 8
  %97 = load %struct.protosw*, %struct.protosw** %10, align 8
  %98 = getelementptr inbounds %struct.protosw, %struct.protosw* %97, i32 0, i32 4
  store i32* null, i32** %98, align 8
  %99 = load %struct.protosw*, %struct.protosw** %10, align 8
  %100 = getelementptr inbounds %struct.protosw, %struct.protosw* %99, i32 0, i32 3
  store i32* null, i32** %100, align 8
  %101 = load %struct.protosw*, %struct.protosw** %10, align 8
  %102 = getelementptr inbounds %struct.protosw, %struct.protosw* %101, i32 0, i32 2
  store i32* @nousrreqs, i32** %102, align 8
  %103 = call i32 @mtx_unlock(i32* @dom_mtx)
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %74, %71, %58, %30, %23, %18, %13
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local %struct.domain* @pffinddomain(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
