; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/pr/extr_pr.c_nxtfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/pr/extr_pr.c_nxtfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }
%struct.stat = type { i32 }

@nxtfile.twice = internal global i32 -1, align 4
@eoptind = common dso_local global i32 0, align 4
@stdin = common dso_local global i32* null, align 8
@header = common dso_local global i8* null, align 8
@fnamedefault = common dso_local global i8* null, align 8
@nohead = common dso_local global i64 0, align 8
@errcnt = common dso_local global i32 0, align 4
@err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"pr: cannot get time of day, %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@nodiag = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"pr: cannot open %s, %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"pr: cannot stat %s, %s\0A\00", align 1
@HDBUF = common dso_local global i32 0, align 4
@timefrmt = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"pr: time conversion failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @nxtfile(i32 %0, i8** %1, i8** %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.tm*, align 8
  %15 = alloca %struct.stat, align 4
  store i32 %0, i32* %7, align 4
  store i8** %1, i8*** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* null, i32** %12, align 8
  store %struct.tm* null, %struct.tm** %14, align 8
  %16 = load i32, i32* @nxtfile.twice, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @nxtfile.twice, align 4
  %18 = load i32, i32* @eoptind, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %56

21:                                               ; preds = %5
  %22 = load i32, i32* @nxtfile.twice, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32* null, i32** %6, align 8
  br label %232

25:                                               ; preds = %21
  %26 = load i32*, i32** @stdin, align 8
  %27 = call i32 @clearerr(i32* %26)
  %28 = load i32*, i32** @stdin, align 8
  store i32* %28, i32** %12, align 8
  %29 = load i8*, i8** @header, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i8*, i8** @header, align 8
  %33 = load i8**, i8*** %9, align 8
  store i8* %32, i8** %33, align 8
  br label %37

34:                                               ; preds = %25
  %35 = load i8*, i8** @fnamedefault, align 8
  %36 = load i8**, i8*** %9, align 8
  store i8* %35, i8** %36, align 8
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i64, i64* @nohead, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32*, i32** %12, align 8
  store i32* %41, i32** %6, align 8
  br label %232

42:                                               ; preds = %37
  %43 = call i32 @time(i32* null)
  store i32 %43, i32* %13, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load i32, i32* @errcnt, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* @errcnt, align 4
  %48 = load i32, i32* @err, align 4
  %49 = load i32, i32* @errno, align 4
  %50 = call i8* @strerror(i32 %49)
  %51 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %50)
  %52 = load i32, i32* %7, align 4
  %53 = sub nsw i32 %52, 1
  store i32 %53, i32* @eoptind, align 4
  store i32* null, i32** %6, align 8
  br label %232

54:                                               ; preds = %42
  %55 = call %struct.tm* @localtime(i32* %13)
  store %struct.tm* %55, %struct.tm** %14, align 8
  br label %56

56:                                               ; preds = %54, %5
  br label %57

57:                                               ; preds = %204, %56
  %58 = load i32, i32* @eoptind, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %207

61:                                               ; preds = %57
  %62 = load i8**, i8*** %8, align 8
  %63 = load i32, i32* @eoptind, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @strcmp(i8* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %106

69:                                               ; preds = %61
  %70 = load i32*, i32** @stdin, align 8
  %71 = call i32 @clearerr(i32* %70)
  %72 = load i32*, i32** @stdin, align 8
  store i32* %72, i32** %12, align 8
  %73 = load i8*, i8** @header, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i8*, i8** @header, align 8
  %77 = load i8**, i8*** %9, align 8
  store i8* %76, i8** %77, align 8
  br label %81

78:                                               ; preds = %69
  %79 = load i8*, i8** @fnamedefault, align 8
  %80 = load i8**, i8*** %9, align 8
  store i8* %79, i8** %80, align 8
  br label %81

81:                                               ; preds = %78, %75
  %82 = load i32, i32* @eoptind, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* @eoptind, align 4
  %84 = load i64, i64* @nohead, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %81
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load i32, i32* @nxtfile.twice, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89, %81
  %93 = load i32*, i32** %12, align 8
  store i32* %93, i32** %6, align 8
  br label %232

94:                                               ; preds = %89, %86
  %95 = call i32 @time(i32* null)
  store i32 %95, i32* %13, align 4
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load i32, i32* @errcnt, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* @errcnt, align 4
  %100 = load i32, i32* @err, align 4
  %101 = load i32, i32* @errno, align 4
  %102 = call i8* @strerror(i32 %101)
  %103 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %100, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %102)
  store i32* null, i32** %6, align 8
  br label %232

104:                                              ; preds = %94
  %105 = call %struct.tm* @localtime(i32* %13)
  store %struct.tm* %105, %struct.tm** %14, align 8
  br label %203

106:                                              ; preds = %61
  %107 = load i8**, i8*** %8, align 8
  %108 = load i32, i32* @eoptind, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = call i32* @fopen(i8* %111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %112, i32** %12, align 8
  %113 = icmp eq i32* %112, null
  br i1 %113, label %114, label %130

114:                                              ; preds = %106
  %115 = load i32, i32* @errcnt, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* @errcnt, align 4
  %117 = load i64, i64* @nodiag, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  br label %204

120:                                              ; preds = %114
  %121 = load i32, i32* @err, align 4
  %122 = load i8**, i8*** %8, align 8
  %123 = load i32, i32* @eoptind, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %122, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = load i32, i32* @errno, align 4
  %128 = call i8* @strerror(i32 %127)
  %129 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %121, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %126, i8* %128)
  br label %204

130:                                              ; preds = %106
  %131 = load i8*, i8** @header, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i8*, i8** @header, align 8
  %135 = load i8**, i8*** %9, align 8
  store i8* %134, i8** %135, align 8
  br label %150

136:                                              ; preds = %130
  %137 = load i32, i32* %11, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i8*, i8** @fnamedefault, align 8
  %141 = load i8**, i8*** %9, align 8
  store i8* %140, i8** %141, align 8
  br label %149

142:                                              ; preds = %136
  %143 = load i8**, i8*** %8, align 8
  %144 = load i32, i32* @eoptind, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %143, i64 %145
  %147 = load i8*, i8** %146, align 8
  %148 = load i8**, i8*** %9, align 8
  store i8* %147, i8** %148, align 8
  br label %149

149:                                              ; preds = %142, %139
  br label %150

150:                                              ; preds = %149, %133
  %151 = load i32, i32* @eoptind, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* @eoptind, align 4
  %153 = load i64, i64* @nohead, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %161, label %155

155:                                              ; preds = %150
  %156 = load i32, i32* %11, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %155
  %159 = load i32, i32* @nxtfile.twice, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %158, %150
  %162 = load i32*, i32** %12, align 8
  store i32* %162, i32** %6, align 8
  br label %232

163:                                              ; preds = %158, %155
  %164 = load i32, i32* %11, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %180

166:                                              ; preds = %163
  %167 = call i32 @time(i32* null)
  store i32 %167, i32* %13, align 4
  %168 = icmp eq i32 %167, -1
  br i1 %168, label %169, label %178

169:                                              ; preds = %166
  %170 = load i32, i32* @errcnt, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* @errcnt, align 4
  %172 = load i32, i32* @err, align 4
  %173 = load i32, i32* @errno, align 4
  %174 = call i8* @strerror(i32 %173)
  %175 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %172, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %174)
  %176 = load i32*, i32** %12, align 8
  %177 = call i32 @fclose(i32* %176)
  store i32* null, i32** %6, align 8
  br label %232

178:                                              ; preds = %166
  %179 = call %struct.tm* @localtime(i32* %13)
  store %struct.tm* %179, %struct.tm** %14, align 8
  br label %202

180:                                              ; preds = %163
  %181 = load i32*, i32** %12, align 8
  %182 = call i32 @fileno(i32* %181)
  %183 = call i64 @fstat(i32 %182, %struct.stat* %15)
  %184 = icmp slt i64 %183, 0
  br i1 %184, label %185, label %199

185:                                              ; preds = %180
  %186 = load i32, i32* @errcnt, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* @errcnt, align 4
  %188 = load i32*, i32** %12, align 8
  %189 = call i32 @fclose(i32* %188)
  %190 = load i32, i32* @err, align 4
  %191 = load i8**, i8*** %8, align 8
  %192 = load i32, i32* @eoptind, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8*, i8** %191, i64 %193
  %195 = load i8*, i8** %194, align 8
  %196 = load i32, i32* @errno, align 4
  %197 = call i8* @strerror(i32 %196)
  %198 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %190, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %195, i8* %197)
  store i32* null, i32** %6, align 8
  br label %232

199:                                              ; preds = %180
  %200 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 0
  %201 = call %struct.tm* @localtime(i32* %200)
  store %struct.tm* %201, %struct.tm** %14, align 8
  br label %202

202:                                              ; preds = %199, %178
  br label %203

203:                                              ; preds = %202, %104
  br label %207

204:                                              ; preds = %120, %119
  %205 = load i32, i32* @eoptind, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* @eoptind, align 4
  br label %57

207:                                              ; preds = %203, %57
  %208 = load i32*, i32** %12, align 8
  %209 = icmp eq i32* %208, null
  br i1 %209, label %210, label %211

210:                                              ; preds = %207
  store i32* null, i32** %6, align 8
  br label %232

211:                                              ; preds = %207
  %212 = load i8*, i8** %10, align 8
  %213 = load i32, i32* @HDBUF, align 4
  %214 = load i32, i32* @timefrmt, align 4
  %215 = load %struct.tm*, %struct.tm** %14, align 8
  %216 = call i64 @strftime(i8* %212, i32 %213, i32 %214, %struct.tm* %215)
  %217 = icmp sle i64 %216, 0
  br i1 %217, label %218, label %230

218:                                              ; preds = %211
  %219 = load i32, i32* @errcnt, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* @errcnt, align 4
  %221 = load i32*, i32** %12, align 8
  %222 = load i32*, i32** @stdin, align 8
  %223 = icmp ne i32* %221, %222
  br i1 %223, label %224, label %227

224:                                              ; preds = %218
  %225 = load i32*, i32** %12, align 8
  %226 = call i32 @fclose(i32* %225)
  br label %227

227:                                              ; preds = %224, %218
  %228 = load i32, i32* @err, align 4
  %229 = call i32 @fputs(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %228)
  store i32* null, i32** %6, align 8
  br label %232

230:                                              ; preds = %211
  %231 = load i32*, i32** %12, align 8
  store i32* %231, i32** %6, align 8
  br label %232

232:                                              ; preds = %230, %227, %210, %185, %169, %161, %97, %92, %45, %40, %24
  %233 = load i32*, i32** %6, align 8
  ret i32* %233
}

declare dso_local i32 @clearerr(i32*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i64 @strftime(i8*, i32, i32, %struct.tm*) #1

declare dso_local i32 @fputs(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
