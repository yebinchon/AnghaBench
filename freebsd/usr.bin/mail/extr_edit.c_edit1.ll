; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_edit.c_edit1.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_edit.c_edit1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { i64, i64, i32, i32, i32 }

@msgCount = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Edit message %d [ynq]? \00", align 1
@stdin = common dso_local global i32 0, align 4
@message = common dso_local global %struct.message* null, align 8
@dot = common dso_local global %struct.message* null, align 8
@SIGINT = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@readonly = common dso_local global i32 0, align 4
@otf = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@MODIFY = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @edit1(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.message*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [100 x i8], align 16
  %12 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %158, %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @msgCount, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %17, %13
  %25 = phi i1 [ false, %13 ], [ %23, %17 ]
  br i1 %25, label %26, label %161

26:                                               ; preds = %24
  %27 = load i32, i32* %6, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %72

29:                                               ; preds = %26
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %37 = load i32, i32* @stdin, align 4
  %38 = call i32* @fgets(i8* %36, i32 100, i32 %37)
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %161

41:                                               ; preds = %29
  %42 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  store i8* %42, i8** %12, align 8
  br label %43

43:                                               ; preds = %56, %41
  %44 = load i8*, i8** %12, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 32
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i8*, i8** %12, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 9
  br label %53

53:                                               ; preds = %48, %43
  %54 = phi i1 [ true, %43 ], [ %52, %48 ]
  br i1 %54, label %55, label %59

55:                                               ; preds = %53
  br label %56

56:                                               ; preds = %55
  %57 = load i8*, i8** %12, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %12, align 8
  br label %43

59:                                               ; preds = %53
  %60 = load i8*, i8** %12, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 113
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %161

65:                                               ; preds = %59
  %66 = load i8*, i8** %12, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 110
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %158

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71, %26
  %73 = load %struct.message*, %struct.message** @message, align 8
  %74 = load i32*, i32** %3, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.message, %struct.message* %73, i64 %80
  store %struct.message* %81, %struct.message** %8, align 8
  store %struct.message* %81, %struct.message** @dot, align 8
  %82 = load %struct.message*, %struct.message** %8, align 8
  %83 = call i32 @touch(%struct.message* %82)
  %84 = load i32, i32* @SIGINT, align 4
  %85 = load i32, i32* @SIG_IGN, align 4
  %86 = call i32 @signal(i32 %84, i32 %85)
  store i32 %86, i32* %10, align 4
  %87 = load %struct.message*, %struct.message** %8, align 8
  %88 = call i32 @setinput(%struct.message* %87)
  %89 = load %struct.message*, %struct.message** %8, align 8
  %90 = getelementptr inbounds %struct.message, %struct.message* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @readonly, align 4
  %94 = call i32* @run_editor(i32 %88, i64 %91, i32 %92, i32 %93)
  store i32* %94, i32** %7, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %154

97:                                               ; preds = %72
  %98 = load i32, i32* @otf, align 4
  %99 = load i32, i32* @SEEK_END, align 4
  %100 = call i32 @fseeko(i32 %98, i32 0, i32 %99)
  %101 = load i32, i32* @otf, align 4
  %102 = call i32 @ftello(i32 %101)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @blockof(i32 %103)
  %105 = load %struct.message*, %struct.message** %8, align 8
  %106 = getelementptr inbounds %struct.message, %struct.message* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @boffsetof(i32 %107)
  %109 = load %struct.message*, %struct.message** %8, align 8
  %110 = getelementptr inbounds %struct.message, %struct.message* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  %111 = load i32*, i32** %7, align 8
  %112 = call i64 @fsize(i32* %111)
  %113 = load %struct.message*, %struct.message** %8, align 8
  %114 = getelementptr inbounds %struct.message, %struct.message* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  %115 = load %struct.message*, %struct.message** %8, align 8
  %116 = getelementptr inbounds %struct.message, %struct.message* %115, i32 0, i32 1
  store i64 0, i64* %116, align 8
  %117 = load i32, i32* @MODIFY, align 4
  %118 = load %struct.message*, %struct.message** %8, align 8
  %119 = getelementptr inbounds %struct.message, %struct.message* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 8
  %122 = load i32*, i32** %7, align 8
  %123 = call i32 @rewind(i32* %122)
  br label %124

124:                                              ; preds = %144, %97
  %125 = load i32*, i32** %7, align 8
  %126 = call i32 @getc(i32* %125)
  store i32 %126, i32* %5, align 4
  %127 = load i32, i32* @EOF, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %145

129:                                              ; preds = %124
  %130 = load i32, i32* %5, align 4
  %131 = icmp eq i32 %130, 10
  br i1 %131, label %132, label %137

132:                                              ; preds = %129
  %133 = load %struct.message*, %struct.message** %8, align 8
  %134 = getelementptr inbounds %struct.message, %struct.message* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, 1
  store i64 %136, i64* %134, align 8
  br label %137

137:                                              ; preds = %132, %129
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* @otf, align 4
  %140 = call i32 @putc(i32 %138, i32 %139)
  %141 = load i32, i32* @EOF, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  br label %145

144:                                              ; preds = %137
  br label %124

145:                                              ; preds = %143, %124
  %146 = load i32, i32* @otf, align 4
  %147 = call i64 @ferror(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  %150 = call i32 @warnx(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %151

151:                                              ; preds = %149, %145
  %152 = load i32*, i32** %7, align 8
  %153 = call i32 @Fclose(i32* %152)
  br label %154

154:                                              ; preds = %151, %72
  %155 = load i32, i32* @SIGINT, align 4
  %156 = load i32, i32* %10, align 4
  %157 = call i32 @signal(i32 %155, i32 %156)
  br label %158

158:                                              ; preds = %154, %70
  %159 = load i32, i32* %6, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %6, align 4
  br label %13

161:                                              ; preds = %64, %40, %24
  ret i32 0
}

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32* @fgets(i8*, i32, i32) #1

declare dso_local i32 @touch(%struct.message*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32* @run_editor(i32, i64, i32, i32) #1

declare dso_local i32 @setinput(%struct.message*) #1

declare dso_local i32 @fseeko(i32, i32, i32) #1

declare dso_local i32 @ftello(i32) #1

declare dso_local i32 @blockof(i32) #1

declare dso_local i32 @boffsetof(i32) #1

declare dso_local i64 @fsize(i32*) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @putc(i32, i32) #1

declare dso_local i64 @ferror(i32) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @Fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
