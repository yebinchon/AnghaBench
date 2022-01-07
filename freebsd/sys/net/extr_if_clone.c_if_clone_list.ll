; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_clone.c_if_clone_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_clone.c_if_clone_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_clonereq = type { i64, i32, i8* }
%struct.if_clone = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@V_if_cloners_count = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@M_CLONE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@V_if_cloners = common dso_local global i32 0, align 4
@ifc_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @if_clone_list(%struct.if_clonereq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.if_clonereq*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.if_clone*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.if_clonereq* %0, %struct.if_clonereq** %3, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.if_clonereq*, %struct.if_clonereq** %3, align 8
  %12 = getelementptr inbounds %struct.if_clonereq, %struct.if_clonereq* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %2, align 4
  br label %114

17:                                               ; preds = %1
  %18 = call i32 (...) @IF_CLONERS_LOCK()
  %19 = load i32, i32* @V_if_cloners_count, align 4
  %20 = sext i32 %19 to i64
  %21 = load %struct.if_clonereq*, %struct.if_clonereq** %3, align 8
  %22 = getelementptr inbounds %struct.if_clonereq, %struct.if_clonereq* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %20, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i32, i32* @V_if_cloners_count, align 4
  %27 = sext i32 %26 to i64
  br label %32

28:                                               ; preds = %17
  %29 = load %struct.if_clonereq*, %struct.if_clonereq** %3, align 8
  %30 = getelementptr inbounds %struct.if_clonereq, %struct.if_clonereq* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  br label %32

32:                                               ; preds = %28, %25
  %33 = phi i64 [ %27, %25 ], [ %31, %28 ]
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %8, align 4
  %35 = call i32 (...) @IF_CLONERS_UNLOCK()
  %36 = load i32, i32* @IFNAMSIZ, align 4
  %37 = load i32, i32* %8, align 4
  %38 = mul nsw i32 %36, %37
  %39 = load i32, i32* @M_CLONE, align 4
  %40 = load i32, i32* @M_WAITOK, align 4
  %41 = load i32, i32* @M_ZERO, align 4
  %42 = or i32 %40, %41
  %43 = call i8* @malloc(i32 %38, i32 %39, i32 %42)
  store i8* %43, i8** %6, align 8
  %44 = call i32 (...) @IF_CLONERS_LOCK()
  %45 = load i32, i32* @V_if_cloners_count, align 4
  %46 = load %struct.if_clonereq*, %struct.if_clonereq** %3, align 8
  %47 = getelementptr inbounds %struct.if_clonereq, %struct.if_clonereq* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.if_clonereq*, %struct.if_clonereq** %3, align 8
  %49 = getelementptr inbounds %struct.if_clonereq, %struct.if_clonereq* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %5, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %32
  br label %91

53:                                               ; preds = %32
  %54 = load i32, i32* @V_if_cloners_count, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @V_if_cloners_count, align 4
  br label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %8, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  store i32 %62, i32* %9, align 4
  %63 = call %struct.if_clone* @LIST_FIRST(i32* @V_if_cloners)
  store %struct.if_clone* %63, %struct.if_clone** %7, align 8
  %64 = load i8*, i8** %6, align 8
  store i8* %64, i8** %4, align 8
  br label %65

65:                                               ; preds = %80, %61
  %66 = load %struct.if_clone*, %struct.if_clone** %7, align 8
  %67 = icmp ne %struct.if_clone* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br label %71

71:                                               ; preds = %68, %65
  %72 = phi i1 [ false, %65 ], [ %70, %68 ]
  br i1 %72, label %73, label %90

73:                                               ; preds = %71
  %74 = load i8*, i8** %4, align 8
  %75 = load %struct.if_clone*, %struct.if_clone** %7, align 8
  %76 = getelementptr inbounds %struct.if_clone, %struct.if_clone* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @IFNAMSIZ, align 4
  %79 = call i32 @strlcpy(i8* %74, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %73
  %81 = load %struct.if_clone*, %struct.if_clone** %7, align 8
  %82 = load i32, i32* @ifc_list, align 4
  %83 = call %struct.if_clone* @LIST_NEXT(%struct.if_clone* %81, i32 %82)
  store %struct.if_clone* %83, %struct.if_clone** %7, align 8
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* @IFNAMSIZ, align 4
  %87 = load i8*, i8** %4, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  store i8* %89, i8** %4, align 8
  br label %65

90:                                               ; preds = %71
  br label %91

91:                                               ; preds = %90, %52
  %92 = call i32 (...) @IF_CLONERS_UNLOCK()
  %93 = load i32, i32* %10, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %91
  %96 = load i8*, i8** %5, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = load i8*, i8** %6, align 8
  %100 = load i8*, i8** %5, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @IFNAMSIZ, align 4
  %103 = mul nsw i32 %101, %102
  %104 = call i32 @copyout(i8* %99, i8* %100, i32 %103)
  store i32 %104, i32* %10, align 4
  br label %105

105:                                              ; preds = %98, %95, %91
  %106 = load i8*, i8** %6, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load i8*, i8** %6, align 8
  %110 = load i32, i32* @M_CLONE, align 4
  %111 = call i32 @free(i8* %109, i32 %110)
  br label %112

112:                                              ; preds = %108, %105
  %113 = load i32, i32* %10, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %112, %15
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @IF_CLONERS_LOCK(...) #1

declare dso_local i32 @IF_CLONERS_UNLOCK(...) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local %struct.if_clone* @LIST_FIRST(i32*) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local %struct.if_clone* @LIST_NEXT(%struct.if_clone*, i32) #1

declare dso_local i32 @copyout(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
