; ModuleID = '/home/carl/AnghaBench/freebsd/sys/libkern/extr_iconv.c_iconv_register_cspair.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/libkern/extr_iconv.c_iconv_register_cspair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iconv_converter_class = type { i32 }
%struct.iconv_cspair = type { i8*, i8*, i8*, %struct.iconv_converter_class*, i64 }

@EEXIST = common dso_local global i32 0, align 4
@iconv_unicode_string = common dso_local global i8* null, align 8
@M_ICONV = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@iconv_csid = common dso_local global i32 0, align 4
@iconv_cslist = common dso_local global i32 0, align 4
@cp_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.iconv_converter_class*, i8*, %struct.iconv_cspair**)* @iconv_register_cspair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iconv_register_cspair(i8* %0, i8* %1, %struct.iconv_converter_class* %2, i8* %3, %struct.iconv_cspair** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.iconv_converter_class*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.iconv_cspair**, align 8
  %12 = alloca %struct.iconv_cspair*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.iconv_converter_class* %2, %struct.iconv_converter_class** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.iconv_cspair** %4, %struct.iconv_cspair*** %11, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i64 @iconv_lookupcs(i8* %17, i8* %18, i32* null)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @EEXIST, align 4
  store i32 %22, i32* %6, align 4
  br label %115

23:                                               ; preds = %5
  store i32 40, i32* %14, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** @iconv_unicode_string, align 8
  %26 = call i64 @strcmp(i8* %24, i8* %25)
  %27 = icmp eq i64 %26, 0
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %23
  %32 = load i8*, i8** %7, align 8
  %33 = call i64 @strlen(i8* %32)
  %34 = add nsw i64 %33, 1
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %14, align 4
  br label %39

39:                                               ; preds = %31, %23
  %40 = load i8*, i8** %8, align 8
  %41 = load i8*, i8** @iconv_unicode_string, align 8
  %42 = call i64 @strcmp(i8* %40, i8* %41)
  %43 = icmp eq i64 %42, 0
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %16, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %39
  %48 = load i8*, i8** %8, align 8
  %49 = call i64 @strlen(i8* %48)
  %50 = add nsw i64 %49, 1
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %14, align 4
  br label %55

55:                                               ; preds = %47, %39
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* @M_ICONV, align 4
  %58 = load i32, i32* @M_WAITOK, align 4
  %59 = call %struct.iconv_cspair* @malloc(i32 %56, i32 %57, i32 %58)
  store %struct.iconv_cspair* %59, %struct.iconv_cspair** %12, align 8
  %60 = load %struct.iconv_cspair*, %struct.iconv_cspair** %12, align 8
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @bzero(%struct.iconv_cspair* %60, i32 %61)
  %63 = load i32, i32* @iconv_csid, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* @iconv_csid, align 4
  %65 = sext i32 %63 to i64
  %66 = load %struct.iconv_cspair*, %struct.iconv_cspair** %12, align 8
  %67 = getelementptr inbounds %struct.iconv_cspair, %struct.iconv_cspair* %66, i32 0, i32 4
  store i64 %65, i64* %67, align 8
  %68 = load %struct.iconv_converter_class*, %struct.iconv_converter_class** %9, align 8
  %69 = load %struct.iconv_cspair*, %struct.iconv_cspair** %12, align 8
  %70 = getelementptr inbounds %struct.iconv_cspair, %struct.iconv_cspair* %69, i32 0, i32 3
  store %struct.iconv_converter_class* %68, %struct.iconv_converter_class** %70, align 8
  %71 = load %struct.iconv_cspair*, %struct.iconv_cspair** %12, align 8
  %72 = getelementptr inbounds %struct.iconv_cspair, %struct.iconv_cspair* %71, i64 1
  %73 = bitcast %struct.iconv_cspair* %72 to i8*
  store i8* %73, i8** %13, align 8
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %88, label %76

76:                                               ; preds = %55
  %77 = load i8*, i8** %13, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = call i32 @strcpy(i8* %77, i8* %78)
  %80 = load i8*, i8** %13, align 8
  %81 = load %struct.iconv_cspair*, %struct.iconv_cspair** %12, align 8
  %82 = getelementptr inbounds %struct.iconv_cspair, %struct.iconv_cspair* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  %83 = load i8*, i8** %13, align 8
  %84 = call i64 @strlen(i8* %83)
  %85 = add nsw i64 %84, 1
  %86 = load i8*, i8** %13, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 %85
  store i8* %87, i8** %13, align 8
  br label %92

88:                                               ; preds = %55
  %89 = load i8*, i8** @iconv_unicode_string, align 8
  %90 = load %struct.iconv_cspair*, %struct.iconv_cspair** %12, align 8
  %91 = getelementptr inbounds %struct.iconv_cspair, %struct.iconv_cspair* %90, i32 0, i32 0
  store i8* %89, i8** %91, align 8
  br label %92

92:                                               ; preds = %88, %76
  %93 = load i32, i32* %16, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %92
  %96 = load i8*, i8** %13, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = call i32 @strcpy(i8* %96, i8* %97)
  %99 = load i8*, i8** %13, align 8
  %100 = load %struct.iconv_cspair*, %struct.iconv_cspair** %12, align 8
  %101 = getelementptr inbounds %struct.iconv_cspair, %struct.iconv_cspair* %100, i32 0, i32 1
  store i8* %99, i8** %101, align 8
  br label %106

102:                                              ; preds = %92
  %103 = load i8*, i8** @iconv_unicode_string, align 8
  %104 = load %struct.iconv_cspair*, %struct.iconv_cspair** %12, align 8
  %105 = getelementptr inbounds %struct.iconv_cspair, %struct.iconv_cspair* %104, i32 0, i32 1
  store i8* %103, i8** %105, align 8
  br label %106

106:                                              ; preds = %102, %95
  %107 = load i8*, i8** %10, align 8
  %108 = load %struct.iconv_cspair*, %struct.iconv_cspair** %12, align 8
  %109 = getelementptr inbounds %struct.iconv_cspair, %struct.iconv_cspair* %108, i32 0, i32 2
  store i8* %107, i8** %109, align 8
  %110 = load %struct.iconv_cspair*, %struct.iconv_cspair** %12, align 8
  %111 = load i32, i32* @cp_link, align 4
  %112 = call i32 @TAILQ_INSERT_TAIL(i32* @iconv_cslist, %struct.iconv_cspair* %110, i32 %111)
  %113 = load %struct.iconv_cspair*, %struct.iconv_cspair** %12, align 8
  %114 = load %struct.iconv_cspair**, %struct.iconv_cspair*** %11, align 8
  store %struct.iconv_cspair* %113, %struct.iconv_cspair** %114, align 8
  store i32 0, i32* %6, align 4
  br label %115

115:                                              ; preds = %106, %21
  %116 = load i32, i32* %6, align 4
  ret i32 %116
}

declare dso_local i64 @iconv_lookupcs(i8*, i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.iconv_cspair* @malloc(i32, i32, i32) #1

declare dso_local i32 @bzero(%struct.iconv_cspair*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.iconv_cspair*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
