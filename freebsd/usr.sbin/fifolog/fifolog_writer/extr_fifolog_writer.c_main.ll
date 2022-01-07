; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/fifolog/fifolog_writer/extr_fifolog_writer.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/fifolog/fifolog_writer/extr_fifolog_writer.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fifolog_writer = type { i32 }
%struct.pollfd = type { i32, i64 }

@BUFSIZ = common dso_local global i32 0, align 4
@Z_BEST_COMPRESSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"w:s:z:\00", align 1
@optarg = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Error: %s\00", align 1
@POLLIN = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.fifolog_writer*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [1 x %struct.pollfd], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = load i32, i32* @BUFSIZ, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  store i32 10, i32* %14, align 4
  store i32 60, i32* %15, align 4
  %21 = load i32, i32* @Z_BEST_COMPRESSION, align 4
  store i32 %21, i32* %16, align 4
  br label %22

22:                                               ; preds = %40, %2
  %23 = load i32, i32* %4, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = call i32 @getopt(i32 %23, i8** %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %13, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  %28 = load i32, i32* %13, align 4
  switch i32 %28, label %38 [
    i32 119, label %29
    i32 115, label %32
    i32 122, label %35
  ]

29:                                               ; preds = %27
  %30 = load i32, i32* @optarg, align 4
  %31 = call i32 @strtoul(i32 %30, i32* null, i32 0)
  store i32 %31, i32* %14, align 4
  br label %40

32:                                               ; preds = %27
  %33 = load i32, i32* @optarg, align 4
  %34 = call i32 @strtoul(i32 %33, i32* null, i32 0)
  store i32 %34, i32* %15, align 4
  br label %40

35:                                               ; preds = %27
  %36 = load i32, i32* @optarg, align 4
  %37 = call i32 @strtoul(i32 %36, i32* null, i32 0)
  store i32 %37, i32* %16, align 4
  br label %40

38:                                               ; preds = %27
  %39 = call i32 (...) @usage()
  br label %40

40:                                               ; preds = %38, %35, %32, %29
  br label %22

41:                                               ; preds = %22
  %42 = load i64, i64* @optind, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = sub nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %4, align 4
  %47 = load i64, i64* @optind, align 8
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 %47
  store i8** %49, i8*** %5, align 8
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %52, label %54

52:                                               ; preds = %41
  %53 = call i32 (...) @usage()
  br label %54

54:                                               ; preds = %52, %41
  %55 = load i32, i32* %16, align 4
  %56 = icmp ugt i32 %55, 9
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = call i32 (...) @usage()
  br label %59

59:                                               ; preds = %57, %54
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp ugt i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = call i32 (...) @usage()
  br label %65

65:                                               ; preds = %63, %59
  %66 = call %struct.fifolog_writer* (...) @fifolog_write_new()
  store %struct.fifolog_writer* %66, %struct.fifolog_writer** %6, align 8
  %67 = load %struct.fifolog_writer*, %struct.fifolog_writer** %6, align 8
  %68 = icmp ne %struct.fifolog_writer* %67, null
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load %struct.fifolog_writer*, %struct.fifolog_writer** %6, align 8
  %72 = load i8**, i8*** %5, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %16, align 4
  %78 = call i8* @fifolog_write_open(%struct.fifolog_writer* %71, i8* %74, i32 %75, i32 %76, i32 %77)
  store i8* %78, i8** %7, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %65
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %82)
  br label %84

84:                                               ; preds = %81, %65
  br label %85

85:                                               ; preds = %138, %84
  br label %86

86:                                               ; preds = %85
  %87 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %8, i64 0, i64 0
  %88 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %87, i32 0, i32 1
  store i64 0, i64* %88, align 8
  %89 = load i32, i32* @POLLIN, align 4
  %90 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %8, i64 0, i64 0
  %91 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 16
  %92 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %8, i64 0, i64 0
  %93 = call i32 @poll(%struct.pollfd* %92, i32 1, i32 1000)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %131

96:                                               ; preds = %86
  %97 = trunc i64 %18 to i32
  %98 = load i32, i32* @stdin, align 4
  %99 = call i32* @fgets(i8* %20, i32 %97, i32 %98)
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %139

102:                                              ; preds = %96
  %103 = call i8* @strchr(i8* %20, i8 signext 0)
  store i8* %103, i8** %11, align 8
  %104 = load i8*, i8** %11, align 8
  %105 = icmp ne i8* %104, null
  %106 = zext i1 %105 to i32
  %107 = call i32 @assert(i32 %106)
  br label %108

108:                                              ; preds = %119, %102
  %109 = load i8*, i8** %11, align 8
  %110 = icmp ugt i8* %109, %20
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  %112 = load i8*, i8** %11, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 -1
  %114 = load i8, i8* %113, align 1
  %115 = call i64 @isspace(i8 signext %114)
  %116 = icmp ne i64 %115, 0
  br label %117

117:                                              ; preds = %111, %108
  %118 = phi i1 [ false, %108 ], [ %116, %111 ]
  br i1 %118, label %119, label %122

119:                                              ; preds = %117
  %120 = load i8*, i8** %11, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 -1
  store i8* %121, i8** %11, align 8
  br label %108

122:                                              ; preds = %117
  %123 = load i8*, i8** %11, align 8
  store i8 0, i8* %123, align 1
  %124 = load i8, i8* %20, align 16
  %125 = sext i8 %124 to i32
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load %struct.fifolog_writer*, %struct.fifolog_writer** %6, align 8
  %129 = call i32 @fifolog_write_record_poll(%struct.fifolog_writer* %128, i32 0, i32 0, i8* %20, i32 0)
  br label %130

130:                                              ; preds = %127, %122
  br label %138

131:                                              ; preds = %86
  %132 = load i32, i32* %12, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load %struct.fifolog_writer*, %struct.fifolog_writer** %6, align 8
  %136 = call i32 @fifolog_write_poll(%struct.fifolog_writer* %135, i32 0)
  br label %137

137:                                              ; preds = %134, %131
  br label %138

138:                                              ; preds = %137, %130
  br label %85

139:                                              ; preds = %101
  %140 = load %struct.fifolog_writer*, %struct.fifolog_writer** %6, align 8
  %141 = call i32 @fifolog_write_close(%struct.fifolog_writer* %140)
  store i32 0, i32* %3, align 4
  %142 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %142)
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @strtoul(i32, i32*, i32) #2

declare dso_local i32 @usage(...) #2

declare dso_local %struct.fifolog_writer* @fifolog_write_new(...) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i8* @fifolog_write_open(%struct.fifolog_writer*, i8*, i32, i32, i32) #2

declare dso_local i32 @err(i32, i8*, i8*) #2

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #2

declare dso_local i32* @fgets(i8*, i32, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @isspace(i8 signext) #2

declare dso_local i32 @fifolog_write_record_poll(%struct.fifolog_writer*, i32, i32, i8*, i32) #2

declare dso_local i32 @fifolog_write_poll(%struct.fifolog_writer*, i32) #2

declare dso_local i32 @fifolog_write_close(%struct.fifolog_writer*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
