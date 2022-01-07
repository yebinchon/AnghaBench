; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_t3_get_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_t3_get_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_qset = type { %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_4__ = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_get_desc(%struct.sge_qset* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sge_qset*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.sge_qset* %0, %struct.sge_qset** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %10 = load i32, i32* %7, align 4
  %11 = icmp uge i32 %10, 6
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %5, align 4
  br label %122

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ult i32 %15, 3
  br i1 %16, label %17, label %55

17:                                               ; preds = %14
  %18 = load %struct.sge_qset*, %struct.sge_qset** %6, align 8
  %19 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %17
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.sge_qset*, %struct.sge_qset** %6, align 8
  %30 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp uge i32 %28, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %27, %17
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %122

41:                                               ; preds = %27
  %42 = load i8*, i8** %9, align 8
  %43 = load %struct.sge_qset*, %struct.sge_qset** %6, align 8
  %44 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = call i32 @memcpy(i8* %42, i32* %53, i32 4)
  store i32 4, i32* %5, align 4
  br label %122

55:                                               ; preds = %14
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %56, 3
  br i1 %57, label %58, label %83

58:                                               ; preds = %55
  %59 = load %struct.sge_qset*, %struct.sge_qset** %6, align 8
  %60 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.sge_qset*, %struct.sge_qset** %6, align 8
  %67 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp uge i32 %65, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %64, %58
  %72 = load i32, i32* @EINVAL, align 4
  store i32 %72, i32* %5, align 4
  br label %122

73:                                               ; preds = %64
  %74 = load i8*, i8** %9, align 8
  %75 = load %struct.sge_qset*, %struct.sge_qset** %6, align 8
  %76 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = call i32 @memcpy(i8* %74, i32* %81, i32 4)
  store i32 4, i32* %5, align 4
  br label %122

83:                                               ; preds = %55
  %84 = load i32, i32* %7, align 4
  %85 = sub i32 %84, 4
  store i32 %85, i32* %7, align 4
  %86 = load %struct.sge_qset*, %struct.sge_qset** %6, align 8
  %87 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %106

95:                                               ; preds = %83
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.sge_qset*, %struct.sge_qset** %6, align 8
  %98 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp uge i32 %96, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %95, %83
  %107 = load i32, i32* @EINVAL, align 4
  store i32 %107, i32* %5, align 4
  br label %122

108:                                              ; preds = %95
  %109 = load i8*, i8** %9, align 8
  %110 = load %struct.sge_qset*, %struct.sge_qset** %6, align 8
  %111 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %110, i32 0, i32 0
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = call i32 @memcpy(i8* %109, i32* %120, i32 4)
  store i32 4, i32* %5, align 4
  br label %122

122:                                              ; preds = %108, %106, %73, %71, %41, %38, %12
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
