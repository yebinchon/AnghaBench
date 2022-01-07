; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mkstr/extr_mkstr.c_hashit.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mkstr/extr_mkstr.c_hashit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash = type { i64, i32, %struct.hash* }

@mesgwrite = common dso_local global i32 0, align 4
@NBUCKETS = common dso_local global i64 0, align 8
@bucket = common dso_local global %struct.hash** null, align 8
@mesgread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hashit(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hash*, align 8
  %9 = alloca [512 x i8], align 16
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @mesgwrite, align 4
  %16 = call i32 @fflush(i32 %15)
  br label %17

17:                                               ; preds = %14, %3
  %18 = load i8*, i8** %4, align 8
  store i8* %18, i8** %11, align 8
  br label %19

19:                                               ; preds = %23, %17
  %20 = load i8*, i8** %11, align 8
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load i64, i64* %10, align 8
  %25 = shl i64 %24, 1
  %26 = load i8*, i8** %11, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %11, align 8
  %28 = load i8, i8* %26, align 1
  %29 = sext i8 %28 to i64
  %30 = add nsw i64 %25, %29
  store i64 %30, i64* %10, align 8
  br label %19

31:                                               ; preds = %19
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* @NBUCKETS, align 8
  %34 = srem i64 %32, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load i64, i64* @NBUCKETS, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %38, %31
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %84

47:                                               ; preds = %44
  %48 = load %struct.hash**, %struct.hash*** @bucket, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.hash*, %struct.hash** %48, i64 %50
  %52 = load %struct.hash*, %struct.hash** %51, align 8
  store %struct.hash* %52, %struct.hash** %8, align 8
  br label %53

53:                                               ; preds = %79, %47
  %54 = load %struct.hash*, %struct.hash** %8, align 8
  %55 = icmp ne %struct.hash* %54, null
  br i1 %55, label %56, label %83

56:                                               ; preds = %53
  %57 = load %struct.hash*, %struct.hash** %8, align 8
  %58 = getelementptr inbounds %struct.hash, %struct.hash* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %10, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %56
  %63 = load i32, i32* @mesgread, align 4
  %64 = load %struct.hash*, %struct.hash** %8, align 8
  %65 = getelementptr inbounds %struct.hash, %struct.hash* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = zext i32 %66 to i64
  %68 = call i32 @fseek(i32 %63, i64 %67, i32 0)
  %69 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %70 = load i32, i32* @mesgread, align 4
  %71 = call i32 @fgetNUL(i8* %69, i32 512, i32 %70)
  %72 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %73 = load i8*, i8** %4, align 8
  %74 = call i64 @strcmp(i8* %72, i8* %73)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %62
  br label %83

77:                                               ; preds = %62
  br label %78

78:                                               ; preds = %77, %56
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.hash*, %struct.hash** %8, align 8
  %81 = getelementptr inbounds %struct.hash, %struct.hash* %80, i32 0, i32 2
  %82 = load %struct.hash*, %struct.hash** %81, align 8
  store %struct.hash* %82, %struct.hash** %8, align 8
  br label %53

83:                                               ; preds = %76, %53
  br label %84

84:                                               ; preds = %83, %44
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load %struct.hash*, %struct.hash** %8, align 8
  %89 = icmp eq %struct.hash* %88, null
  br i1 %89, label %90, label %136

90:                                               ; preds = %87, %84
  %91 = call i64 @calloc(i32 1, i32 24)
  %92 = inttoptr i64 %91 to %struct.hash*
  store %struct.hash* %92, %struct.hash** %8, align 8
  %93 = load %struct.hash*, %struct.hash** %8, align 8
  %94 = icmp eq %struct.hash* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = call i32 @err(i32 1, i32* null)
  br label %97

97:                                               ; preds = %95, %90
  %98 = load %struct.hash**, %struct.hash*** @bucket, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.hash*, %struct.hash** %98, i64 %100
  %102 = load %struct.hash*, %struct.hash** %101, align 8
  %103 = load %struct.hash*, %struct.hash** %8, align 8
  %104 = getelementptr inbounds %struct.hash, %struct.hash* %103, i32 0, i32 2
  store %struct.hash* %102, %struct.hash** %104, align 8
  %105 = load i64, i64* %10, align 8
  %106 = load %struct.hash*, %struct.hash** %8, align 8
  %107 = getelementptr inbounds %struct.hash, %struct.hash* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  %108 = load i32, i32* %5, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %97
  %111 = load i32, i32* @mesgwrite, align 4
  %112 = call i32 @ftell(i32 %111)
  br label %115

113:                                              ; preds = %97
  %114 = load i32, i32* %6, align 4
  br label %115

115:                                              ; preds = %113, %110
  %116 = phi i32 [ %112, %110 ], [ %114, %113 ]
  %117 = load %struct.hash*, %struct.hash** %8, align 8
  %118 = getelementptr inbounds %struct.hash, %struct.hash* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* %5, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %115
  %122 = load i8*, i8** %4, align 8
  %123 = load i8*, i8** %4, align 8
  %124 = call i32 @strlen(i8* %123)
  %125 = add nsw i32 %124, 1
  %126 = load i32, i32* @mesgwrite, align 4
  %127 = call i32 @fwrite(i8* %122, i32 1, i32 %125, i32 %126)
  %128 = load i32, i32* @mesgwrite, align 4
  %129 = call i32 @fwrite(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1, i32 1, i32 %128)
  br label %130

130:                                              ; preds = %121, %115
  %131 = load %struct.hash*, %struct.hash** %8, align 8
  %132 = load %struct.hash**, %struct.hash*** @bucket, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.hash*, %struct.hash** %132, i64 %134
  store %struct.hash* %131, %struct.hash** %135, align 8
  br label %136

136:                                              ; preds = %130, %87
  %137 = load %struct.hash*, %struct.hash** %8, align 8
  %138 = getelementptr inbounds %struct.hash, %struct.hash* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  ret i32 %139
}

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @fseek(i32, i64, i32) #1

declare dso_local i32 @fgetNUL(i8*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @err(i32, i32*) #1

declare dso_local i32 @ftell(i32) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
