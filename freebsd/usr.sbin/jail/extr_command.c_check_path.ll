; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/jail/extr_command.c_check_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/jail/extr_command.c_check_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfjail = type { i32* }
%struct.stat = type { i64, i32 }
%struct.statfs = type { i8*, i32 }

@.str = private unnamed_addr constant [33 x i8] c"%s: %s: not an absolute pathname\00", align 1
@KP_PATH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"%s: %s: %s\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"%s: %s is a symbolic link\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"%s: %s: not a mount point\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"%s: %s: not a %s mount\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfjail*, i8*, i8*, i32, i8*)* @check_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_path(%struct.cfjail* %0, i8* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cfjail*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.stat, align 8
  %13 = alloca %struct.stat, align 8
  %14 = alloca %struct.statfs, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store %struct.cfjail* %0, %struct.cfjail** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 47
  br i1 %23, label %24, label %29

24:                                               ; preds = %5
  %25 = load %struct.cfjail*, %struct.cfjail** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 (%struct.cfjail*, i8*, i8*, i8*, ...) @jail_warnx(%struct.cfjail* %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %26, i8* %27)
  store i32 -1, i32* %6, align 4
  br label %173

29:                                               ; preds = %5
  %30 = load %struct.cfjail*, %struct.cfjail** %7, align 8
  %31 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @KP_PATH, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @string_param(i32 %35)
  store i8* %36, i8** %17, align 8
  %37 = load i8*, i8** %17, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8
  br label %40

40:                                               ; preds = %39, %29
  %41 = load i8*, i8** %17, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %18, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i8*, i8** %17, align 8
  %46 = load i64, i64* %18, align 8
  %47 = call i32 @strncmp(i8* %44, i8* %45, i64 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %117, label %49

49:                                               ; preds = %40
  %50 = load i8*, i8** %9, align 8
  %51 = load i64, i64* %18, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 47
  br i1 %55, label %56, label %117

56:                                               ; preds = %49
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @strlen(i8* %57)
  %59 = add nsw i32 %58, 1
  %60 = call i8* @alloca(i32 %59)
  store i8* %60, i8** %15, align 8
  %61 = load i8*, i8** %15, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @strcpy(i8* %61, i8* %62)
  %64 = load i8*, i8** %15, align 8
  %65 = load i64, i64* %18, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8* %66, i8** %16, align 8
  br label %67

67:                                               ; preds = %115, %56
  %68 = load i8*, i8** %16, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %116

70:                                               ; preds = %67
  %71 = load i8*, i8** %16, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = call i8* @strchr(i8* %72, i8 signext 47)
  store i8* %73, i8** %16, align 8
  %74 = load i8*, i8** %16, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i8*, i8** %16, align 8
  store i8 0, i8* %77, align 1
  br label %78

78:                                               ; preds = %76, %70
  %79 = load i8*, i8** %15, align 8
  %80 = call i64 @lstat(i8* %79, %struct.stat* %12)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %78
  %83 = load i64, i64* @errno, align 8
  %84 = load i64, i64* @ENOENT, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i8*, i8** %16, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %89
  br label %116

93:                                               ; preds = %89, %86, %82
  %94 = load %struct.cfjail*, %struct.cfjail** %7, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = load i8*, i8** %15, align 8
  %97 = load i64, i64* @errno, align 8
  %98 = call i8* @strerror(i64 %97)
  %99 = call i32 (%struct.cfjail*, i8*, i8*, i8*, ...) @jail_warnx(%struct.cfjail* %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %95, i8* %96, i8* %98)
  store i32 -1, i32* %6, align 4
  br label %173

100:                                              ; preds = %78
  %101 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @S_ISLNK(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load %struct.cfjail*, %struct.cfjail** %7, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = load i8*, i8** %15, align 8
  %109 = call i32 (%struct.cfjail*, i8*, i8*, i8*, ...) @jail_warnx(%struct.cfjail* %106, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %107, i8* %108)
  store i32 -1, i32* %6, align 4
  br label %173

110:                                              ; preds = %100
  %111 = load i8*, i8** %16, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = load i8*, i8** %16, align 8
  store i8 47, i8* %114, align 1
  br label %115

115:                                              ; preds = %113, %110
  br label %67

116:                                              ; preds = %92, %67
  br label %117

117:                                              ; preds = %116, %49, %40
  %118 = load i8*, i8** %11, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %172

120:                                              ; preds = %117
  %121 = load i8*, i8** %9, align 8
  %122 = call i64 @stat(i8* %121, %struct.stat* %12)
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = load i8*, i8** %9, align 8
  %126 = call i64 @statfs(i8* %125, %struct.statfs* %14)
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %124, %120
  %129 = load %struct.cfjail*, %struct.cfjail** %7, align 8
  %130 = load i8*, i8** %8, align 8
  %131 = load i8*, i8** %9, align 8
  %132 = load i64, i64* @errno, align 8
  %133 = call i8* @strerror(i64 %132)
  %134 = call i32 (%struct.cfjail*, i8*, i8*, i8*, ...) @jail_warnx(%struct.cfjail* %129, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %130, i8* %131, i8* %133)
  store i32 -1, i32* %6, align 4
  br label %173

135:                                              ; preds = %124
  %136 = getelementptr inbounds %struct.statfs, %struct.statfs* %14, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = call i64 @stat(i8* %137, %struct.stat* %13)
  %139 = icmp slt i64 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %135
  %141 = load %struct.cfjail*, %struct.cfjail** %7, align 8
  %142 = load i8*, i8** %8, align 8
  %143 = getelementptr inbounds %struct.statfs, %struct.statfs* %14, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = load i64, i64* @errno, align 8
  %146 = call i8* @strerror(i64 %145)
  %147 = call i32 (%struct.cfjail*, i8*, i8*, i8*, ...) @jail_warnx(%struct.cfjail* %141, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %142, i8* %144, i8* %146)
  store i32 -1, i32* %6, align 4
  br label %173

148:                                              ; preds = %135
  %149 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %150, %152
  br i1 %153, label %154, label %159

154:                                              ; preds = %148
  %155 = load %struct.cfjail*, %struct.cfjail** %7, align 8
  %156 = load i8*, i8** %8, align 8
  %157 = load i8*, i8** %9, align 8
  %158 = call i32 (%struct.cfjail*, i8*, i8*, i8*, ...) @jail_warnx(%struct.cfjail* %155, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %156, i8* %157)
  store i32 -1, i32* %6, align 4
  br label %173

159:                                              ; preds = %148
  %160 = getelementptr inbounds %struct.statfs, %struct.statfs* %14, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load i8*, i8** %11, align 8
  %163 = call i64 @strcmp(i32 %161, i8* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %159
  %166 = load %struct.cfjail*, %struct.cfjail** %7, align 8
  %167 = load i8*, i8** %8, align 8
  %168 = load i8*, i8** %9, align 8
  %169 = load i8*, i8** %11, align 8
  %170 = call i32 (%struct.cfjail*, i8*, i8*, i8*, ...) @jail_warnx(%struct.cfjail* %166, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %167, i8* %168, i8* %169)
  store i32 -1, i32* %6, align 4
  br label %173

171:                                              ; preds = %159
  br label %172

172:                                              ; preds = %171, %117
  store i32 0, i32* %6, align 4
  br label %173

173:                                              ; preds = %172, %165, %154, %140, %128, %105, %93, %24
  %174 = load i32, i32* %6, align 4
  ret i32 %174
}

declare dso_local i32 @jail_warnx(%struct.cfjail*, i8*, i8*, i8*, ...) #1

declare dso_local i8* @string_param(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @statfs(i8*, %struct.statfs*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
