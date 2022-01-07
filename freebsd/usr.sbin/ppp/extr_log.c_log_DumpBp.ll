; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_log.c_log_DumpBp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_log.c_log_DumpBp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, %struct.mbuf* }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @log_DumpBp(i32 %0, i8* %1, %struct.mbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca [68 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store %struct.mbuf* %2, %struct.mbuf** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @log_IsKept(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %105

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = load i8*, i8** %5, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @log_Printf(i32 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %23, %18, %15
  %28 = getelementptr inbounds [68 x i8], [68 x i8]* %7, i64 0, i64 0
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 50
  store i8* %30, i8** %9, align 8
  br label %31

31:                                               ; preds = %81, %27
  %32 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %33 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %11, align 4
  %35 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %36 = call i8* @CONST_MBUF_CTOP(%struct.mbuf* %35)
  store i8* %36, i8** %10, align 8
  br label %37

37:                                               ; preds = %79, %31
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %11, align 4
  %40 = icmp ne i32 %38, 0
  br i1 %40, label %41, label %80

41:                                               ; preds = %37
  %42 = load i8*, i8** %8, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = call i32 @sprintf(i8* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i8*, i8** %10, align 8
  %48 = load i8, i8* %47, align 1
  %49 = call i64 @isprint(i8 signext %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %41
  %52 = load i8*, i8** %10, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  br label %56

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55, %51
  %57 = phi i32 [ %54, %51 ], [ 46, %55 ]
  %58 = trunc i32 %57 to i8
  %59 = load i8*, i8** %9, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %9, align 8
  store i8 %58, i8* %59, align 1
  %61 = load i8*, i8** %10, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %10, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 3
  store i8* %64, i8** %8, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = getelementptr inbounds [68 x i8], [68 x i8]* %7, i64 0, i64 0
  %67 = getelementptr inbounds i8, i8* %66, i64 48
  %68 = icmp eq i8* %65, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %56
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 @memset(i8* %70, i8 signext 32, i32 2)
  %72 = load i8*, i8** %9, align 8
  store i8 0, i8* %72, align 1
  %73 = load i32, i32* %4, align 4
  %74 = getelementptr inbounds [68 x i8], [68 x i8]* %7, i64 0, i64 0
  %75 = call i32 @log_Printf(i32 %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %74)
  %76 = getelementptr inbounds [68 x i8], [68 x i8]* %7, i64 0, i64 0
  store i8* %76, i8** %8, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 50
  store i8* %78, i8** %9, align 8
  br label %79

79:                                               ; preds = %69, %56
  br label %37

80:                                               ; preds = %37
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %83 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %82, i32 0, i32 1
  %84 = load %struct.mbuf*, %struct.mbuf** %83, align 8
  store %struct.mbuf* %84, %struct.mbuf** %6, align 8
  %85 = icmp ne %struct.mbuf* %84, null
  br i1 %85, label %31, label %86

86:                                               ; preds = %81
  %87 = load i8*, i8** %8, align 8
  %88 = getelementptr inbounds [68 x i8], [68 x i8]* %7, i64 0, i64 0
  %89 = icmp ugt i8* %87, %88
  br i1 %89, label %90, label %104

90:                                               ; preds = %86
  %91 = load i8*, i8** %8, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = getelementptr inbounds [68 x i8], [68 x i8]* %7, i64 0, i64 0
  %94 = ptrtoint i8* %92 to i64
  %95 = ptrtoint i8* %93 to i64
  %96 = sub i64 %94, %95
  %97 = sub nsw i64 50, %96
  %98 = trunc i64 %97 to i32
  %99 = call i32 @memset(i8* %91, i8 signext 32, i32 %98)
  %100 = load i8*, i8** %9, align 8
  store i8 0, i8* %100, align 1
  %101 = load i32, i32* %4, align 4
  %102 = getelementptr inbounds [68 x i8], [68 x i8]* %7, i64 0, i64 0
  %103 = call i32 @log_Printf(i32 %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %102)
  br label %104

104:                                              ; preds = %90, %86
  br label %105

105:                                              ; preds = %104, %3
  ret void
}

declare dso_local i64 @log_IsKept(i32) #1

declare dso_local i32 @log_Printf(i32, i8*, i8*) #1

declare dso_local i8* @CONST_MBUF_CTOP(%struct.mbuf*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @isprint(i8 signext) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
