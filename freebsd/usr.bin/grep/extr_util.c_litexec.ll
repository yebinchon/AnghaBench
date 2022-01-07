; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/grep/extr_util.c_litexec.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/grep/extr_util.c_litexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pat = type { i64, i8* }
%struct.TYPE_3__ = type { i64, i64 }

@cflags = common dso_local global i32 0, align 4
@REG_ICASE = common dso_local global i32 0, align 4
@REG_NOMATCH = common dso_local global i32 0, align 4
@REG_ESPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pat*, i8*, i64, %struct.TYPE_3__*)* @litexec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @litexec(%struct.pat* %0, i8* %1, i64 %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pat*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i8* (i8*, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.pat* %0, %struct.pat** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  %18 = load i32, i32* @cflags, align 4
  %19 = load i32, i32* @REG_ICASE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i8* (i8*, i8*)* @strcasestr, i8* (i8*, i8*)** %10, align 8
  br label %24

23:                                               ; preds = %4
  store i8* (i8*, i8*)* @strstr, i8* (i8*, i8*)** %10, align 8
  br label %24

24:                                               ; preds = %23, %22
  store i64 0, i64* %14, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %16, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %17, align 8
  %33 = load i64, i64* %16, align 8
  %34 = load i64, i64* %17, align 8
  %35 = icmp uge i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = load i32, i32* @REG_NOMATCH, align 4
  store i32 %37, i32* %5, align 4
  br label %151

38:                                               ; preds = %24
  %39 = load i8*, i8** %7, align 8
  %40 = load i64, i64* %17, align 8
  %41 = call i8* @strndup(i8* %39, i64 %40)
  store i8* %41, i8** %12, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @REG_ESPACE, align 4
  store i32 %45, i32* %5, align 4
  br label %151

46:                                               ; preds = %38
  store i64 0, i64* %15, align 8
  br label %47

47:                                               ; preds = %115, %46
  %48 = load i64, i64* %16, align 8
  %49 = load i64, i64* %17, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %116

51:                                               ; preds = %47
  %52 = load i8*, i8** %12, align 8
  %53 = load i64, i64* %16, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %54, i8** %13, align 8
  %55 = load %struct.pat*, %struct.pat** %6, align 8
  %56 = getelementptr inbounds %struct.pat, %struct.pat* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = call i64 @strlen(i8* %58)
  %60 = icmp ugt i64 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %116

62:                                               ; preds = %51
  %63 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** %10, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = load %struct.pat*, %struct.pat** %6, align 8
  %66 = getelementptr inbounds %struct.pat, %struct.pat* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = call i8* %63(i8* %64, i8* %67)
  store i8* %68, i8** %11, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  br label %116

72:                                               ; preds = %62
  %73 = load i64, i64* %15, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %15, align 8
  %75 = load i64, i64* %8, align 8
  %76 = icmp ugt i64 %75, 0
  br i1 %76, label %77, label %114

77:                                               ; preds = %72
  %78 = load i64, i64* %16, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = ptrtoint i8* %79 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = add i64 %78, %83
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %86 = load i64, i64* %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  store i64 %84, i64* %88, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %90 = load i64, i64* %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.pat*, %struct.pat** %6, align 8
  %95 = getelementptr inbounds %struct.pat, %struct.pat* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add i64 %93, %96
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %99 = load i64, i64* %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  store i64 %97, i64* %101, align 8
  %102 = load i64, i64* %14, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %14, align 8
  %104 = load i64, i64* %8, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %77
  br label %116

107:                                              ; preds = %77
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %109 = load i64, i64* %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %16, align 8
  br label %115

114:                                              ; preds = %72
  br label %116

115:                                              ; preds = %107
  br label %47

116:                                              ; preds = %114, %106, %71, %61, %47
  %117 = load i8*, i8** %12, align 8
  %118 = call i32 @free(i8* %117)
  %119 = load i64, i64* %15, align 8
  %120 = icmp ugt i64 %119, 0
  br i1 %120, label %121, label %143

121:                                              ; preds = %116
  %122 = load i64, i64* %8, align 8
  %123 = icmp ugt i64 %122, 0
  br i1 %123, label %124, label %143

124:                                              ; preds = %121
  %125 = load i64, i64* %14, align 8
  store i64 %125, i64* %15, align 8
  br label %126

126:                                              ; preds = %139, %124
  %127 = load i64, i64* %15, align 8
  %128 = load i64, i64* %8, align 8
  %129 = icmp ult i64 %127, %128
  br i1 %129, label %130, label %142

130:                                              ; preds = %126
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %132 = load i64, i64* %15, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  store i64 -1, i64* %134, align 8
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %136 = load i64, i64* %15, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  store i64 -1, i64* %138, align 8
  br label %139

139:                                              ; preds = %130
  %140 = load i64, i64* %15, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %15, align 8
  br label %126

142:                                              ; preds = %126
  br label %143

143:                                              ; preds = %142, %121, %116
  %144 = load i64, i64* %15, align 8
  %145 = icmp ugt i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  br label %149

147:                                              ; preds = %143
  %148 = load i32, i32* @REG_NOMATCH, align 4
  br label %149

149:                                              ; preds = %147, %146
  %150 = phi i32 [ 0, %146 ], [ %148, %147 ]
  store i32 %150, i32* %5, align 4
  br label %151

151:                                              ; preds = %149, %44, %36
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local i8* @strcasestr(i8*, i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @strndup(i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
