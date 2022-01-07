; ModuleID = '/home/carl/AnghaBench/git/compat/extr_precompose_utf8.c_precompose_utf8_readdir.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_precompose_utf8.c_precompose_utf8_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent_prec_psx = type { i64, i8*, i32, i32 }
%struct.TYPE_3__ = type { i64, %struct.dirent_prec_psx*, i32 }
%struct.dirent = type { i32, i32, i32 }

@errno = common dso_local global i32 0, align 4
@precomposed_unicode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [174 x i8] c"iconv_open(%s,%s) failed, but needed:\0A    precomposed unicode is not supported.\0A    If you want to use decomposed unicode, run\0A    \22git config core.precomposeunicode false\22\0A\00", align 1
@repo_encoding = common dso_local global i32 0, align 4
@path_encoding = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dirent_prec_psx* @precompose_utf8_readdir(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.dirent_prec_psx*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.dirent*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.dirent* @readdir(i32 %15)
  store %struct.dirent* %16, %struct.dirent** %4, align 8
  %17 = load %struct.dirent*, %struct.dirent** %4, align 8
  %18 = icmp ne %struct.dirent* %17, null
  br i1 %18, label %19, label %135

19:                                               ; preds = %1
  %20 = load %struct.dirent*, %struct.dirent** %4, align 8
  %21 = getelementptr inbounds %struct.dirent, %struct.dirent* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @strlen(i32 %22)
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  store i64 %26, i64* %6, align 8
  %27 = load i32, i32* @errno, align 4
  store i32 %27, i32* %7, align 4
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load %struct.dirent_prec_psx*, %struct.dirent_prec_psx** %30, align 8
  %32 = getelementptr inbounds %struct.dirent_prec_psx, %struct.dirent_prec_psx* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ugt i64 %28, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %19
  %36 = load i64, i64* %6, align 8
  %37 = add i64 4, %36
  %38 = sub i64 %37, 8
  store i64 %38, i64* %8, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load %struct.dirent_prec_psx*, %struct.dirent_prec_psx** %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call %struct.dirent_prec_psx* @xrealloc(%struct.dirent_prec_psx* %41, i64 %42)
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store %struct.dirent_prec_psx* %43, %struct.dirent_prec_psx** %45, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load %struct.dirent_prec_psx*, %struct.dirent_prec_psx** %48, align 8
  %50 = getelementptr inbounds %struct.dirent_prec_psx, %struct.dirent_prec_psx* %49, i32 0, i32 0
  store i64 %46, i64* %50, align 8
  br label %51

51:                                               ; preds = %35, %19
  %52 = load %struct.dirent*, %struct.dirent** %4, align 8
  %53 = getelementptr inbounds %struct.dirent, %struct.dirent* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load %struct.dirent_prec_psx*, %struct.dirent_prec_psx** %56, align 8
  %58 = getelementptr inbounds %struct.dirent_prec_psx, %struct.dirent_prec_psx* %57, i32 0, i32 3
  store i32 %54, i32* %58, align 4
  %59 = load %struct.dirent*, %struct.dirent** %4, align 8
  %60 = getelementptr inbounds %struct.dirent, %struct.dirent* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load %struct.dirent_prec_psx*, %struct.dirent_prec_psx** %63, align 8
  %65 = getelementptr inbounds %struct.dirent_prec_psx, %struct.dirent_prec_psx* %64, i32 0, i32 2
  store i32 %61, i32* %65, align 8
  %66 = load i32, i32* @precomposed_unicode, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %111

68:                                               ; preds = %51
  %69 = load %struct.dirent*, %struct.dirent** %4, align 8
  %70 = getelementptr inbounds %struct.dirent, %struct.dirent* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @has_non_ascii(i32 %71, i64 -1, i32* null)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %111

74:                                               ; preds = %68
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, -1
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32, i32* @repo_encoding, align 4
  %81 = load i32, i32* @path_encoding, align 4
  %82 = call i32 @die(i8* getelementptr inbounds ([174 x i8], [174 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %81)
  br label %110

83:                                               ; preds = %74
  %84 = load %struct.dirent*, %struct.dirent** %4, align 8
  %85 = getelementptr inbounds %struct.dirent, %struct.dirent* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %9, align 4
  %87 = load i64, i64* %5, align 8
  store i64 %87, i64* %10, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load %struct.dirent_prec_psx*, %struct.dirent_prec_psx** %89, align 8
  %91 = getelementptr inbounds %struct.dirent_prec_psx, %struct.dirent_prec_psx* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 0
  store i8* %93, i8** %11, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load %struct.dirent_prec_psx*, %struct.dirent_prec_psx** %95, align 8
  %97 = getelementptr inbounds %struct.dirent_prec_psx, %struct.dirent_prec_psx* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %12, align 8
  store i32 0, i32* @errno, align 4
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @iconv(i64 %101, i32* %9, i64* %10, i8** %11, i64* %12)
  %103 = load i32, i32* @errno, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %83
  %106 = load i64, i64* %10, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105, %83
  store i64 0, i64* %5, align 8
  br label %109

109:                                              ; preds = %108, %105
  br label %110

110:                                              ; preds = %109, %79
  br label %112

111:                                              ; preds = %68, %51
  store i64 0, i64* %5, align 8
  br label %112

112:                                              ; preds = %111, %110
  %113 = load i64, i64* %5, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %130, label %115

115:                                              ; preds = %112
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = load %struct.dirent_prec_psx*, %struct.dirent_prec_psx** %117, align 8
  %119 = getelementptr inbounds %struct.dirent_prec_psx, %struct.dirent_prec_psx* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.dirent*, %struct.dirent** %4, align 8
  %122 = getelementptr inbounds %struct.dirent, %struct.dirent* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = load %struct.dirent_prec_psx*, %struct.dirent_prec_psx** %125, align 8
  %127 = getelementptr inbounds %struct.dirent_prec_psx, %struct.dirent_prec_psx* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @strlcpy(i8* %120, i32 %123, i64 %128)
  br label %130

130:                                              ; preds = %115, %112
  %131 = load i32, i32* %7, align 4
  store i32 %131, i32* @errno, align 4
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 1
  %134 = load %struct.dirent_prec_psx*, %struct.dirent_prec_psx** %133, align 8
  store %struct.dirent_prec_psx* %134, %struct.dirent_prec_psx** %2, align 8
  br label %136

135:                                              ; preds = %1
  store %struct.dirent_prec_psx* null, %struct.dirent_prec_psx** %2, align 8
  br label %136

136:                                              ; preds = %135, %130
  %137 = load %struct.dirent_prec_psx*, %struct.dirent_prec_psx** %2, align 8
  ret %struct.dirent_prec_psx* %137
}

declare dso_local %struct.dirent* @readdir(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local %struct.dirent_prec_psx* @xrealloc(%struct.dirent_prec_psx*, i64) #1

declare dso_local i64 @has_non_ascii(i32, i64, i32*) #1

declare dso_local i32 @die(i8*, i32, i32) #1

declare dso_local i32 @iconv(i64, i32*, i64*, i8**, i64*) #1

declare dso_local i32 @strlcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
