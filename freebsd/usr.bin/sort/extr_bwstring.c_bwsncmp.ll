; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.c_bwsncmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.c_bwsncmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwstring = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@MB_CUR_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bwsncmp(%struct.bwstring* %0, %struct.bwstring* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bwstring*, align 8
  %7 = alloca %struct.bwstring*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store %struct.bwstring* %0, %struct.bwstring** %6, align 8
  store %struct.bwstring* %1, %struct.bwstring** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %13, align 4
  %18 = load %struct.bwstring*, %struct.bwstring** %6, align 8
  %19 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %11, align 8
  %21 = load %struct.bwstring*, %struct.bwstring** %7, align 8
  %22 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %12, align 8
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp ule i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %4
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp ule i64 %28, %29
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 0, i32 -1
  store i32 %32, i32* %5, align 4
  br label %122

33:                                               ; preds = %4
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp ule i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 1, i32* %5, align 4
  br label %122

38:                                               ; preds = %33
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %11, align 8
  %41 = sub i64 %40, %39
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %12, align 8
  %44 = sub i64 %43, %42
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %11, align 8
  store i64 %45, i64* %10, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* %10, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = load i64, i64* %12, align 8
  store i64 %50, i64* %10, align 8
  br label %51

51:                                               ; preds = %49, %38
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %10, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i64, i64* %9, align 8
  store i64 %56, i64* %10, align 8
  br label %57

57:                                               ; preds = %55, %51
  %58 = load i32, i32* @MB_CUR_MAX, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %77

60:                                               ; preds = %57
  %61 = load %struct.bwstring*, %struct.bwstring** %6, align 8
  %62 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8* %66, i8** %14, align 8
  %67 = load %struct.bwstring*, %struct.bwstring** %7, align 8
  %68 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load i64, i64* %8, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8* %72, i8** %15, align 8
  %73 = load i8*, i8** %14, align 8
  %74 = load i8*, i8** %15, align 8
  %75 = load i64, i64* %10, align 8
  %76 = call i32 @memcmp(i8* %73, i8* %74, i64 %75)
  store i32 %76, i32* %13, align 4
  br label %95

77:                                               ; preds = %57
  %78 = load %struct.bwstring*, %struct.bwstring** %6, align 8
  %79 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = load i64, i64* %8, align 8
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  store i8* %83, i8** %16, align 8
  %84 = load %struct.bwstring*, %struct.bwstring** %7, align 8
  %85 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = load i64, i64* %8, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  store i8* %89, i8** %17, align 8
  %90 = load i8*, i8** %16, align 8
  %91 = load i8*, i8** %17, align 8
  %92 = load i64, i64* %10, align 8
  %93 = call i64 @SIZEOF_WCHAR_STRING(i64 %92)
  %94 = call i32 @memcmp(i8* %90, i8* %91, i64 %93)
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %77, %60
  br label %96

96:                                               ; preds = %95
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %13, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %120

100:                                              ; preds = %97
  %101 = load i64, i64* %11, align 8
  %102 = load i64, i64* %10, align 8
  %103 = icmp ult i64 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = load i64, i64* %11, align 8
  %106 = load i64, i64* %12, align 8
  %107 = icmp ult i64 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  store i32 -1, i32* %13, align 4
  br label %119

109:                                              ; preds = %104, %100
  %110 = load i64, i64* %12, align 8
  %111 = load i64, i64* %10, align 8
  %112 = icmp ult i64 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %109
  %114 = load i64, i64* %12, align 8
  %115 = load i64, i64* %11, align 8
  %116 = icmp ult i64 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  store i32 1, i32* %13, align 4
  br label %118

118:                                              ; preds = %117, %113, %109
  br label %119

119:                                              ; preds = %118, %108
  br label %120

120:                                              ; preds = %119, %97
  %121 = load i32, i32* %13, align 4
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %120, %37, %27
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

declare dso_local i64 @SIZEOF_WCHAR_STRING(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
