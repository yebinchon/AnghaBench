; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/indent/extr_args.c_set_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/indent/extr_args.c_set_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pro = type { i8*, i32, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@pro = common dso_local global %struct.pro* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"%s: unknown parameter \22%s\22\00", align 1
@option_source = common dso_local global i32 0, align 4
@opt = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@input = common dso_local global i32* null, align 8
@stdin = common dso_local global i32* null, align 8
@output = common dso_local global i32* null, align 8
@stdout = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"FreeBSD indent %s\0A\00", align 1
@INDENT_VERSION = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"set_option: internal error: p_special %d\00", align 1
@OFF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"%s: ``%s'' requires a parameter\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"set_option: internal error: p_type %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_option(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pro*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %6, i8** %2, align 8
  %7 = load %struct.pro*, %struct.pro** @pro, align 8
  store %struct.pro* %7, %struct.pro** %3, align 8
  br label %8

8:                                                ; preds = %32, %1
  %9 = load %struct.pro*, %struct.pro** %3, align 8
  %10 = getelementptr inbounds %struct.pro, %struct.pro* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %35

13:                                               ; preds = %8
  %14 = load %struct.pro*, %struct.pro** %3, align 8
  %15 = getelementptr inbounds %struct.pro, %struct.pro* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = load i8*, i8** %2, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %13
  %24 = load %struct.pro*, %struct.pro** %3, align 8
  %25 = getelementptr inbounds %struct.pro, %struct.pro* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i8*, i8** %2, align 8
  %28 = call i8* @eqin(i8* %26, i8* %27)
  store i8* %28, i8** %4, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %40

31:                                               ; preds = %23, %13
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.pro*, %struct.pro** %3, align 8
  %34 = getelementptr inbounds %struct.pro, %struct.pro* %33, i32 1
  store %struct.pro* %34, %struct.pro** %3, align 8
  br label %8

35:                                               ; preds = %8
  %36 = load i32, i32* @option_source, align 4
  %37 = load i8*, i8** %2, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 -1
  %39 = call i32 (i32, i8*, i32, ...) @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %36, i8* %38)
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.pro*, %struct.pro** %3, align 8
  %42 = getelementptr inbounds %struct.pro, %struct.pro* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %130 [
    i32 130, label %44
    i32 132, label %97
    i32 131, label %112
  ]

44:                                               ; preds = %40
  %45 = load %struct.pro*, %struct.pro** %3, align 8
  %46 = getelementptr inbounds %struct.pro, %struct.pro* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %91 [
    i32 135, label %48
    i32 136, label %49
    i32 129, label %58
    i32 134, label %69
    i32 133, label %78
    i32 128, label %87
  ]

48:                                               ; preds = %44
  br label %96

49:                                               ; preds = %44
  %50 = load i8*, i8** %4, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %118

55:                                               ; preds = %49
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @atof(i8* %56)
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opt, i32 0, i32 0), align 4
  br label %96

58:                                               ; preds = %44
  %59 = load i32*, i32** @input, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32*, i32** @stdin, align 8
  store i32* %62, i32** @input, align 8
  br label %63

63:                                               ; preds = %61, %58
  %64 = load i32*, i32** @output, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32*, i32** @stdout, align 8
  store i32* %67, i32** @output, align 8
  br label %68

68:                                               ; preds = %66, %63
  br label %96

69:                                               ; preds = %44
  %70 = load i8*, i8** %4, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %118

75:                                               ; preds = %69
  %76 = load i8*, i8** %4, align 8
  %77 = call i32 @add_typename(i8* %76)
  br label %96

78:                                               ; preds = %44
  %79 = load i8*, i8** %4, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %118

84:                                               ; preds = %78
  %85 = load i8*, i8** %4, align 8
  %86 = call i32 @add_typedefs_from_file(i8* %85)
  br label %96

87:                                               ; preds = %44
  %88 = load i8*, i8** @INDENT_VERSION, align 8
  %89 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %88)
  %90 = call i32 @exit(i32 0) #3
  unreachable

91:                                               ; preds = %44
  %92 = load %struct.pro*, %struct.pro** %3, align 8
  %93 = getelementptr inbounds %struct.pro, %struct.pro* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i32, i8*, i32, ...) @errx(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %91, %84, %75, %68, %55, %48
  br label %135

97:                                               ; preds = %40
  %98 = load %struct.pro*, %struct.pro** %3, align 8
  %99 = getelementptr inbounds %struct.pro, %struct.pro* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @OFF, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load %struct.pro*, %struct.pro** %3, align 8
  %105 = getelementptr inbounds %struct.pro, %struct.pro* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  store i32 0, i32* %106, align 4
  br label %111

107:                                              ; preds = %97
  %108 = load %struct.pro*, %struct.pro** %3, align 8
  %109 = getelementptr inbounds %struct.pro, %struct.pro* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  store i32 1, i32* %110, align 4
  br label %111

111:                                              ; preds = %107, %103
  br label %135

112:                                              ; preds = %40
  %113 = load i8*, i8** %4, align 8
  %114 = load i8, i8* %113, align 1
  %115 = call i32 @isdigit(i8 zeroext %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %112
  br label %118

118:                                              ; preds = %117, %83, %74, %54
  %119 = load i32, i32* @option_source, align 4
  %120 = load %struct.pro*, %struct.pro** %3, align 8
  %121 = getelementptr inbounds %struct.pro, %struct.pro* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 (i32, i8*, i32, ...) @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %119, i8* %122)
  br label %124

124:                                              ; preds = %118, %112
  %125 = load i8*, i8** %4, align 8
  %126 = call i32 @atoi(i8* %125)
  %127 = load %struct.pro*, %struct.pro** %3, align 8
  %128 = getelementptr inbounds %struct.pro, %struct.pro* %127, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8
  store i32 %126, i32* %129, align 4
  br label %135

130:                                              ; preds = %40
  %131 = load %struct.pro*, %struct.pro** %3, align 8
  %132 = getelementptr inbounds %struct.pro, %struct.pro* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i32 (i32, i8*, i32, ...) @errx(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %133)
  br label %135

135:                                              ; preds = %130, %124, %111, %96
  ret void
}

declare dso_local i8* @eqin(i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*, i32, ...) #1

declare dso_local i32 @atof(i8*) #1

declare dso_local i32 @add_typename(i8*) #1

declare dso_local i32 @add_typedefs_from_file(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @isdigit(i8 zeroext) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
