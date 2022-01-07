; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sed/extr_process.c_flush_appends.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sed/extr_process.c_flush_appends.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i32 }

@appendx = common dso_local global i32 0, align 4
@appends = common dso_local global %struct.TYPE_2__* null, align 8
@outfile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@outfname = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@sdone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @flush_appends to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_appends() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [8192 x i8], align 16
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %56, %0
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @appendx, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %59

9:                                                ; preds = %5
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @appends, align 8
  %11 = load i32, i32* %3, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %55 [
    i32 128, label %16
    i32 129, label %31
  ]

16:                                               ; preds = %9
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @appends, align 8
  %18 = load i32, i32* %3, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @appends, align 8
  %24 = load i32, i32* %3, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @outfile, align 4
  %30 = call i32 @fwrite(i8* %22, i32 1, i32 %28, i32 %29)
  br label %55

31:                                               ; preds = %9
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @appends, align 8
  %33 = load i32, i32* %3, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = call i32* @fopen(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %38, i32** %1, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %55

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %47, %41
  %43 = getelementptr inbounds [8192 x i8], [8192 x i8]* %4, i64 0, i64 0
  %44 = load i32*, i32** %1, align 8
  %45 = call i32 @fread(i8* %43, i32 1, i32 8192, i32* %44)
  store i32 %45, i32* %2, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = getelementptr inbounds [8192 x i8], [8192 x i8]* %4, i64 0, i64 0
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* @outfile, align 4
  %51 = call i32 @fwrite(i8* %48, i32 1, i32 %49, i32 %50)
  br label %42

52:                                               ; preds = %42
  %53 = load i32*, i32** %1, align 8
  %54 = call i32 @fclose(i32* %53)
  br label %55

55:                                               ; preds = %9, %52, %40, %16
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %3, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %5

59:                                               ; preds = %5
  %60 = load i32, i32* @outfile, align 4
  %61 = call i64 @ferror(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %59
  %64 = load i32, i32* @outfname, align 4
  %65 = load i64, i64* @errno, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i64, i64* @errno, align 8
  br label %71

69:                                               ; preds = %63
  %70 = load i64, i64* @EIO, align 8
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i64 [ %68, %67 ], [ %70, %69 ]
  %73 = call i32 @strerror(i64 %72)
  %74 = call i32 @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %73)
  br label %75

75:                                               ; preds = %71, %59
  store i32 0, i32* @sdone, align 4
  store i32 0, i32* @appendx, align 4
  ret void
}

declare dso_local i32 @fwrite(i8*, i32, i32, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @ferror(i32) #1

declare dso_local i32 @errx(i32, i8*, i32, i32) #1

declare dso_local i32 @strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
