; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tr/extr_str.c_genrange.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tr/extr_str.c_genrange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32, i32*, i32 }

@MB_LEN_MAX = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@MB_CUR_MAX = common dso_local global i32 0, align 4
@RANGE = common dso_local global i32 0, align 4
@NCHARS_SB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"genrange() malloc\00", align 1
@OOBCH = common dso_local global i32 0, align 4
@SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @genrange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @genrange(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %8, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %18, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 92
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = call i32 @backslash(%struct.TYPE_4__* %25, i32* %7)
  store i32 %26, i32* %6, align 4
  br label %48

27:                                               ; preds = %2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* @MB_LEN_MAX, align 4
  %32 = call i64 @mbrtowc(i32* %13, i8* %30, i32 %31, i32* null)
  store i64 %32, i64* %12, align 8
  %33 = load i64, i64* %12, align 8
  %34 = icmp eq i64 %33, -1
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = load i64, i64* %12, align 8
  %37 = icmp eq i64 %36, -2
  br i1 %37, label %38, label %41

38:                                               ; preds = %35, %27
  %39 = load i32, i32* @EILSEQ, align 4
  %40 = call i32 @errc(i32 1, i32 %39, i32* null)
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %6, align 4
  %43 = load i64, i64* %12, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 %43
  store i8* %47, i8** %45, align 8
  br label %48

48:                                               ; preds = %41, %24
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* @MB_CUR_MAX, align 4
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %83

57:                                               ; preds = %54, %51, %48
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i8*, i8** %8, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  store i32 0, i32* %3, align 4
  br label %157

67:                                               ; preds = %57
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %68, %71
  %73 = add nsw i32 %72, 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @RANGE, align 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %80, align 8
  store i32 1, i32* %3, align 4
  br label %157

83:                                               ; preds = %54
  %84 = bitcast i32* %6 to i8*
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = bitcast i32* %86 to i8*
  %88 = call i64 @charcoll(i8* %84, i8* %87)
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = load i8*, i8** %8, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  store i32 0, i32* %3, align 4
  br label %157

94:                                               ; preds = %83
  %95 = load i32, i32* @NCHARS_SB, align 4
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = mul i64 %97, 4
  %99 = trunc i64 %98 to i32
  %100 = call i32* @malloc(i32 %99)
  store i32* %100, i32** %11, align 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 3
  store i32* %100, i32** %102, align 8
  %103 = icmp eq i32* %100, null
  br i1 %103, label %104, label %106

104:                                              ; preds = %94
  %105 = call i32 @err(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %94
  store i32 0, i32* %10, align 4
  br label %107

107:                                              ; preds = %128, %106
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* @NCHARS_SB, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %131

111:                                              ; preds = %107
  %112 = bitcast i32* %10 to i8*
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = bitcast i32* %114 to i8*
  %116 = call i64 @charcoll(i8* %112, i8* %115)
  %117 = icmp sge i64 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %111
  %119 = bitcast i32* %10 to i8*
  %120 = bitcast i32* %6 to i8*
  %121 = call i64 @charcoll(i8* %119, i8* %120)
  %122 = icmp sle i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load i32, i32* %10, align 4
  %125 = load i32*, i32** %11, align 8
  %126 = getelementptr inbounds i32, i32* %125, i32 1
  store i32* %126, i32** %11, align 8
  store i32 %124, i32* %125, align 4
  br label %127

127:                                              ; preds = %123, %118, %111
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %10, align 4
  br label %107

131:                                              ; preds = %107
  %132 = load i32, i32* @OOBCH, align 4
  %133 = load i32*, i32** %11, align 8
  store i32 %132, i32* %133, align 4
  %134 = load i32*, i32** %11, align 8
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 3
  %137 = load i32*, i32** %136, align 8
  %138 = ptrtoint i32* %134 to i64
  %139 = ptrtoint i32* %137 to i64
  %140 = sub i64 %138, %139
  %141 = sdiv exact i64 %140, 4
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %9, align 4
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 2
  store i32 0, i32* %144, align 4
  %145 = load i32, i32* @SET, align 4
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 4
  store i32 %145, i32* %147, align 8
  %148 = load i32, i32* %9, align 4
  %149 = icmp sgt i32 %148, 1
  br i1 %149, label %150, label %156

150:                                              ; preds = %131
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 3
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %9, align 4
  %155 = call i32 @mergesort(i32* %153, i32 %154, i32 4, i64 (i8*, i8*)* @charcoll)
  br label %156

156:                                              ; preds = %150, %131
  store i32 1, i32* %3, align 4
  br label %157

157:                                              ; preds = %156, %90, %67, %63
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i32 @backslash(%struct.TYPE_4__*, i32*) #1

declare dso_local i64 @mbrtowc(i32*, i8*, i32, i32*) #1

declare dso_local i32 @errc(i32, i32, i32*) #1

declare dso_local i64 @charcoll(i8*, i8*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @mergesort(i32*, i32, i32, i64 (i8*, i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
