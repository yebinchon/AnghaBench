; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_parsedata.c_checkdayofweek.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_parsedata.c_checkdayofweek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fixs = type { i8*, i32 }

@fndays = common dso_local global %struct.fixs* null, align 8
@ndays = common dso_local global %struct.fixs* null, align 8
@fdays = common dso_local global i8** null, align 8
@days = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, i64*, i8**)* @checkdayofweek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkdayofweek(i8* %0, i64* %1, i64* %2, i8** %3) #0 {
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

12:                                               ; preds = %48, %4
  %13 = load %struct.fixs*, %struct.fixs** @fndays, align 8
  %14 = load i32, i32* %11, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.fixs, %struct.fixs* %13, i64 %15
  %17 = getelementptr inbounds %struct.fixs, %struct.fixs* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %51

20:                                               ; preds = %12
  %21 = load %struct.fixs*, %struct.fixs** @fndays, align 8
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
  br i1 %33, label %34, label %47

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
  %45 = sext i32 %44 to i64
  %46 = load i64*, i64** %8, align 8
  store i64 %45, i64* %46, align 8
  store i32 1, i32* %5, align 4
  br label %165

47:                                               ; preds = %20
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %11, align 4
  br label %12

51:                                               ; preds = %12
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %88, %51
  %53 = load %struct.fixs*, %struct.fixs** @ndays, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.fixs, %struct.fixs* %53, i64 %55
  %57 = getelementptr inbounds %struct.fixs, %struct.fixs* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %91

60:                                               ; preds = %52
  %61 = load %struct.fixs*, %struct.fixs** @ndays, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.fixs, %struct.fixs* %61, i64 %63
  store %struct.fixs* %64, %struct.fixs** %10, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = load %struct.fixs*, %struct.fixs** %10, align 8
  %67 = getelementptr inbounds %struct.fixs, %struct.fixs* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.fixs*, %struct.fixs** %10, align 8
  %70 = getelementptr inbounds %struct.fixs, %struct.fixs* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @strncasecmp(i8* %65, i8* %68, i32 %71)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %60
  %75 = load %struct.fixs*, %struct.fixs** %10, align 8
  %76 = getelementptr inbounds %struct.fixs, %struct.fixs* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = load i64*, i64** %7, align 8
  store i64 %78, i64* %79, align 8
  %80 = load %struct.fixs*, %struct.fixs** %10, align 8
  %81 = getelementptr inbounds %struct.fixs, %struct.fixs* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i8**, i8*** %9, align 8
  store i8* %82, i8** %83, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = load i64*, i64** %8, align 8
  store i64 %85, i64* %86, align 8
  store i32 1, i32* %5, align 4
  br label %165

87:                                               ; preds = %60
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %11, align 4
  br label %52

91:                                               ; preds = %52
  store i32 0, i32* %11, align 4
  br label %92

92:                                               ; preds = %129, %91
  %93 = load i8**, i8*** @fdays, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %93, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %132

99:                                               ; preds = %92
  %100 = load i8**, i8*** @fdays, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = call i64 @strlen(i8* %104)
  %106 = load i64*, i64** %7, align 8
  store i64 %105, i64* %106, align 8
  %107 = load i8*, i8** %6, align 8
  %108 = load i8**, i8*** @fdays, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = load i64*, i64** %7, align 8
  %114 = load i64, i64* %113, align 8
  %115 = trunc i64 %114 to i32
  %116 = call i64 @strncasecmp(i8* %107, i8* %112, i32 %115)
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %99
  %119 = load i8**, i8*** @fdays, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = load i8**, i8*** %9, align 8
  store i8* %123, i8** %124, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = load i64*, i64** %8, align 8
  store i64 %126, i64* %127, align 8
  store i32 1, i32* %5, align 4
  br label %165

128:                                              ; preds = %99
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %11, align 4
  br label %92

132:                                              ; preds = %92
  store i32 0, i32* %11, align 4
  br label %133

133:                                              ; preds = %161, %132
  %134 = load i8**, i8*** @days, align 8
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8*, i8** %134, i64 %136
  %138 = load i8*, i8** %137, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %164

140:                                              ; preds = %133
  %141 = load i8*, i8** %6, align 8
  %142 = load i8**, i8*** @days, align 8
  %143 = load i32, i32* %11, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8*, i8** %142, i64 %144
  %146 = load i8*, i8** %145, align 8
  %147 = call i64 @strncasecmp(i8* %141, i8* %146, i32 3)
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %160

149:                                              ; preds = %140
  %150 = load i64*, i64** %7, align 8
  store i64 3, i64* %150, align 8
  %151 = load i8**, i8*** @days, align 8
  %152 = load i32, i32* %11, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8*, i8** %151, i64 %153
  %155 = load i8*, i8** %154, align 8
  %156 = load i8**, i8*** %9, align 8
  store i8* %155, i8** %156, align 8
  %157 = load i32, i32* %11, align 4
  %158 = sext i32 %157 to i64
  %159 = load i64*, i64** %8, align 8
  store i64 %158, i64* %159, align 8
  store i32 1, i32* %5, align 4
  br label %165

160:                                              ; preds = %140
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %11, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %11, align 4
  br label %133

164:                                              ; preds = %133
  store i32 0, i32* %5, align 4
  br label %165

165:                                              ; preds = %164, %149, %118, %74, %34
  %166 = load i32, i32* %5, align 4
  ret i32 %166
}

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
