; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_lex.c_newfileinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_lex.c_newfileinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { i32 }

@PATHSIZE = common dso_local global i32 0, align 4
@message = common dso_local global %struct.message* null, align 8
@msgCount = common dso_local global i64 0, align 8
@MNEW = common dso_local global i32 0, align 4
@MREAD = common dso_local global i32 0, align 4
@MDELETED = common dso_local global i32 0, align 4
@MSAVED = common dso_local global i32 0, align 4
@mailname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"+%s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"\22%s\22: \00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"1 message\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"%d messages\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c" %d new\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c" %d unread\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c" %d deleted\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c" %d saved\00", align 1
@readonly = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [13 x i8] c" [Read only]\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @newfileinfo(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.message*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %13 = load i32, i32* @PATHSIZE, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i32, i32* @PATHSIZE, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  %22 = load %struct.message*, %struct.message** @message, align 8
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.message, %struct.message* %22, i64 %24
  store %struct.message* %25, %struct.message** %3, align 8
  br label %26

26:                                               ; preds = %41, %1
  %27 = load %struct.message*, %struct.message** %3, align 8
  %28 = load %struct.message*, %struct.message** @message, align 8
  %29 = load i64, i64* @msgCount, align 8
  %30 = getelementptr inbounds %struct.message, %struct.message* %28, i64 %29
  %31 = icmp ult %struct.message* %27, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = load %struct.message*, %struct.message** %3, align 8
  %34 = getelementptr inbounds %struct.message, %struct.message* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MNEW, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %44

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.message*, %struct.message** %3, align 8
  %43 = getelementptr inbounds %struct.message, %struct.message* %42, i32 1
  store %struct.message* %43, %struct.message** %3, align 8
  br label %26

44:                                               ; preds = %39, %26
  %45 = load %struct.message*, %struct.message** %3, align 8
  %46 = load %struct.message*, %struct.message** @message, align 8
  %47 = load i64, i64* @msgCount, align 8
  %48 = getelementptr inbounds %struct.message, %struct.message* %46, i64 %47
  %49 = icmp uge %struct.message* %45, %48
  br i1 %49, label %50, label %74

50:                                               ; preds = %44
  %51 = load %struct.message*, %struct.message** @message, align 8
  %52 = load i32, i32* %2, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.message, %struct.message* %51, i64 %53
  store %struct.message* %54, %struct.message** %3, align 8
  br label %55

55:                                               ; preds = %70, %50
  %56 = load %struct.message*, %struct.message** %3, align 8
  %57 = load %struct.message*, %struct.message** @message, align 8
  %58 = load i64, i64* @msgCount, align 8
  %59 = getelementptr inbounds %struct.message, %struct.message* %57, i64 %58
  %60 = icmp ult %struct.message* %56, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %55
  %62 = load %struct.message*, %struct.message** %3, align 8
  %63 = getelementptr inbounds %struct.message, %struct.message* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @MREAD, align 4
  %66 = and i32 %64, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %73

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.message*, %struct.message** %3, align 8
  %72 = getelementptr inbounds %struct.message, %struct.message* %71, i32 1
  store %struct.message* %72, %struct.message** %3, align 8
  br label %55

73:                                               ; preds = %68, %55
  br label %74

74:                                               ; preds = %73, %44
  %75 = load %struct.message*, %struct.message** %3, align 8
  %76 = load %struct.message*, %struct.message** @message, align 8
  %77 = load i64, i64* @msgCount, align 8
  %78 = getelementptr inbounds %struct.message, %struct.message* %76, i64 %77
  %79 = icmp ult %struct.message* %75, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %74
  %81 = load %struct.message*, %struct.message** %3, align 8
  %82 = load %struct.message*, %struct.message** @message, align 8
  %83 = getelementptr inbounds %struct.message, %struct.message* %82, i64 0
  %84 = ptrtoint %struct.message* %81 to i64
  %85 = ptrtoint %struct.message* %83 to i64
  %86 = sub i64 %84, %85
  %87 = sdiv exact i64 %86, 4
  %88 = add nsw i64 %87, 1
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %6, align 4
  br label %93

90:                                               ; preds = %74
  %91 = load i32, i32* %2, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %90, %80
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %94 = load %struct.message*, %struct.message** @message, align 8
  %95 = getelementptr inbounds %struct.message, %struct.message* %94, i64 0
  store %struct.message* %95, %struct.message** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %143, %93
  %97 = load %struct.message*, %struct.message** %3, align 8
  %98 = load %struct.message*, %struct.message** @message, align 8
  %99 = load i64, i64* @msgCount, align 8
  %100 = getelementptr inbounds %struct.message, %struct.message* %98, i64 %99
  %101 = icmp ult %struct.message* %97, %100
  br i1 %101, label %102, label %146

102:                                              ; preds = %96
  %103 = load %struct.message*, %struct.message** %3, align 8
  %104 = getelementptr inbounds %struct.message, %struct.message* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @MNEW, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %109, %102
  %113 = load %struct.message*, %struct.message** %3, align 8
  %114 = getelementptr inbounds %struct.message, %struct.message* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @MREAD, align 4
  %117 = and i32 %115, %116
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %112
  %120 = load i32, i32* %4, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %119, %112
  %123 = load %struct.message*, %struct.message** %3, align 8
  %124 = getelementptr inbounds %struct.message, %struct.message* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @MDELETED, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %122
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %7, align 4
  br label %132

132:                                              ; preds = %129, %122
  %133 = load %struct.message*, %struct.message** %3, align 8
  %134 = getelementptr inbounds %struct.message, %struct.message* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @MSAVED, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %132
  %140 = load i32, i32* %8, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %8, align 4
  br label %142

142:                                              ; preds = %139, %132
  br label %143

143:                                              ; preds = %142
  %144 = load %struct.message*, %struct.message** %3, align 8
  %145 = getelementptr inbounds %struct.message, %struct.message* %144, i32 1
  store %struct.message* %145, %struct.message** %3, align 8
  br label %96

146:                                              ; preds = %96
  %147 = load i8*, i8** @mailname, align 8
  store i8* %147, i8** %12, align 8
  %148 = sub i64 %15, 1
  %149 = trunc i64 %148 to i32
  %150 = call i64 @getfold(i8* %17, i32 %149)
  %151 = icmp sge i64 %150, 0
  br i1 %151, label %152, label %166

152:                                              ; preds = %146
  %153 = call i32 @strcat(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %154 = load i8*, i8** @mailname, align 8
  %155 = call i32 @strlen(i8* %17)
  %156 = call i64 @strncmp(i8* %17, i8* %154, i32 %155)
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %152
  %159 = trunc i64 %20 to i32
  %160 = load i8*, i8** @mailname, align 8
  %161 = call i32 @strlen(i8* %17)
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  %164 = call i32 @snprintf(i8* %21, i32 %159, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %163)
  store i8* %21, i8** %12, align 8
  br label %165

165:                                              ; preds = %158, %152
  br label %166

166:                                              ; preds = %165, %146
  %167 = load i8*, i8** %12, align 8
  %168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %167)
  %169 = load i64, i64* @msgCount, align 8
  %170 = icmp eq i64 %169, 1
  br i1 %170, label %171, label %173

171:                                              ; preds = %166
  %172 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %176

173:                                              ; preds = %166
  %174 = load i64, i64* @msgCount, align 8
  %175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i64 %174)
  br label %176

176:                                              ; preds = %173, %171
  %177 = load i32, i32* %5, align 4
  %178 = icmp sgt i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %176
  %180 = load i32, i32* %5, align 4
  %181 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %180)
  br label %182

182:                                              ; preds = %179, %176
  %183 = load i32, i32* %4, align 4
  %184 = load i32, i32* %5, align 4
  %185 = sub nsw i32 %183, %184
  %186 = icmp sgt i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %182
  %188 = load i32, i32* %4, align 4
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %188)
  br label %190

190:                                              ; preds = %187, %182
  %191 = load i32, i32* %7, align 4
  %192 = icmp sgt i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %190
  %194 = load i32, i32* %7, align 4
  %195 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %194)
  br label %196

196:                                              ; preds = %193, %190
  %197 = load i32, i32* %8, align 4
  %198 = icmp sgt i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = load i32, i32* %8, align 4
  %201 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %200)
  br label %202

202:                                              ; preds = %199, %196
  %203 = load i64, i64* @readonly, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %202
  %206 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  br label %207

207:                                              ; preds = %205, %202
  %208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %209 = load i32, i32* %6, align 4
  %210 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %210)
  ret i32 %209
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @getfold(i8*, i32) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
