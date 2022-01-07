; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_names.c_detract.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_names.c_detract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.name = type { i32, %struct.name*, i32 }

@GCOMMA = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"detract asked to insert commas\0A\00", align 1
@GMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @detract(%struct.name* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.name*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.name*, align 8
  store %struct.name* %0, %struct.name** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @GCOMMA, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %7, align 4
  %14 = load %struct.name*, %struct.name** %4, align 8
  %15 = icmp eq %struct.name* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %139

17:                                               ; preds = %2
  %18 = load i32, i32* @GCOMMA, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %22 = load i64, i64* @debug, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %24, %17
  %31 = load %struct.name*, %struct.name** %4, align 8
  store %struct.name* %31, %struct.name** %10, align 8
  br label %32

32:                                               ; preds = %63, %30
  %33 = load %struct.name*, %struct.name** %10, align 8
  %34 = icmp ne %struct.name* %33, null
  br i1 %34, label %35, label %67

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load %struct.name*, %struct.name** %10, align 8
  %40 = getelementptr inbounds %struct.name, %struct.name* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @GMASK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %63

47:                                               ; preds = %38, %35
  %48 = load %struct.name*, %struct.name** %10, align 8
  %49 = getelementptr inbounds %struct.name, %struct.name* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @strlen(i32 %50)
  %52 = add nsw i64 %51, 1
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %47
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %59, %47
  br label %63

63:                                               ; preds = %62, %46
  %64 = load %struct.name*, %struct.name** %10, align 8
  %65 = getelementptr inbounds %struct.name, %struct.name* %64, i32 0, i32 1
  %66 = load %struct.name*, %struct.name** %65, align 8
  store %struct.name* %66, %struct.name** %10, align 8
  br label %32

67:                                               ; preds = %32
  %68 = load i32, i32* %6, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i8* null, i8** %3, align 8
  br label %139

71:                                               ; preds = %67
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 2
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i8* @salloc(i32 %74)
  store i8* %75, i8** %9, align 8
  %76 = load i8*, i8** %9, align 8
  store i8* %76, i8** %8, align 8
  %77 = load %struct.name*, %struct.name** %4, align 8
  store %struct.name* %77, %struct.name** %10, align 8
  br label %78

78:                                               ; preds = %120, %71
  %79 = load %struct.name*, %struct.name** %10, align 8
  %80 = icmp ne %struct.name* %79, null
  br i1 %80, label %81, label %124

81:                                               ; preds = %78
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %81
  %85 = load %struct.name*, %struct.name** %10, align 8
  %86 = getelementptr inbounds %struct.name, %struct.name* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @GMASK, align 4
  %89 = and i32 %87, %88
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %120

93:                                               ; preds = %84, %81
  %94 = load i8*, i8** %8, align 8
  %95 = load %struct.name*, %struct.name** %10, align 8
  %96 = getelementptr inbounds %struct.name, %struct.name* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.name*, %struct.name** %10, align 8
  %99 = getelementptr inbounds %struct.name, %struct.name* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @strlen(i32 %100)
  %102 = add nsw i64 %101, 1
  %103 = call i32 @strlcpy(i8* %94, i32 %97, i64 %102)
  %104 = load i8*, i8** %8, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8* %106, i8** %8, align 8
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %93
  %110 = load %struct.name*, %struct.name** %10, align 8
  %111 = getelementptr inbounds %struct.name, %struct.name* %110, i32 0, i32 1
  %112 = load %struct.name*, %struct.name** %111, align 8
  %113 = icmp ne %struct.name* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load i8*, i8** %8, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %8, align 8
  store i8 44, i8* %115, align 1
  br label %117

117:                                              ; preds = %114, %109, %93
  %118 = load i8*, i8** %8, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %8, align 8
  store i8 32, i8* %118, align 1
  br label %120

120:                                              ; preds = %117, %92
  %121 = load %struct.name*, %struct.name** %10, align 8
  %122 = getelementptr inbounds %struct.name, %struct.name* %121, i32 0, i32 1
  %123 = load %struct.name*, %struct.name** %122, align 8
  store %struct.name* %123, %struct.name** %10, align 8
  br label %78

124:                                              ; preds = %78
  %125 = load i8*, i8** %8, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 -1
  store i8* %126, i8** %8, align 8
  store i8 0, i8* %126, align 1
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %124
  %130 = load i8*, i8** %8, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 -1
  store i8* %131, i8** %8, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 44
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = load i8*, i8** %8, align 8
  store i8 0, i8* %136, align 1
  br label %137

137:                                              ; preds = %135, %129, %124
  %138 = load i8*, i8** %9, align 8
  store i8* %138, i8** %3, align 8
  br label %139

139:                                              ; preds = %137, %70, %16
  %140 = load i8*, i8** %3, align 8
  ret i8* %140
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i8* @salloc(i32) #1

declare dso_local i32 @strlcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
