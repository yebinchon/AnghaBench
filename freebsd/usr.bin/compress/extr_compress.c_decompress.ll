; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/compress/extr_compress.c_decompress.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/compress/extr_compress.c_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@force = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @decompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decompress(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.stat, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [1024 x i32], align 16
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @stat(i8* %15, %struct.stat* %8)
  %17 = icmp ne i64 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* @force, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @S_ISREG(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @permission(i8* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  br label %168

35:                                               ; preds = %30, %25, %22, %3
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @S_ISREG(i32 %40)
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %38, %35
  %44 = phi i1 [ true, %35 ], [ %42, %38 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %13, align 4
  store i32 %45, i32* %12, align 4
  store i32* null, i32** %10, align 8
  store i32* null, i32** %9, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32* @zopen(i8* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %47)
  store i32* %48, i32** %9, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @cwarn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  br label %168

53:                                               ; preds = %43
  %54 = load i8*, i8** %4, align 8
  %55 = call i64 @stat(i8* %54, %struct.stat* %8)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @cwarn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  br label %150

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @S_ISREG(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  store i32 0, i32* %12, align 4
  br label %66

66:                                               ; preds = %65, %60
  %67 = getelementptr inbounds [1024 x i32], [1024 x i32]* %14, i64 0, i64 0
  %68 = load i32*, i32** %9, align 8
  %69 = call i64 @fread(i32* %67, i32 1, i32 4096, i32* %68)
  store i64 %69, i64* %7, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 @cwarn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %72)
  %74 = load i32*, i32** %9, align 8
  %75 = call i64 @fclose(i32* %74)
  br label %168

76:                                               ; preds = %66
  %77 = load i8*, i8** %5, align 8
  %78 = call i32* @fopen(i8* %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %78, i32** %10, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %90, label %80

80:                                               ; preds = %76
  %81 = load i64, i64* %7, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %101

83:                                               ; preds = %80
  %84 = getelementptr inbounds [1024 x i32], [1024 x i32]* %14, i64 0, i64 0
  %85 = load i64, i64* %7, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = call i64 @fwrite(i32* %84, i32 1, i64 %85, i32* %86)
  %88 = load i64, i64* %7, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %83, %76
  %91 = load i8*, i8** %5, align 8
  %92 = call i32 @cwarn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %91)
  %93 = load i32*, i32** %10, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i32*, i32** %10, align 8
  %97 = call i64 @fclose(i32* %96)
  br label %98

98:                                               ; preds = %95, %90
  %99 = load i32*, i32** %9, align 8
  %100 = call i64 @fclose(i32* %99)
  br label %168

101:                                              ; preds = %83, %80
  br label %102

102:                                              ; preds = %117, %101
  %103 = getelementptr inbounds [1024 x i32], [1024 x i32]* %14, i64 0, i64 0
  %104 = load i32*, i32** %9, align 8
  %105 = call i64 @fread(i32* %103, i32 1, i32 4096, i32* %104)
  store i64 %105, i64* %7, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %102
  %108 = getelementptr inbounds [1024 x i32], [1024 x i32]* %14, i64 0, i64 0
  %109 = load i64, i64* %7, align 8
  %110 = load i32*, i32** %10, align 8
  %111 = call i64 @fwrite(i32* %108, i32 1, i64 %109, i32* %110)
  %112 = load i64, i64* %7, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = load i8*, i8** %5, align 8
  %116 = call i32 @cwarn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %115)
  br label %150

117:                                              ; preds = %107
  br label %102

118:                                              ; preds = %102
  %119 = load i32*, i32** %9, align 8
  %120 = call i64 @ferror(i32* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %118
  %123 = load i32*, i32** %9, align 8
  %124 = call i64 @fclose(i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %122, %118
  %127 = load i8*, i8** %4, align 8
  %128 = call i32 @cwarn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %127)
  br label %150

129:                                              ; preds = %122
  store i32* null, i32** %9, align 8
  %130 = load i32*, i32** %10, align 8
  %131 = call i64 @fclose(i32* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = load i8*, i8** %5, align 8
  %135 = call i32 @cwarn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %134)
  br label %150

136:                                              ; preds = %129
  %137 = load i32, i32* %12, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %136
  %140 = load i8*, i8** %5, align 8
  %141 = call i32 @setfile(i8* %140, %struct.stat* %8)
  %142 = load i8*, i8** %4, align 8
  %143 = call i64 @unlink(i8* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %139
  %146 = load i8*, i8** %4, align 8
  %147 = call i32 @cwarn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %146)
  br label %148

148:                                              ; preds = %145, %139
  br label %149

149:                                              ; preds = %148, %136
  br label %168

150:                                              ; preds = %133, %126, %114, %57
  %151 = load i32*, i32** %10, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %162

153:                                              ; preds = %150
  %154 = load i32, i32* %13, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load i8*, i8** %5, align 8
  %158 = call i64 @unlink(i8* %157)
  br label %159

159:                                              ; preds = %156, %153
  %160 = load i32*, i32** %10, align 8
  %161 = call i64 @fclose(i32* %160)
  br label %162

162:                                              ; preds = %159, %150
  %163 = load i32*, i32** %9, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %165, label %168

165:                                              ; preds = %162
  %166 = load i32*, i32** %9, align 8
  %167 = call i64 @fclose(i32* %166)
  br label %168

168:                                              ; preds = %34, %50, %71, %98, %149, %165, %162
  ret void
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @permission(i8*) #1

declare dso_local i32* @zopen(i8*, i8*, i32) #1

declare dso_local i32 @cwarn(i8*, i8*) #1

declare dso_local i64 @fread(i32*, i32, i32, i32*) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fwrite(i32*, i32, i64, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @setfile(i8*, %struct.stat*) #1

declare dso_local i64 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
