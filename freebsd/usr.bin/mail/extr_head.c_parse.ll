; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_head.c_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_head.c_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.headline = type { i32*, i32*, i32* }

@LINESIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"tty\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse(i8* %0, %struct.headline* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.headline*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.headline* %1, %struct.headline** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i32, i32* @LINESIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load %struct.headline*, %struct.headline** %5, align 8
  %17 = getelementptr inbounds %struct.headline, %struct.headline* %16, i32 0, i32 2
  store i32* null, i32** %17, align 8
  %18 = load %struct.headline*, %struct.headline** %5, align 8
  %19 = getelementptr inbounds %struct.headline, %struct.headline* %18, i32 0, i32 1
  store i32* null, i32** %19, align 8
  %20 = load %struct.headline*, %struct.headline** %5, align 8
  %21 = getelementptr inbounds %struct.headline, %struct.headline* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  %22 = load i8*, i8** %4, align 8
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %6, align 8
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i8* @nextword(i8* %24, i8* %15)
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i64 @isdate(i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %3
  %30 = load i8*, i8** %7, align 8
  %31 = call i8* @copyin(i8* %30, i8** %8)
  %32 = bitcast i8* %31 to i32*
  %33 = load %struct.headline*, %struct.headline** %5, align 8
  %34 = getelementptr inbounds %struct.headline, %struct.headline* %33, i32 0, i32 0
  store i32* %32, i32** %34, align 8
  store i32 1, i32* %11, align 4
  br label %69

35:                                               ; preds = %3
  %36 = load i8*, i8** %7, align 8
  %37 = call i8* @nextword(i8* %36, i8* %15)
  store i8* %37, i8** %7, align 8
  %38 = call i64 @strlen(i8* %15)
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = call i8* @copyin(i8* %15, i8** %8)
  %42 = bitcast i8* %41 to i32*
  %43 = load %struct.headline*, %struct.headline** %5, align 8
  %44 = getelementptr inbounds %struct.headline, %struct.headline* %43, i32 0, i32 2
  store i32* %42, i32** %44, align 8
  br label %45

45:                                               ; preds = %40, %35
  %46 = load i8*, i8** %7, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load i8*, i8** %7, align 8
  %50 = call i64 @strncmp(i8* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i8*, i8** %7, align 8
  %54 = call i8* @nextword(i8* %53, i8* %15)
  store i8* %54, i8** %7, align 8
  %55 = call i8* @copyin(i8* %15, i8** %8)
  %56 = bitcast i8* %55 to i32*
  %57 = load %struct.headline*, %struct.headline** %5, align 8
  %58 = getelementptr inbounds %struct.headline, %struct.headline* %57, i32 0, i32 1
  store i32* %56, i32** %58, align 8
  br label %59

59:                                               ; preds = %52, %48, %45
  %60 = load i8*, i8** %7, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i8*, i8** %7, align 8
  %64 = call i8* @copyin(i8* %63, i8** %8)
  %65 = bitcast i8* %64 to i32*
  %66 = load %struct.headline*, %struct.headline** %5, align 8
  %67 = getelementptr inbounds %struct.headline, %struct.headline* %66, i32 0, i32 0
  store i32* %65, i32** %67, align 8
  br label %68

68:                                               ; preds = %62, %59
  store i32 0, i32* %11, align 4
  br label %69

69:                                               ; preds = %68, %29
  %70 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %11, align 4
  switch i32 %71, label %73 [
    i32 0, label %72
    i32 1, label %72
  ]

72:                                               ; preds = %69, %69
  ret void

73:                                               ; preds = %69
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @nextword(i8*, i8*) #2

declare dso_local i64 @isdate(i8*) #2

declare dso_local i8* @copyin(i8*, i8**) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
