; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/unzip/extr_unzip.c_extract2fd.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/unzip/extr_unzip.c_extract2fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }

@a_opt = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@tty = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c" %c\08\08\00", align 1
@spinner = common dso_local global i32* null, align 8
@buffer = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"write('%s')\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"%s may be corrupted due to weak text file detection heuristic\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*, i8*, i32)* @extract2fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract2fd(%struct.archive* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.archive*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* @a_opt, align 4
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %14, align 4
  br label %16

16:                                               ; preds = %179, %3
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @STDOUT_FILENO, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  %21 = load i64, i64* @tty, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %20
  %24 = load i32, i32* %14, align 4
  %25 = srem i32 %24, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load i32*, i32** @spinner, align 8
  %29 = load i32, i32* %14, align 4
  %30 = sdiv i32 %29, 4
  %31 = sext i32 %30 to i64
  %32 = urem i64 %31, 8
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @info(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %27, %23, %20
  br label %37

37:                                               ; preds = %36, %16
  %38 = load %struct.archive*, %struct.archive** %4, align 8
  %39 = load i8*, i8** @buffer, align 8
  %40 = call i64 @archive_read_data(%struct.archive* %38, i8* %39, i32 8)
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %10, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @ac(i64 %44)
  br label %46

46:                                               ; preds = %43, %37
  %47 = load i32, i32* @a_opt, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %46
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %49
  %53 = load i64, i64* %10, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %52
  %56 = load i8*, i8** @buffer, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 10
  br i1 %60, label %61, label %69

61:                                               ; preds = %55, %52
  %62 = load i32, i32* %6, align 4
  %63 = call i32 (i32, ...) @write(i32 %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %64 = icmp ne i32 %63, 1
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 @error(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %65, %61
  br label %69

69:                                               ; preds = %68, %55
  store i32 0, i32* %7, align 4
  br label %70

70:                                               ; preds = %69, %49, %46
  %71 = load i64, i64* %10, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %182

74:                                               ; preds = %70
  %75 = load i8*, i8** @buffer, align 8
  %76 = load i64, i64* %10, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8* %77, i8** %13, align 8
  %78 = load i32, i32* @a_opt, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %74
  %81 = load i32, i32* %14, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load i8*, i8** @buffer, align 8
  %85 = load i64, i64* %10, align 8
  %86 = call i64 @check_binary(i8* %84, i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i32 0, i32* %8, align 4
  br label %89

89:                                               ; preds = %88, %83
  br label %90

90:                                               ; preds = %89, %80, %74
  %91 = load i32, i32* @a_opt, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %108, label %96

96:                                               ; preds = %93, %90
  %97 = load i32, i32* %6, align 4
  %98 = load i8*, i8** @buffer, align 8
  %99 = load i64, i64* %10, align 8
  %100 = call i32 (i32, ...) @write(i32 %97, i8* %98, i64 %99)
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* %10, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %96
  %105 = load i8*, i8** %5, align 8
  %106 = call i32 @error(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %105)
  br label %107

107:                                              ; preds = %104, %96
  br label %179

108:                                              ; preds = %93
  %109 = load i8*, i8** @buffer, align 8
  store i8* %109, i8** %11, align 8
  br label %110

110:                                              ; preds = %175, %108
  %111 = load i8*, i8** %11, align 8
  %112 = load i8*, i8** %13, align 8
  %113 = icmp ult i8* %111, %112
  br i1 %113, label %114, label %178

114:                                              ; preds = %110
  %115 = load i8*, i8** %11, align 8
  store i8* %115, i8** %12, align 8
  br label %116

116:                                              ; preds = %152, %114
  %117 = load i8*, i8** %12, align 8
  %118 = load i8*, i8** %13, align 8
  %119 = icmp ult i8* %117, %118
  br i1 %119, label %120, label %155

120:                                              ; preds = %116
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %131, label %123

123:                                              ; preds = %120
  %124 = load i8*, i8** %12, align 8
  %125 = load i8, i8* %124, align 1
  %126 = call i64 @BYTE_IS_BINARY(i8 zeroext %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load i8*, i8** %5, align 8
  %130 = call i32 @warningx(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i8* %129)
  store i32 1, i32* %9, align 4
  br label %131

131:                                              ; preds = %128, %123, %120
  %132 = load i8*, i8** %12, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 0
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = icmp ne i32 %135, 13
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  br label %152

138:                                              ; preds = %131
  %139 = load i8*, i8** %12, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 1
  %141 = load i8*, i8** %13, align 8
  %142 = icmp eq i8* %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  store i32 1, i32* %7, align 4
  br label %155

144:                                              ; preds = %138
  %145 = load i8*, i8** %12, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 1
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = icmp eq i32 %148, 10
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  br label %155

151:                                              ; preds = %144
  br label %152

152:                                              ; preds = %151, %137
  %153 = load i8*, i8** %12, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %12, align 8
  br label %116

155:                                              ; preds = %150, %143, %116
  %156 = load i32, i32* %6, align 4
  %157 = load i8*, i8** %11, align 8
  %158 = load i8*, i8** %12, align 8
  %159 = load i8*, i8** %11, align 8
  %160 = ptrtoint i8* %158 to i64
  %161 = ptrtoint i8* %159 to i64
  %162 = sub i64 %160, %161
  %163 = call i32 (i32, ...) @write(i32 %156, i8* %157, i64 %162)
  %164 = sext i32 %163 to i64
  %165 = load i8*, i8** %12, align 8
  %166 = load i8*, i8** %11, align 8
  %167 = ptrtoint i8* %165 to i64
  %168 = ptrtoint i8* %166 to i64
  %169 = sub i64 %167, %168
  %170 = icmp ne i64 %164, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %155
  %172 = load i8*, i8** %5, align 8
  %173 = call i32 @error(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %172)
  br label %174

174:                                              ; preds = %171, %155
  br label %175

175:                                              ; preds = %174
  %176 = load i8*, i8** %12, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 1
  store i8* %177, i8** %11, align 8
  br label %110

178:                                              ; preds = %110
  br label %179

179:                                              ; preds = %178, %107
  %180 = load i32, i32* %14, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %14, align 4
  br label %16

182:                                              ; preds = %73
  %183 = load i32, i32* %8, align 4
  ret i32 %183
}

declare dso_local i32 @info(i8*, i32) #1

declare dso_local i64 @archive_read_data(%struct.archive*, i8*, i32) #1

declare dso_local i32 @ac(i64) #1

declare dso_local i32 @write(i32, ...) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i64 @check_binary(i8*, i64) #1

declare dso_local i64 @BYTE_IS_BINARY(i8 zeroext) #1

declare dso_local i32 @warningx(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
