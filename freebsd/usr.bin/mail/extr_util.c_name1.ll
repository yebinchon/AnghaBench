; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_util.c_name1.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_util.c_name1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { i32 }

@LINESIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"sender\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"From\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"remote\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @name1(%struct.message* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.message*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.message* %0, %struct.message** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* @LINESIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load i32, i32* @LINESIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  store i32 1, i32* %12, align 4
  %21 = load %struct.message*, %struct.message** %4, align 8
  %22 = call i8* @hfield(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.message* %21)
  store i8* %22, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i8*, i8** %9, align 8
  store i8* %25, i8** %3, align 8
  store i32 1, i32* %13, align 4
  br label %182

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load %struct.message*, %struct.message** %4, align 8
  %31 = call i8* @hfield(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.message* %30)
  store i8* %31, i8** %9, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i8*, i8** %9, align 8
  store i8* %34, i8** %3, align 8
  store i32 1, i32* %13, align 4
  br label %182

35:                                               ; preds = %29, %26
  %36 = load %struct.message*, %struct.message** %4, align 8
  %37 = call i32* @setinput(%struct.message* %36)
  store i32* %37, i32** %11, align 8
  %38 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 0, i8* %38, align 16
  %39 = load i32*, i32** %11, align 8
  %40 = load i32, i32* @LINESIZE, align 4
  %41 = call i64 @readline(i32* %39, i8* %20, i32 %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = call i8* @savestr(i8* %17)
  store i8* %44, i8** %3, align 8
  store i32 1, i32* %13, align 4
  br label %182

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %165, %45
  store i8* %20, i8** %9, align 8
  br label %47

47:                                               ; preds = %60, %46
  %48 = load i8*, i8** %9, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i8*, i8** %9, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 32
  br label %57

57:                                               ; preds = %52, %47
  %58 = phi i1 [ false, %47 ], [ %56, %52 ]
  br i1 %58, label %59, label %63

59:                                               ; preds = %57
  br label %60

60:                                               ; preds = %59
  %61 = load i8*, i8** %9, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %9, align 8
  br label %47

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %77, %63
  %65 = load i8*, i8** %9, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 32
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load i8*, i8** %9, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 9
  br label %74

74:                                               ; preds = %69, %64
  %75 = phi i1 [ true, %64 ], [ %73, %69 ]
  br i1 %75, label %76, label %80

76:                                               ; preds = %74
  br label %77

77:                                               ; preds = %76
  %78 = load i8*, i8** %9, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %9, align 8
  br label %64

80:                                               ; preds = %74
  %81 = call i64 @strlen(i8* %17)
  %82 = getelementptr inbounds i8, i8* %17, i64 %81
  store i8* %82, i8** %10, align 8
  br label %83

83:                                               ; preds = %107, %80
  %84 = load i8*, i8** %9, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %105

88:                                               ; preds = %83
  %89 = load i8*, i8** %9, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 32
  br i1 %92, label %93, label %105

93:                                               ; preds = %88
  %94 = load i8*, i8** %9, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 9
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load i8*, i8** %10, align 8
  %100 = load i32, i32* @LINESIZE, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %17, i64 %101
  %103 = getelementptr inbounds i8, i8* %102, i64 -1
  %104 = icmp ult i8* %99, %103
  br label %105

105:                                              ; preds = %98, %93, %88, %83
  %106 = phi i1 [ false, %93 ], [ false, %88 ], [ false, %83 ], [ %104, %98 ]
  br i1 %106, label %107, label %113

107:                                              ; preds = %105
  %108 = load i8*, i8** %9, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %9, align 8
  %110 = load i8, i8* %108, align 1
  %111 = load i8*, i8** %10, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %10, align 8
  store i8 %110, i8* %111, align 1
  br label %83

113:                                              ; preds = %105
  %114 = load i8*, i8** %10, align 8
  store i8 0, i8* %114, align 1
  %115 = load i32*, i32** %11, align 8
  %116 = load i32, i32* @LINESIZE, align 4
  %117 = call i64 @readline(i32* %115, i8* %20, i32 %116)
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = call i8* @savestr(i8* %17)
  store i8* %120, i8** %3, align 8
  store i32 1, i32* %13, align 4
  br label %182

121:                                              ; preds = %113
  %122 = call i8* @strchr(i8* %20, i8 signext 70)
  store i8* %122, i8** %9, align 8
  %123 = icmp eq i8* %122, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = call i8* @savestr(i8* %17)
  store i8* %125, i8** %3, align 8
  store i32 1, i32* %13, align 4
  br label %182

126:                                              ; preds = %121
  %127 = load i8*, i8** %9, align 8
  %128 = call i64 @strncmp(i8* %127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = call i8* @savestr(i8* %17)
  store i8* %131, i8** %3, align 8
  store i32 1, i32* %13, align 4
  br label %182

132:                                              ; preds = %126
  br label %133

133:                                              ; preds = %177, %132
  %134 = load i8*, i8** %9, align 8
  %135 = call i8* @strchr(i8* %134, i8 signext 114)
  store i8* %135, i8** %9, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %180

137:                                              ; preds = %133
  %138 = load i8*, i8** %9, align 8
  %139 = call i64 @strncmp(i8* %138, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %177

141:                                              ; preds = %137
  %142 = load i8*, i8** %9, align 8
  %143 = call i8* @strchr(i8* %142, i8 signext 102)
  store i8* %143, i8** %9, align 8
  %144 = icmp eq i8* %143, null
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  br label %180

146:                                              ; preds = %141
  %147 = load i8*, i8** %9, align 8
  %148 = call i64 @strncmp(i8* %147, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  br label %180

151:                                              ; preds = %146
  %152 = load i8*, i8** %9, align 8
  %153 = call i8* @strchr(i8* %152, i8 signext 32)
  store i8* %153, i8** %9, align 8
  %154 = icmp eq i8* %153, null
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  br label %180

156:                                              ; preds = %151
  %157 = load i8*, i8** %9, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %9, align 8
  %159 = load i32, i32* %12, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  store i8* %17, i8** %10, align 8
  store i32 0, i32* %12, align 4
  br label %165

162:                                              ; preds = %156
  %163 = call i8* @strrchr(i8* %17, i8 signext 33)
  %164 = getelementptr inbounds i8, i8* %163, i64 1
  store i8* %164, i8** %10, align 8
  br label %165

165:                                              ; preds = %162, %161
  %166 = load i8*, i8** %10, align 8
  %167 = load i8*, i8** %9, align 8
  %168 = load i8*, i8** %10, align 8
  %169 = ptrtoint i8* %168 to i64
  %170 = ptrtoint i8* %17 to i64
  %171 = sub i64 %169, %170
  %172 = sub i64 %15, %171
  %173 = sub i64 %172, 1
  %174 = trunc i64 %173 to i32
  %175 = call i32 @strlcpy(i8* %166, i8* %167, i32 %174)
  %176 = call i32 @strcat(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %46

177:                                              ; preds = %137
  %178 = load i8*, i8** %9, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %179, i8** %9, align 8
  br label %133

180:                                              ; preds = %155, %150, %145, %133
  %181 = call i8* @savestr(i8* %17)
  store i8* %181, i8** %3, align 8
  store i32 1, i32* %13, align 4
  br label %182

182:                                              ; preds = %180, %130, %124, %119, %43, %33, %24
  %183 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %183)
  %184 = load i8*, i8** %3, align 8
  ret i8* %184
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @hfield(i8*, %struct.message*) #2

declare dso_local i32* @setinput(%struct.message*) #2

declare dso_local i64 @readline(i32*, i8*, i32) #2

declare dso_local i8* @savestr(i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @strcat(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
