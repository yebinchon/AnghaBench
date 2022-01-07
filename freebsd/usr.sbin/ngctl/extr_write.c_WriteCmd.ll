; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ngctl/extr_write.c_WriteCmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ngctl/extr_write.c_WriteCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_ng = type { i64, i32, i32 }
%struct.sockaddr = type { i32 }

@BUF_SIZE = common dso_local global i32 0, align 4
@CMDRTN_USAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"can't read file \22%s\22\00", align 1
@CMDRTN_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"file \22%s\22 is empty\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"invalid byte \22%s\22\00", align 1
@AF_NETGRAPH = common dso_local global i32 0, align 4
@dsock = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"writing to hook \22%s\22\00", align 1
@CMDRTN_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @WriteCmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WriteCmd(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [64 x i32], align 16
  %7 = alloca %struct.sockaddr_ng*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %17 = bitcast i32* %16 to %struct.sockaddr_ng*
  store %struct.sockaddr_ng* %17, %struct.sockaddr_ng** %7, align 8
  %18 = load i32, i32* @BUF_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %8, align 8
  %21 = alloca i64, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 3
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @CMDRTN_USAGE, align 4
  store i32 %25, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %159

26:                                               ; preds = %2
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %10, align 8
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 2
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %79

35:                                               ; preds = %26
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 4
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @CMDRTN_USAGE, align 4
  store i32 %39, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %159

40:                                               ; preds = %35
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 3
  %43 = load i8*, i8** %42, align 8
  %44 = call i32* @fopen(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %44, i32** %11, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 3
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  %51 = load i32, i32* @CMDRTN_ERROR, align 4
  store i32 %51, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %159

52:                                               ; preds = %40
  %53 = mul nuw i64 8, %19
  %54 = trunc i64 %53 to i32
  %55 = load i32*, i32** %11, align 8
  %56 = call i32 @fread(i64* %21, i32 1, i32 %54, i32* %55)
  store i32 %56, i32* %12, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %52
  %59 = load i32*, i32** %11, align 8
  %60 = call i64 @ferror(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i8**, i8*** %5, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 3
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %65)
  br label %72

67:                                               ; preds = %58
  %68 = load i8**, i8*** %5, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 3
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @warnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %67, %62
  %73 = load i32*, i32** %11, align 8
  %74 = call i32 @fclose(i32* %73)
  %75 = load i32, i32* @CMDRTN_ERROR, align 4
  store i32 %75, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %159

76:                                               ; preds = %52
  %77 = load i32*, i32** %11, align 8
  %78 = call i32 @fclose(i32* %77)
  br label %130

79:                                               ; preds = %26
  store i32 2, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %80

80:                                               ; preds = %119, %79
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = mul nuw i64 8, %19
  %88 = icmp ult i64 %86, %87
  br label %89

89:                                               ; preds = %84, %80
  %90 = phi i1 [ false, %80 ], [ %88, %84 ]
  br i1 %90, label %91, label %124

91:                                               ; preds = %89
  %92 = load i8**, i8*** %5, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %92, i64 %94
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @sscanf(i8* %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %13)
  %98 = icmp ne i32 %97, 1
  br i1 %98, label %105, label %99

99:                                               ; preds = %91
  %100 = load i32, i32* %13, align 4
  %101 = icmp slt i32 %100, -128
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %13, align 4
  %104 = icmp sgt i32 %103, 255
  br i1 %104, label %105, label %113

105:                                              ; preds = %102, %99, %91
  %106 = load i8**, i8*** %5, align 8
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %106, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @warnx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %110)
  %112 = load i32, i32* @CMDRTN_ERROR, align 4
  store i32 %112, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %159

113:                                              ; preds = %102
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %21, i64 %117
  store i64 %115, i64* %118, align 8
  br label %119

119:                                              ; preds = %113
  %120 = load i32, i32* %14, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %14, align 4
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %12, align 4
  br label %80

124:                                              ; preds = %89
  %125 = load i32, i32* %12, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = load i32, i32* @CMDRTN_USAGE, align 4
  store i32 %128, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %159

129:                                              ; preds = %124
  br label %130

130:                                              ; preds = %129, %76
  %131 = load i8*, i8** %10, align 8
  %132 = call i64 @strlen(i8* %131)
  %133 = add nsw i64 3, %132
  %134 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %7, align 8
  %135 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  %136 = load i32, i32* @AF_NETGRAPH, align 4
  %137 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %7, align 8
  %138 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 4
  %139 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %7, align 8
  %140 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load i8*, i8** %10, align 8
  %143 = call i32 @strlcpy(i32 %141, i8* %142, i32 254)
  %144 = load i32, i32* @dsock, align 4
  %145 = load i32, i32* %12, align 4
  %146 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %7, align 8
  %147 = bitcast %struct.sockaddr_ng* %146 to %struct.sockaddr*
  %148 = load %struct.sockaddr_ng*, %struct.sockaddr_ng** %7, align 8
  %149 = getelementptr inbounds %struct.sockaddr_ng, %struct.sockaddr_ng* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @sendto(i32 %144, i64* %21, i32 %145, i32 0, %struct.sockaddr* %147, i64 %150)
  %152 = icmp eq i32 %151, -1
  br i1 %152, label %153, label %157

153:                                              ; preds = %130
  %154 = load i8*, i8** %10, align 8
  %155 = call i32 @warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %154)
  %156 = load i32, i32* @CMDRTN_ERROR, align 4
  store i32 %156, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %159

157:                                              ; preds = %130
  %158 = load i32, i32* @CMDRTN_OK, align 4
  store i32 %158, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %159

159:                                              ; preds = %157, %153, %127, %105, %72, %46, %38, %24
  %160 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %160)
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @warn(i8*, i8*) #2

declare dso_local i32 @fread(i64*, i32, i32, i32*) #2

declare dso_local i64 @ferror(i32*) #2

declare dso_local i32 @warnx(i8*, i8*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i32 @sendto(i32, i64*, i32, i32, %struct.sockaddr*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
