; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sglist.c_sglist_split.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sglist.c_sglist_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sglist = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@EDOOFUS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sglist_split(%struct.sglist* %0, %struct.sglist** %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sglist*, align 8
  %7 = alloca %struct.sglist**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sglist*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sglist* %0, %struct.sglist** %6, align 8
  store %struct.sglist** %1, %struct.sglist*** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.sglist*, %struct.sglist** %6, align 8
  %16 = getelementptr inbounds %struct.sglist, %struct.sglist* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @EDOOFUS, align 4
  store i32 %20, i32* %5, align 4
  br label %164

21:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %14, align 4
  br label %22

22:                                               ; preds = %49, %21
  %23 = load i32, i32* %14, align 4
  %24 = load %struct.sglist*, %struct.sglist** %6, align 8
  %25 = getelementptr inbounds %struct.sglist, %struct.sglist* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %52

28:                                               ; preds = %22
  %29 = load %struct.sglist*, %struct.sglist** %6, align 8
  %30 = getelementptr inbounds %struct.sglist, %struct.sglist* %29, i32 0, i32 3
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32, i32* %14, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %11, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %11, align 8
  %39 = load i32, i32* %13, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %13, align 4
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* %8, align 8
  %43 = icmp uge i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %28
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* %8, align 8
  %47 = sub i64 %45, %46
  store i64 %47, i64* %12, align 8
  br label %52

48:                                               ; preds = %28
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %14, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %14, align 4
  br label %22

52:                                               ; preds = %44, %22
  %53 = load i32, i32* %13, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %164

56:                                               ; preds = %52
  %57 = load %struct.sglist**, %struct.sglist*** %7, align 8
  %58 = load %struct.sglist*, %struct.sglist** %57, align 8
  %59 = icmp eq %struct.sglist* %58, null
  br i1 %59, label %60, label %71

60:                                               ; preds = %56
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call %struct.sglist* @sglist_alloc(i32 %61, i32 %62)
  store %struct.sglist* %63, %struct.sglist** %10, align 8
  %64 = load %struct.sglist*, %struct.sglist** %10, align 8
  %65 = icmp eq %struct.sglist* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* @ENOMEM, align 4
  store i32 %67, i32* %5, align 4
  br label %164

68:                                               ; preds = %60
  %69 = load %struct.sglist*, %struct.sglist** %10, align 8
  %70 = load %struct.sglist**, %struct.sglist*** %7, align 8
  store %struct.sglist* %69, %struct.sglist** %70, align 8
  br label %89

71:                                               ; preds = %56
  %72 = load %struct.sglist**, %struct.sglist*** %7, align 8
  %73 = load %struct.sglist*, %struct.sglist** %72, align 8
  store %struct.sglist* %73, %struct.sglist** %10, align 8
  %74 = load %struct.sglist*, %struct.sglist** %10, align 8
  %75 = getelementptr inbounds %struct.sglist, %struct.sglist* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %13, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = load i32, i32* @EFBIG, align 4
  store i32 %80, i32* %5, align 4
  br label %164

81:                                               ; preds = %71
  %82 = load %struct.sglist*, %struct.sglist** %10, align 8
  %83 = getelementptr inbounds %struct.sglist, %struct.sglist* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* @EINVAL, align 4
  store i32 %87, i32* %5, align 4
  br label %164

88:                                               ; preds = %81
  br label %89

89:                                               ; preds = %88, %68
  %90 = load %struct.sglist*, %struct.sglist** %6, align 8
  %91 = getelementptr inbounds %struct.sglist, %struct.sglist* %90, i32 0, i32 3
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = load %struct.sglist*, %struct.sglist** %10, align 8
  %94 = getelementptr inbounds %struct.sglist, %struct.sglist* %93, i32 0, i32 3
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = mul i64 %97, 4
  %99 = trunc i64 %98 to i32
  %100 = call i32 @bcopy(%struct.TYPE_3__* %92, %struct.TYPE_3__* %95, i32 %99)
  %101 = load i32, i32* %13, align 4
  %102 = load %struct.sglist*, %struct.sglist** %10, align 8
  %103 = getelementptr inbounds %struct.sglist, %struct.sglist* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load i64, i64* %12, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %144

106:                                              ; preds = %89
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %13, align 4
  %109 = load i64, i64* %12, align 8
  %110 = load %struct.sglist*, %struct.sglist** %10, align 8
  %111 = getelementptr inbounds %struct.sglist, %struct.sglist* %110, i32 0, i32 3
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = sub i64 %117, %109
  store i64 %118, i64* %116, align 8
  %119 = load %struct.sglist*, %struct.sglist** %10, align 8
  %120 = getelementptr inbounds %struct.sglist, %struct.sglist* %119, i32 0, i32 3
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %12, align 8
  %128 = add i64 %126, %127
  %129 = load %struct.sglist*, %struct.sglist** %6, align 8
  %130 = getelementptr inbounds %struct.sglist, %struct.sglist* %129, i32 0, i32 3
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  store i64 %128, i64* %135, align 8
  %136 = load i64, i64* %12, align 8
  %137 = load %struct.sglist*, %struct.sglist** %6, align 8
  %138 = getelementptr inbounds %struct.sglist, %struct.sglist* %137, i32 0, i32 3
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %138, align 8
  %140 = load i32, i32* %13, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  store i64 %136, i64* %143, align 8
  br label %144

144:                                              ; preds = %106, %89
  %145 = load i32, i32* %13, align 4
  %146 = load %struct.sglist*, %struct.sglist** %6, align 8
  %147 = getelementptr inbounds %struct.sglist, %struct.sglist* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = sub nsw i32 %148, %145
  store i32 %149, i32* %147, align 4
  %150 = load %struct.sglist*, %struct.sglist** %6, align 8
  %151 = getelementptr inbounds %struct.sglist, %struct.sglist* %150, i32 0, i32 3
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %151, align 8
  %153 = load i32, i32* %13, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i64 %154
  %156 = load %struct.sglist*, %struct.sglist** %6, align 8
  %157 = getelementptr inbounds %struct.sglist, %struct.sglist* %156, i32 0, i32 3
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %157, align 8
  %159 = load i32, i32* %13, align 4
  %160 = sext i32 %159 to i64
  %161 = mul i64 %160, 4
  %162 = trunc i64 %161 to i32
  %163 = call i32 @bcopy(%struct.TYPE_3__* %155, %struct.TYPE_3__* %158, i32 %162)
  store i32 0, i32* %5, align 4
  br label %164

164:                                              ; preds = %144, %86, %79, %66, %55, %19
  %165 = load i32, i32* %5, align 4
  ret i32 %165
}

declare dso_local %struct.sglist* @sglist_alloc(i32, i32) #1

declare dso_local i32 @bcopy(%struct.TYPE_3__*, %struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
