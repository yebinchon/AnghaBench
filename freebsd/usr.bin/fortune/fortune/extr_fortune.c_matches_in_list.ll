; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/fortune/fortune/extr_fortune.c_matches_in_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/fortune/fortune/extr_fortune.c_matches_in_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, %struct.TYPE_6__, i32, i32, %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i8 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"searching in %s\0A\00", align 1
@Fortbuf = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@Fort_len = common dso_local global i32 0, align 4
@STR_COMMENTS = common dso_local global i32 0, align 4
@STR_ROTATED = common dso_local global i32 0, align 4
@Re_pat = common dso_local global i32 0, align 4
@REG_NOMATCH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%c%c\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@TRUE = common dso_local global i8* null, align 8
@Found_one = common dso_local global i8* null, align 8
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @matches_in_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @matches_in_list(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %5, align 8
  br label %9

9:                                                ; preds = %180, %1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = icmp ne %struct.TYPE_5__* %10, null
  br i1 %11, label %12, label %184

12:                                               ; preds = %9
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = icmp ne %struct.TYPE_5__* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  call void @matches_in_list(%struct.TYPE_5__* %20)
  br label %180

21:                                               ; preds = %12
  %22 = load i32, i32* @stderr, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @DPRINTF(i32 1, i32 %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = call i32 @open_fp(%struct.TYPE_5__* %27)
  %29 = load i8*, i8** @Fortbuf, align 8
  store i8* %29, i8** %3, align 8
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %178, %69, %21
  %32 = load i8*, i8** %3, align 8
  %33 = load i32, i32* @Fort_len, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32* @fgets(i8* %32, i32 %33, i32 %36)
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %179

39:                                               ; preds = %31
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @STR_COMMENTS, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %70

47:                                               ; preds = %39
  %48 = load i8*, i8** %3, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i8, i8* %54, align 4
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %51, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %47
  %59 = load i8*, i8** %3, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i8, i8* %65, align 4
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %62, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  br label %31

70:                                               ; preds = %58, %47, %39
  %71 = load i8*, i8** %3, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = bitcast %struct.TYPE_6__* %73 to i64*
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @STR_ENDSTRING(i8* %71, i64 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %70
  %79 = load i8*, i8** %3, align 8
  %80 = call i32 @strlen(i8* %79)
  %81 = load i8*, i8** %3, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  store i8* %83, i8** %3, align 8
  br label %177

84:                                               ; preds = %70
  %85 = load i8*, i8** %3, align 8
  store i8 0, i8* %85, align 1
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @STR_ROTATED, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %137

93:                                               ; preds = %84
  %94 = load i8*, i8** @Fortbuf, align 8
  store i8* %94, i8** %4, align 8
  br label %95

95:                                               ; preds = %133, %93
  %96 = load i8*, i8** %4, align 8
  %97 = load i8, i8* %96, align 1
  store i8 %97, i8* %7, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %136

100:                                              ; preds = %95
  %101 = load i8, i8* %7, align 1
  %102 = call i64 @isascii(i8 zeroext %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %132

104:                                              ; preds = %100
  %105 = load i8, i8* %7, align 1
  %106 = call i64 @isupper(i8 zeroext %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %104
  %109 = load i8, i8* %7, align 1
  %110 = zext i8 %109 to i32
  %111 = sub nsw i32 %110, 65
  %112 = add nsw i32 %111, 13
  %113 = srem i32 %112, 26
  %114 = add nsw i32 65, %113
  %115 = trunc i32 %114 to i8
  %116 = load i8*, i8** %4, align 8
  store i8 %115, i8* %116, align 1
  br label %131

117:                                              ; preds = %104
  %118 = load i8, i8* %7, align 1
  %119 = call i64 @islower(i8 zeroext %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %117
  %122 = load i8, i8* %7, align 1
  %123 = zext i8 %122 to i32
  %124 = sub nsw i32 %123, 97
  %125 = add nsw i32 %124, 13
  %126 = srem i32 %125, 26
  %127 = add nsw i32 97, %126
  %128 = trunc i32 %127 to i8
  %129 = load i8*, i8** %4, align 8
  store i8 %128, i8* %129, align 1
  br label %130

130:                                              ; preds = %121, %117
  br label %131

131:                                              ; preds = %130, %108
  br label %132

132:                                              ; preds = %131, %100
  br label %133

133:                                              ; preds = %132
  %134 = load i8*, i8** %4, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %4, align 8
  br label %95

136:                                              ; preds = %95
  br label %137

137:                                              ; preds = %136, %84
  %138 = load i8*, i8** @Fortbuf, align 8
  %139 = call i64 @regexec(i32* @Re_pat, i8* %138, i32 0, i32* null, i32 0)
  %140 = load i64, i64* @REG_NOMATCH, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %175

142:                                              ; preds = %137
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = load i8, i8* %145, align 4
  %147 = sext i8 %146 to i32
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = load i8, i8* %150, align 4
  %152 = sext i8 %151 to i32
  %153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %147, i32 %152)
  %154 = load i32, i32* %6, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %164, label %156

156:                                              ; preds = %142
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %159)
  %161 = load i8*, i8** @TRUE, align 8
  store i8* %161, i8** @Found_one, align 8
  %162 = load i8*, i8** @TRUE, align 8
  %163 = ptrtoint i8* %162 to i32
  store i32 %163, i32* %6, align 4
  br label %164

164:                                              ; preds = %156, %142
  %165 = call i32 @putchar(i8 signext 10)
  %166 = load i8*, i8** @Fortbuf, align 8
  %167 = load i8*, i8** %3, align 8
  %168 = load i8*, i8** @Fortbuf, align 8
  %169 = ptrtoint i8* %167 to i64
  %170 = ptrtoint i8* %168 to i64
  %171 = sub i64 %169, %170
  %172 = trunc i64 %171 to i32
  %173 = load i32, i32* @stdout, align 4
  %174 = call i32 @fwrite(i8* %166, i32 1, i32 %172, i32 %173)
  br label %175

175:                                              ; preds = %164, %137
  %176 = load i8*, i8** @Fortbuf, align 8
  store i8* %176, i8** %3, align 8
  br label %177

177:                                              ; preds = %175, %78
  br label %178

178:                                              ; preds = %177
  br label %31

179:                                              ; preds = %31
  br label %180

180:                                              ; preds = %179, %17
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 5
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %182, align 8
  store %struct.TYPE_5__* %183, %struct.TYPE_5__** %5, align 8
  br label %9

184:                                              ; preds = %9
  ret void
}

declare dso_local i32 @DPRINTF(i32, i32) #1

declare dso_local i32 @open_fp(%struct.TYPE_5__*) #1

declare dso_local i32* @fgets(i8*, i32, i32) #1

declare dso_local i32 @STR_ENDSTRING(i8*, i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @isascii(i8 zeroext) #1

declare dso_local i64 @isupper(i8 zeroext) #1

declare dso_local i64 @islower(i8 zeroext) #1

declare dso_local i64 @regexec(i32*, i8*, i32, i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
