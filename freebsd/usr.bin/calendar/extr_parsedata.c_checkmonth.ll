; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_parsedata.c_checkmonth.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_parsedata.c_checkmonth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fixs = type { i8*, i32 }

@fnmonths = common dso_local global %struct.fixs* null, align 8
@nmonths = common dso_local global %struct.fixs* null, align 8
@fmonths = common dso_local global i8** null, align 8
@months = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, i64*, i8**)* @checkmonth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkmonth(i8* %0, i64* %1, i64* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.fixs*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %49, %4
  %13 = load %struct.fixs*, %struct.fixs** @fnmonths, align 8
  %14 = load i32, i32* %11, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.fixs, %struct.fixs* %13, i64 %15
  %17 = getelementptr inbounds %struct.fixs, %struct.fixs* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %52

20:                                               ; preds = %12
  %21 = load %struct.fixs*, %struct.fixs** @fnmonths, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.fixs, %struct.fixs* %21, i64 %23
  store %struct.fixs* %24, %struct.fixs** %10, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.fixs*, %struct.fixs** %10, align 8
  %27 = getelementptr inbounds %struct.fixs, %struct.fixs* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.fixs*, %struct.fixs** %10, align 8
  %30 = getelementptr inbounds %struct.fixs, %struct.fixs* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @strncasecmp(i8* %25, i8* %28, i32 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %20
  %35 = load %struct.fixs*, %struct.fixs** %10, align 8
  %36 = getelementptr inbounds %struct.fixs, %struct.fixs* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = load i64*, i64** %7, align 8
  store i64 %38, i64* %39, align 8
  %40 = load %struct.fixs*, %struct.fixs** %10, align 8
  %41 = getelementptr inbounds %struct.fixs, %struct.fixs* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i8**, i8*** %9, align 8
  store i8* %42, i8** %43, align 8
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = load i64*, i64** %8, align 8
  store i64 %46, i64* %47, align 8
  store i32 1, i32* %5, align 4
  br label %169

48:                                               ; preds = %20
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %12

52:                                               ; preds = %12
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %90, %52
  %54 = load %struct.fixs*, %struct.fixs** @nmonths, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.fixs, %struct.fixs* %54, i64 %56
  %58 = getelementptr inbounds %struct.fixs, %struct.fixs* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %93

61:                                               ; preds = %53
  %62 = load %struct.fixs*, %struct.fixs** @nmonths, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.fixs, %struct.fixs* %62, i64 %64
  store %struct.fixs* %65, %struct.fixs** %10, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = load %struct.fixs*, %struct.fixs** %10, align 8
  %68 = getelementptr inbounds %struct.fixs, %struct.fixs* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.fixs*, %struct.fixs** %10, align 8
  %71 = getelementptr inbounds %struct.fixs, %struct.fixs* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @strncasecmp(i8* %66, i8* %69, i32 %72)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %61
  %76 = load %struct.fixs*, %struct.fixs** %10, align 8
  %77 = getelementptr inbounds %struct.fixs, %struct.fixs* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = load i64*, i64** %7, align 8
  store i64 %79, i64* %80, align 8
  %81 = load %struct.fixs*, %struct.fixs** %10, align 8
  %82 = getelementptr inbounds %struct.fixs, %struct.fixs* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load i8**, i8*** %9, align 8
  store i8* %83, i8** %84, align 8
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = load i64*, i64** %8, align 8
  store i64 %87, i64* %88, align 8
  store i32 1, i32* %5, align 4
  br label %169

89:                                               ; preds = %61
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %53

93:                                               ; preds = %53
  store i32 0, i32* %11, align 4
  br label %94

94:                                               ; preds = %132, %93
  %95 = load i8**, i8*** @fmonths, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %95, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %135

101:                                              ; preds = %94
  %102 = load i8**, i8*** @fmonths, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = call i64 @strlen(i8* %106)
  %108 = load i64*, i64** %7, align 8
  store i64 %107, i64* %108, align 8
  %109 = load i8*, i8** %6, align 8
  %110 = load i8**, i8*** @fmonths, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %110, i64 %112
  %114 = load i8*, i8** %113, align 8
  %115 = load i64*, i64** %7, align 8
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = call i64 @strncasecmp(i8* %109, i8* %114, i32 %117)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %131

120:                                              ; preds = %101
  %121 = load i8**, i8*** @fmonths, align 8
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %121, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = load i8**, i8*** %9, align 8
  store i8* %125, i8** %126, align 8
  %127 = load i32, i32* %11, align 4
  %128 = add nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = load i64*, i64** %8, align 8
  store i64 %129, i64* %130, align 8
  store i32 1, i32* %5, align 4
  br label %169

131:                                              ; preds = %101
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %11, align 4
  br label %94

135:                                              ; preds = %94
  store i32 0, i32* %11, align 4
  br label %136

136:                                              ; preds = %165, %135
  %137 = load i8**, i8*** @months, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %137, i64 %139
  %141 = load i8*, i8** %140, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %168

143:                                              ; preds = %136
  %144 = load i8*, i8** %6, align 8
  %145 = load i8**, i8*** @months, align 8
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8*, i8** %145, i64 %147
  %149 = load i8*, i8** %148, align 8
  %150 = call i64 @strncasecmp(i8* %144, i8* %149, i32 3)
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %164

152:                                              ; preds = %143
  %153 = load i64*, i64** %7, align 8
  store i64 3, i64* %153, align 8
  %154 = load i8**, i8*** @months, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8*, i8** %154, i64 %156
  %158 = load i8*, i8** %157, align 8
  %159 = load i8**, i8*** %9, align 8
  store i8* %158, i8** %159, align 8
  %160 = load i32, i32* %11, align 4
  %161 = add nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = load i64*, i64** %8, align 8
  store i64 %162, i64* %163, align 8
  store i32 1, i32* %5, align 4
  br label %169

164:                                              ; preds = %143
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %11, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %11, align 4
  br label %136

168:                                              ; preds = %136
  store i32 0, i32* %5, align 4
  br label %169

169:                                              ; preds = %168, %152, %120, %75, %34
  %170 = load i32, i32* %5, align 4
  ret i32 %170
}

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
