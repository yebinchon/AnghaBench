; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_cmd2.c_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_cmd2.c_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { i32 }

@dot = common dso_local global %struct.message* null, align 8
@message = common dso_local global %struct.message* null, align 8
@MDELETED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"No messages applicable\0A\00", align 1
@sawcom = common dso_local global i32 0, align 4
@msgCount = common dso_local global i64 0, align 8
@MSAVED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"At EOF\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @next(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.message*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %83

15:                                               ; preds = %1
  %16 = load %struct.message*, %struct.message** @dot, align 8
  %17 = load %struct.message*, %struct.message** @message, align 8
  %18 = getelementptr inbounds %struct.message, %struct.message* %17, i64 0
  %19 = ptrtoint %struct.message* %16 to i64
  %20 = ptrtoint %struct.message* %18 to i64
  %21 = sub i64 %19, %20
  %22 = sdiv exact i64 %21, 4
  %23 = add nsw i64 %22, 1
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %9, align 4
  %25 = load i32*, i32** %5, align 8
  store i32* %25, i32** %6, align 8
  br label %26

26:                                               ; preds = %37, %15
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %40

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %6, align 8
  br label %26

40:                                               ; preds = %35, %26
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32*, i32** %5, align 8
  store i32* %45, i32** %6, align 8
  br label %46

46:                                               ; preds = %44, %40
  %47 = load i32*, i32** %6, align 8
  store i32* %47, i32** %7, align 8
  br label %48

48:                                               ; preds = %77, %46
  %49 = load %struct.message*, %struct.message** @message, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.message, %struct.message* %49, i64 %53
  store %struct.message* %54, %struct.message** %4, align 8
  %55 = load %struct.message*, %struct.message** %4, align 8
  %56 = getelementptr inbounds %struct.message, %struct.message* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @MDELETED, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %48
  %62 = load %struct.message*, %struct.message** %4, align 8
  store %struct.message* %62, %struct.message** @dot, align 8
  br label %120

63:                                               ; preds = %48
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32*, i32** %7, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %7, align 8
  br label %70

70:                                               ; preds = %67, %63
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32*, i32** %5, align 8
  store i32* %75, i32** %7, align 8
  br label %76

76:                                               ; preds = %74, %70
  br label %77

77:                                               ; preds = %76
  %78 = load i32*, i32** %7, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = icmp ne i32* %78, %79
  br i1 %80, label %48, label %81

81:                                               ; preds = %77
  %82 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %134

83:                                               ; preds = %1
  %84 = load i32, i32* @sawcom, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  br label %120

87:                                               ; preds = %83
  %88 = load %struct.message*, %struct.message** @dot, align 8
  %89 = getelementptr inbounds %struct.message, %struct.message* %88, i64 1
  store %struct.message* %89, %struct.message** %4, align 8
  br label %90

90:                                               ; preds = %107, %87
  %91 = load %struct.message*, %struct.message** %4, align 8
  %92 = load %struct.message*, %struct.message** @message, align 8
  %93 = load i64, i64* @msgCount, align 8
  %94 = getelementptr inbounds %struct.message, %struct.message* %92, i64 %93
  %95 = icmp ult %struct.message* %91, %94
  br i1 %95, label %96, label %110

96:                                               ; preds = %90
  %97 = load %struct.message*, %struct.message** %4, align 8
  %98 = getelementptr inbounds %struct.message, %struct.message* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @MDELETED, align 4
  %101 = load i32, i32* @MSAVED, align 4
  %102 = or i32 %100, %101
  %103 = and i32 %99, %102
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %96
  br label %110

106:                                              ; preds = %96
  br label %107

107:                                              ; preds = %106
  %108 = load %struct.message*, %struct.message** %4, align 8
  %109 = getelementptr inbounds %struct.message, %struct.message* %108, i32 1
  store %struct.message* %109, %struct.message** %4, align 8
  br label %90

110:                                              ; preds = %105, %90
  %111 = load %struct.message*, %struct.message** %4, align 8
  %112 = load %struct.message*, %struct.message** @message, align 8
  %113 = load i64, i64* @msgCount, align 8
  %114 = getelementptr inbounds %struct.message, %struct.message* %112, i64 %113
  %115 = icmp uge %struct.message* %111, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %134

118:                                              ; preds = %110
  %119 = load %struct.message*, %struct.message** %4, align 8
  store %struct.message* %119, %struct.message** @dot, align 8
  br label %120

120:                                              ; preds = %118, %86, %61
  %121 = load %struct.message*, %struct.message** @dot, align 8
  %122 = load %struct.message*, %struct.message** @message, align 8
  %123 = getelementptr inbounds %struct.message, %struct.message* %122, i64 0
  %124 = ptrtoint %struct.message* %121 to i64
  %125 = ptrtoint %struct.message* %123 to i64
  %126 = sub i64 %124, %125
  %127 = sdiv exact i64 %126, 4
  %128 = add nsw i64 %127, 1
  %129 = trunc i64 %128 to i32
  %130 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %129, i32* %130, align 4
  %131 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 0, i32* %131, align 4
  %132 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %133 = call i32 @type(i32* %132)
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %120, %116, %81
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @type(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
