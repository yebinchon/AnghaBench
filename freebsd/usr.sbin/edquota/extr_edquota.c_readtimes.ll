; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/edquota/extr_edquota.c_readtimes.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/edquota/extr_edquota.c_readtimes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quotause = type { i32, %struct.TYPE_2__, %struct.quotause*, i32 }
%struct.TYPE_2__ = type { i8*, i8* }

@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"can't re-read temp file!!\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" \09:\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"%s: bad format\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"%s: %s: bad format\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c" block grace period: %ju %s file grace period: %ju %s\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"%s:%s: bad format\00", align 1
@FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @readtimes(%struct.quotause* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.quotause*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.quotause*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [10 x i8], align 1
  %16 = alloca [10 x i8], align 1
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.quotause* %0, %struct.quotause** %4, align 8
  store i8* %1, i8** %5, align 8
  %20 = load i32, i32* @BUFSIZ, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %17, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %18, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32* @fopen(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %25, i32** %7, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %147

30:                                               ; preds = %2
  %31 = trunc i64 %21 to i32
  %32 = load i32*, i32** %7, align 8
  %33 = call i32* @fgets(i8* %23, i32 %31, i32* %32)
  %34 = trunc i64 %21 to i32
  %35 = load i32*, i32** %7, align 8
  %36 = call i32* @fgets(i8* %23, i32 %34, i32* %35)
  br label %37

37:                                               ; preds = %113, %30
  %38 = trunc i64 %21 to i32
  %39 = load i32*, i32** %7, align 8
  %40 = call i32* @fgets(i8* %23, i32 %38, i32* %39)
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %114

42:                                               ; preds = %37
  %43 = call i8* @strtok(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i8* %43, i8** %14, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %23)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %147

47:                                               ; preds = %42
  %48 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i8* %48, i8** %9, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load i8*, i8** %14, align 8
  %52 = load i8*, i8** %14, align 8
  %53 = load i8*, i8** %14, align 8
  %54 = call i32 @strlen(i8* %53)
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %52, i64 %56
  %58 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %51, i8* %57)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %147

59:                                               ; preds = %47
  %60 = load i8*, i8** %9, align 8
  %61 = getelementptr inbounds [10 x i8], [10 x i8]* %15, i64 0, i64 0
  %62 = getelementptr inbounds [10 x i8], [10 x i8]* %16, i64 0, i64 0
  %63 = call i32 @sscanf(i8* %60, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i8** %11, i8* %61, i8** %10, i8* %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 4
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load i8*, i8** %14, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* %67, i8* %68)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %147

70:                                               ; preds = %59
  %71 = load i8*, i8** %11, align 8
  %72 = getelementptr inbounds [10 x i8], [10 x i8]* %15, i64 0, i64 0
  %73 = call i64 @cvtatos(i8* %71, i8* %72, i8** %13)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i32 0, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %147

76:                                               ; preds = %70
  %77 = load i8*, i8** %10, align 8
  %78 = getelementptr inbounds [10 x i8], [10 x i8]* %16, i64 0, i64 0
  %79 = call i64 @cvtatos(i8* %77, i8* %78, i8** %12)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i32 0, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %147

82:                                               ; preds = %76
  %83 = load %struct.quotause*, %struct.quotause** %4, align 8
  store %struct.quotause* %83, %struct.quotause** %6, align 8
  br label %84

84:                                               ; preds = %109, %82
  %85 = load %struct.quotause*, %struct.quotause** %6, align 8
  %86 = icmp ne %struct.quotause* %85, null
  br i1 %86, label %87, label %113

87:                                               ; preds = %84
  %88 = load i8*, i8** %14, align 8
  %89 = load %struct.quotause*, %struct.quotause** %6, align 8
  %90 = getelementptr inbounds %struct.quotause, %struct.quotause* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @strcmp(i8* %88, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %109

95:                                               ; preds = %87
  %96 = load i8*, i8** %13, align 8
  %97 = load %struct.quotause*, %struct.quotause** %6, align 8
  %98 = getelementptr inbounds %struct.quotause, %struct.quotause* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  store i8* %96, i8** %99, align 8
  %100 = load i8*, i8** %12, align 8
  %101 = load %struct.quotause*, %struct.quotause** %6, align 8
  %102 = getelementptr inbounds %struct.quotause, %struct.quotause* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  store i8* %100, i8** %103, align 8
  %104 = load i32, i32* @FOUND, align 4
  %105 = load %struct.quotause*, %struct.quotause** %6, align 8
  %106 = getelementptr inbounds %struct.quotause, %struct.quotause* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  br label %113

109:                                              ; preds = %94
  %110 = load %struct.quotause*, %struct.quotause** %6, align 8
  %111 = getelementptr inbounds %struct.quotause, %struct.quotause* %110, i32 0, i32 2
  %112 = load %struct.quotause*, %struct.quotause** %111, align 8
  store %struct.quotause* %112, %struct.quotause** %6, align 8
  br label %84

113:                                              ; preds = %95, %84
  br label %37

114:                                              ; preds = %37
  %115 = load i32*, i32** %7, align 8
  %116 = call i32 @fclose(i32* %115)
  %117 = load %struct.quotause*, %struct.quotause** %4, align 8
  store %struct.quotause* %117, %struct.quotause** %6, align 8
  br label %118

118:                                              ; preds = %142, %114
  %119 = load %struct.quotause*, %struct.quotause** %6, align 8
  %120 = icmp ne %struct.quotause* %119, null
  br i1 %120, label %121, label %146

121:                                              ; preds = %118
  %122 = load %struct.quotause*, %struct.quotause** %6, align 8
  %123 = getelementptr inbounds %struct.quotause, %struct.quotause* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @FOUND, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %121
  %129 = load i32, i32* @FOUND, align 4
  %130 = xor i32 %129, -1
  %131 = load %struct.quotause*, %struct.quotause** %6, align 8
  %132 = getelementptr inbounds %struct.quotause, %struct.quotause* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = and i32 %133, %130
  store i32 %134, i32* %132, align 8
  br label %142

135:                                              ; preds = %121
  %136 = load %struct.quotause*, %struct.quotause** %6, align 8
  %137 = getelementptr inbounds %struct.quotause, %struct.quotause* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 1
  store i8* null, i8** %138, align 8
  %139 = load %struct.quotause*, %struct.quotause** %6, align 8
  %140 = getelementptr inbounds %struct.quotause, %struct.quotause* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  store i8* null, i8** %141, align 8
  br label %142

142:                                              ; preds = %135, %128
  %143 = load %struct.quotause*, %struct.quotause** %6, align 8
  %144 = getelementptr inbounds %struct.quotause, %struct.quotause* %143, i32 0, i32 2
  %145 = load %struct.quotause*, %struct.quotause** %144, align 8
  store %struct.quotause* %145, %struct.quotause** %6, align 8
  br label %118

146:                                              ; preds = %118
  store i32 1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %147

147:                                              ; preds = %146, %81, %75, %66, %50, %45, %28
  %148 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %148)
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @warnx(i8*, ...) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i8* @strtok(i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @sscanf(i8*, i8*, i8**, i8*, i8**, i8*) #2

declare dso_local i64 @cvtatos(i8*, i8*, i8**) #2

declare dso_local i64 @strcmp(i8*, i32) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
