; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/xstr/extr_xstr.c_flushsh.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/xstr/extr_xstr.c_flushsh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.hash* }
%struct.hash = type { i32, i32, i64, %struct.hash* }

@BUCKETS = common dso_local global i32 0, align 4
@bucket = common dso_local global %struct.TYPE_2__* null, align 8
@strings = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@EOF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @flushsh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flushsh() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.hash*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %37, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @BUCKETS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %40

10:                                               ; preds = %6
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bucket, align 8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.hash*, %struct.hash** %15, align 8
  store %struct.hash* %16, %struct.hash** %2, align 8
  br label %17

17:                                               ; preds = %32, %10
  %18 = load %struct.hash*, %struct.hash** %2, align 8
  %19 = icmp ne %struct.hash* %18, null
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  %21 = load %struct.hash*, %struct.hash** %2, align 8
  %22 = getelementptr inbounds %struct.hash, %struct.hash* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %31

28:                                               ; preds = %20
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %28, %25
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.hash*, %struct.hash** %2, align 8
  %34 = getelementptr inbounds %struct.hash, %struct.hash* %33, i32 0, i32 3
  %35 = load %struct.hash*, %struct.hash** %34, align 8
  store %struct.hash* %35, %struct.hash** %2, align 8
  br label %17

36:                                               ; preds = %17
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %1, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %1, align 4
  br label %6

40:                                               ; preds = %6
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %130

47:                                               ; preds = %43, %40
  %48 = load i32, i32* @strings, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)
  %53 = call i32* @fopen(i32 %48, i8* %52)
  store i32* %53, i32** %3, align 8
  %54 = load i32*, i32** %3, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load i32, i32* @strings, align 4
  %58 = call i32 @err(i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %56, %47
  store i32 0, i32* %1, align 4
  br label %60

60:                                               ; preds = %119, %59
  %61 = load i32, i32* %1, align 4
  %62 = load i32, i32* @BUCKETS, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %122

64:                                               ; preds = %60
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bucket, align 8
  %66 = load i32, i32* %1, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load %struct.hash*, %struct.hash** %69, align 8
  store %struct.hash* %70, %struct.hash** %2, align 8
  br label %71

71:                                               ; preds = %114, %64
  %72 = load %struct.hash*, %struct.hash** %2, align 8
  %73 = icmp ne %struct.hash* %72, null
  br i1 %73, label %74, label %118

74:                                               ; preds = %71
  %75 = load %struct.hash*, %struct.hash** %2, align 8
  %76 = getelementptr inbounds %struct.hash, %struct.hash* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.hash*, %struct.hash** %2, align 8
  %79 = getelementptr inbounds %struct.hash, %struct.hash* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.hash*, %struct.hash** %2, align 8
  %82 = getelementptr inbounds %struct.hash, %struct.hash* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @found(i64 %77, i32 %80, i32 %83)
  %85 = load %struct.hash*, %struct.hash** %2, align 8
  %86 = getelementptr inbounds %struct.hash, %struct.hash* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %113

89:                                               ; preds = %74
  %90 = load i32*, i32** %3, align 8
  %91 = load %struct.hash*, %struct.hash** %2, align 8
  %92 = getelementptr inbounds %struct.hash, %struct.hash* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @fseek(i32* %90, i32 %93, i32 0)
  %95 = load %struct.hash*, %struct.hash** %2, align 8
  %96 = getelementptr inbounds %struct.hash, %struct.hash* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.hash*, %struct.hash** %2, align 8
  %99 = getelementptr inbounds %struct.hash, %struct.hash* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @strlen(i32 %100)
  %102 = add nsw i64 %101, 1
  %103 = load i32*, i32** %3, align 8
  %104 = call i32 @fwrite(i32 %97, i64 %102, i32 1, i32* %103)
  %105 = call i32 @ignore(i32 %104)
  %106 = load i32*, i32** %3, align 8
  %107 = call i64 @ferror(i32* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %89
  %110 = load i32, i32* @strings, align 4
  %111 = call i32 @err(i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %109, %89
  br label %113

113:                                              ; preds = %112, %74
  br label %114

114:                                              ; preds = %113
  %115 = load %struct.hash*, %struct.hash** %2, align 8
  %116 = getelementptr inbounds %struct.hash, %struct.hash* %115, i32 0, i32 3
  %117 = load %struct.hash*, %struct.hash** %116, align 8
  store %struct.hash* %117, %struct.hash** %2, align 8
  br label %71

118:                                              ; preds = %71
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %1, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %1, align 4
  br label %60

122:                                              ; preds = %60
  %123 = load i32*, i32** %3, align 8
  %124 = call i64 @fclose(i32* %123)
  %125 = load i64, i64* @EOF, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load i32, i32* @strings, align 4
  %129 = call i32 @err(i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %46, %127, %122
  ret void
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @err(i32, i8*, i32) #1

declare dso_local i32 @found(i64, i32, i32) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @ignore(i32) #1

declare dso_local i32 @fwrite(i32, i64, i32, i32*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i64 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
