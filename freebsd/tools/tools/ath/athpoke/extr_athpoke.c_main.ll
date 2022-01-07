; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athpoke/extr_athpoke.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athpoke/extr_athpoke.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ath_diag = type { i8*, i32, i64, i32 }
%struct.dumpreg = type { i64 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ATH\00", align 1
@ATH_DEFAULT = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"i:\00", align 1
@optarg = common dso_local global i8* null, align 8
@HAL_DIAG_REVS = common dso_local global i32 0, align 4
@state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@SIOCGATHDIAG = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"invalid register \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%s = %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.ath_diag, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.dumpreg*, align 8
  %13 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i32, i32* @AF_INET, align 4
  %15 = load i32, i32* @SOCK_DGRAM, align 4
  %16 = call i32 @socket(i32 %14, i32 %15, i32 0)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %2
  %22 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load i8*, i8** @ATH_DEFAULT, align 8
  store i8* %26, i8** %7, align 8
  br label %27

27:                                               ; preds = %25, %21
  br label %28

28:                                               ; preds = %39, %27
  %29 = load i32, i32* %4, align 4
  %30 = load i8**, i8*** %5, align 8
  %31 = call i32 @getopt(i32 %29, i8** %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32 %31, i32* %9, align 4
  %32 = icmp ne i32 %31, -1
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load i32, i32* %9, align 4
  switch i32 %34, label %37 [
    i32 105, label %35
  ]

35:                                               ; preds = %33
  %36 = load i8*, i8** @optarg, align 8
  store i8* %36, i8** %7, align 8
  br label %39

37:                                               ; preds = %33
  %38 = call i32 (...) @usage()
  br label %39

39:                                               ; preds = %37, %35
  br label %28

40:                                               ; preds = %28
  %41 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %6, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @strncpy(i8* %42, i8* %43, i32 8)
  %45 = load i32, i32* @HAL_DIAG_REVS, align 4
  %46 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %6, i32 0, i32 3
  store i32 %45, i32* %46, align 8
  %47 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %6, i32 0, i32 2
  store i64 ptrtoint (%struct.TYPE_2__* @state to i64), i64* %47, align 8
  %48 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %6, i32 0, i32 1
  store i32 4, i32* %48, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @SIOCGATHDIAG, align 4
  %51 = call i64 @ioctl(i32 %49, i32 %50, %struct.ath_diag* %6)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %40
  %54 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %6, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @err(i32 1, i8* %55)
  br label %57

57:                                               ; preds = %53, %40
  %58 = load i64, i64* @optind, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = sub nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %4, align 4
  %63 = load i64, i64* @optind, align 8
  %64 = load i8**, i8*** %5, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 %63
  store i8** %65, i8*** %5, align 8
  br label %66

66:                                               ; preds = %129, %57
  %67 = load i32, i32* %4, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %134

69:                                               ; preds = %66
  %70 = load i8**, i8*** %5, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i8* @strchr(i8* %72, i8 signext 61)
  store i8* %73, i8** %11, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i8*, i8** %11, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %11, align 8
  store i8 0, i8* %77, align 1
  br label %79

79:                                               ; preds = %76, %69
  %80 = load i8**, i8*** %5, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 0
  %82 = load i8*, i8** %81, align 8
  %83 = call %struct.dumpreg* @reglookup(i8* %82)
  store %struct.dumpreg* %83, %struct.dumpreg** %12, align 8
  %84 = load %struct.dumpreg*, %struct.dumpreg** %12, align 8
  %85 = icmp eq %struct.dumpreg* %84, null
  br i1 %85, label %86, label %108

86:                                               ; preds = %79
  store i64 0, i64* @errno, align 8
  %87 = load i8**, i8*** %5, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 @strtoul(i8* %89, i8** %8, i32 0)
  store i64 %90, i64* %13, align 8
  %91 = load i8**, i8*** %5, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 0
  %93 = load i8*, i8** %92, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = icmp eq i8* %93, %94
  br i1 %95, label %102, label %96

96:                                               ; preds = %86
  %97 = load i8*, i8** %8, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %96, %86
  %103 = load i8**, i8*** %5, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 0
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %105)
  br label %107

107:                                              ; preds = %102, %96
  br label %112

108:                                              ; preds = %79
  %109 = load %struct.dumpreg*, %struct.dumpreg** %12, align 8
  %110 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %13, align 8
  br label %112

112:                                              ; preds = %108, %107
  %113 = load i8*, i8** %11, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %121

115:                                              ; preds = %112
  %116 = load i32, i32* %10, align 4
  %117 = load i64, i64* %13, align 8
  %118 = load i8*, i8** %11, align 8
  %119 = call i64 @strtoul(i8* %118, i8** null, i32 0)
  %120 = call i32 @regwrite(i32 %116, %struct.ath_diag* %6, i64 %117, i64 %119)
  br label %121

121:                                              ; preds = %115, %112
  %122 = load i8**, i8*** %5, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 0
  %124 = load i8*, i8** %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = load i64, i64* %13, align 8
  %127 = call i32 @regread(i32 %125, %struct.ath_diag* %6, i64 %126)
  %128 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %124, i32 %127)
  br label %129

129:                                              ; preds = %121
  %130 = load i32, i32* %4, align 4
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* %4, align 4
  %132 = load i8**, i8*** %5, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i32 1
  store i8** %133, i8*** %5, align 8
  br label %66

134:                                              ; preds = %66
  ret i32 0
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ath_diag*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local %struct.dumpreg* @reglookup(i8*) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @regwrite(i32, %struct.ath_diag*, i64, i64) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i32 @regread(i32, %struct.ath_diag*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
