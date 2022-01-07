; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ndiscvt/extr_ndiscvt.c_insert_padding.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ndiscvt/extr_ndiscvt.c_insert_padding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*)* @insert_padding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insert_padding(i8** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @malloc(i32 %19)
  store i8* %20, i8** %16, align 8
  %21 = load i8*, i8** %16, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  store i32 %24, i32* %3, align 4
  br label %153

25:                                               ; preds = %2
  %26 = load i8**, i8*** %4, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = load i8*, i8** %16, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @bcopy(i8* %27, i8* %28, i32 %30)
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %12, align 4
  %34 = load i8*, i8** %16, align 8
  %35 = ptrtoint i8* %34 to i32
  %36 = call i64 @pe_get_optional_header(i32 %35, %struct.TYPE_7__* %9)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %153

39:                                               ; preds = %25
  %40 = load i8*, i8** %16, align 8
  %41 = ptrtoint i8* %40 to i32
  %42 = call i32 @pe_numsections(i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i8*, i8** %16, align 8
  %44 = call i32 @SET_HDRS(i8* %43)
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %140, %39
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %143

49:                                               ; preds = %45
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %14, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %15, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %14, align 4
  %65 = sub nsw i32 %63, %64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @ROUND_UP(i32 %65, i32 %67)
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %13, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @ROUND_UP(i32 %76, i32 %78)
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @ROUND_UP(i32 %82, i32 %84)
  %86 = sub nsw i64 %79, %85
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %88, %86
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %13, align 4
  %91 = load i8*, i8** %16, align 8
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %93, %94
  %96 = call i8* @realloc(i8* %91, i32 %95)
  store i8* %96, i8** %17, align 8
  %97 = load i8*, i8** %17, align 8
  %98 = icmp eq i8* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %49
  %100 = load i8*, i8** %16, align 8
  %101 = call i32 @free(i8* %100)
  %102 = load i32, i32* @ENOMEM, align 4
  store i32 %102, i32* %3, align 4
  br label %153

103:                                              ; preds = %49
  %104 = load i8*, i8** %17, align 8
  store i8* %104, i8** %16, align 8
  %105 = load i8*, i8** %16, align 8
  %106 = call i32 @SET_HDRS(i8* %105)
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 %109
  store %struct.TYPE_6__* %110, %struct.TYPE_6__** %6, align 8
  %111 = load i8*, i8** %16, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr i8, i8* %111, i64 %115
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @ROUND_UP(i32 %120, i32 %122)
  %124 = call i32 @bzero(i8* %116, i64 %123)
  %125 = load i8**, i8*** %4, align 8
  %126 = load i8*, i8** %125, align 8
  %127 = load i32, i32* %14, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr i8, i8* %126, i64 %128
  %130 = load i8*, i8** %16, align 8
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr i8, i8* %130, i64 %134
  %136 = load i32, i32* %15, align 4
  %137 = call i32 @bcopy(i8* %129, i8* %135, i32 %136)
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 1
  store %struct.TYPE_6__* %139, %struct.TYPE_6__** %6, align 8
  br label %140

140:                                              ; preds = %103
  %141 = load i32, i32* %10, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %10, align 4
  br label %45

143:                                              ; preds = %45
  %144 = load i8**, i8*** %4, align 8
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @free(i8* %145)
  %147 = load i8*, i8** %16, align 8
  %148 = load i8**, i8*** %4, align 8
  store i8* %147, i8** %148, align 8
  %149 = load i32, i32* %13, align 4
  %150 = load i32*, i32** %5, align 8
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, %149
  store i32 %152, i32* %150, align 4
  store i32 0, i32* %3, align 4
  br label %153

153:                                              ; preds = %143, %99, %38, %23
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i64 @pe_get_optional_header(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @pe_numsections(i32) #1

declare dso_local i32 @SET_HDRS(i8*) #1

declare dso_local i64 @ROUND_UP(i32, i32) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @bzero(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
