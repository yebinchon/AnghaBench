; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/tzsetup/extr_tzsetup.c_install_zoneinfo_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/tzsetup/extr_tzsetup.c_install_zoneinfo_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@SILLY_BUFFER_SIZE = common dso_local global i32 0, align 4
@path_localtime = common dso_local global i8* null, align 8
@reallydoit = common dso_local global i64 0, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Could not open %s: %s\00", align 1
@errno = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@DITEM_FAILURE = common dso_local global i32 0, align 4
@DITEM_RECREATE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"Could not delete %s: %s\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Error copying %s to %s %s\00", align 1
@R_OK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"Cannot access %s: %s\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Cannot create symbolic link %s to %s: %s\00", align 1
@DITEM_LEAVE_MENU = common dso_local global i32 0, align 4
@usedialog = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @install_zoneinfo_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @install_zoneinfo_file(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [64 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.stat, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %14 = load i32, i32* @SILLY_BUFFER_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load i8*, i8** @path_localtime, align 8
  %19 = call i64 @lstat(i8* %18, %struct.stat* %8)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 1, i32* %12, align 4
  br label %30

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @S_ISLNK(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, i32* %12, align 4
  br label %29

28:                                               ; preds = %22
  store i32 1, i32* %12, align 4
  br label %29

29:                                               ; preds = %28, %27
  br label %30

30:                                               ; preds = %29, %21
  %31 = load i64, i64* @reallydoit, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %198

33:                                               ; preds = %30
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %140

36:                                               ; preds = %33
  %37 = load i8*, i8** %3, align 8
  %38 = load i32, i32* @O_RDONLY, align 4
  %39 = call i32 @open(i8* %37, i32 %38, i32 0)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %36
  %43 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %44 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %43, i32 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %45 = trunc i64 %15 to i32
  %46 = load i8*, i8** %3, align 8
  %47 = load i64, i64* @errno, align 8
  %48 = call i8* @strerror(i64 %47)
  %49 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %17, i32 %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %46, i8* %48)
  %50 = load i32, i32* @stderr, align 4
  %51 = call i32 @fprintf(i32 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %17)
  %52 = load i32, i32* @DITEM_FAILURE, align 4
  %53 = load i32, i32* @DITEM_RECREATE, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %200

55:                                               ; preds = %36
  %56 = load i8*, i8** @path_localtime, align 8
  %57 = call i64 @unlink(i8* %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %55
  %60 = load i64, i64* @errno, align 8
  %61 = load i64, i64* @ENOENT, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %59
  %64 = trunc i64 %15 to i32
  %65 = load i8*, i8** @path_localtime, align 8
  %66 = load i64, i64* @errno, align 8
  %67 = call i8* @strerror(i64 %66)
  %68 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %17, i32 %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %65, i8* %67)
  %69 = load i32, i32* @stderr, align 4
  %70 = call i32 @fprintf(i32 %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %17)
  %71 = load i32, i32* @DITEM_FAILURE, align 4
  %72 = load i32, i32* @DITEM_RECREATE, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %200

74:                                               ; preds = %59, %55
  %75 = load i8*, i8** @path_localtime, align 8
  %76 = load i32, i32* @O_CREAT, align 4
  %77 = load i32, i32* @O_EXCL, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @O_WRONLY, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @S_IRUSR, align 4
  %82 = load i32, i32* @S_IRGRP, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @S_IROTH, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @open(i8* %75, i32 %80, i32 %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %74
  %90 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %91 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %90, i32 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %92 = trunc i64 %15 to i32
  %93 = load i8*, i8** @path_localtime, align 8
  %94 = load i64, i64* @errno, align 8
  %95 = call i8* @strerror(i64 %94)
  %96 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %17, i32 %92, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %93, i8* %95)
  %97 = load i32, i32* @stderr, align 4
  %98 = call i32 @fprintf(i32 %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %17)
  %99 = load i32, i32* @DITEM_FAILURE, align 4
  %100 = load i32, i32* @DITEM_RECREATE, align 4
  %101 = or i32 %99, %100
  store i32 %101, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %200

102:                                              ; preds = %74
  br label %103

103:                                              ; preds = %115, %102
  %104 = load i32, i32* %10, align 4
  %105 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %106 = call i32 @read(i32 %104, i8* %105, i32 1024)
  store i32 %106, i32* %9, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %103
  %109 = load i32, i32* %11, align 4
  %110 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @write(i32 %109, i8* %110, i32 %111)
  store i32 %112, i32* %9, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %116

115:                                              ; preds = %108
  br label %103

116:                                              ; preds = %114, %103
  %117 = load i32, i32* %9, align 4
  %118 = icmp eq i32 %117, -1
  br i1 %118, label %119, label %135

119:                                              ; preds = %116
  %120 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %121 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %120, i32 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %122 = trunc i64 %15 to i32
  %123 = load i8*, i8** %3, align 8
  %124 = load i8*, i8** @path_localtime, align 8
  %125 = load i64, i64* @errno, align 8
  %126 = call i8* @strerror(i64 %125)
  %127 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %17, i32 %122, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %123, i8* %124, i8* %126)
  %128 = load i32, i32* @stderr, align 4
  %129 = call i32 @fprintf(i32 %128, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %17)
  %130 = load i8*, i8** @path_localtime, align 8
  %131 = call i64 @unlink(i8* %130)
  %132 = load i32, i32* @DITEM_FAILURE, align 4
  %133 = load i32, i32* @DITEM_RECREATE, align 4
  %134 = or i32 %132, %133
  store i32 %134, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %200

135:                                              ; preds = %116
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @close(i32 %136)
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @close(i32 %138)
  br label %197

140:                                              ; preds = %33
  %141 = load i8*, i8** %3, align 8
  %142 = load i32, i32* @R_OK, align 4
  %143 = call i64 @access(i8* %141, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %158

145:                                              ; preds = %140
  %146 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %147 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %146, i32 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %148 = trunc i64 %15 to i32
  %149 = load i8*, i8** %3, align 8
  %150 = load i64, i64* @errno, align 8
  %151 = call i8* @strerror(i64 %150)
  %152 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %17, i32 %148, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %149, i8* %151)
  %153 = load i32, i32* @stderr, align 4
  %154 = call i32 @fprintf(i32 %153, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %17)
  %155 = load i32, i32* @DITEM_FAILURE, align 4
  %156 = load i32, i32* @DITEM_RECREATE, align 4
  %157 = or i32 %155, %156
  store i32 %157, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %200

158:                                              ; preds = %140
  %159 = load i8*, i8** @path_localtime, align 8
  %160 = call i64 @unlink(i8* %159)
  %161 = icmp slt i64 %160, 0
  br i1 %161, label %162, label %177

162:                                              ; preds = %158
  %163 = load i64, i64* @errno, align 8
  %164 = load i64, i64* @ENOENT, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %177

166:                                              ; preds = %162
  %167 = trunc i64 %15 to i32
  %168 = load i8*, i8** @path_localtime, align 8
  %169 = load i64, i64* @errno, align 8
  %170 = call i8* @strerror(i64 %169)
  %171 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %17, i32 %167, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %168, i8* %170)
  %172 = load i32, i32* @stderr, align 4
  %173 = call i32 @fprintf(i32 %172, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %17)
  %174 = load i32, i32* @DITEM_FAILURE, align 4
  %175 = load i32, i32* @DITEM_RECREATE, align 4
  %176 = or i32 %174, %175
  store i32 %176, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %200

177:                                              ; preds = %162, %158
  %178 = load i8*, i8** %3, align 8
  %179 = load i8*, i8** @path_localtime, align 8
  %180 = call i64 @symlink(i8* %178, i8* %179)
  %181 = icmp slt i64 %180, 0
  br i1 %181, label %182, label %196

182:                                              ; preds = %177
  %183 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %184 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %183, i32 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %185 = trunc i64 %15 to i32
  %186 = load i8*, i8** @path_localtime, align 8
  %187 = load i8*, i8** %3, align 8
  %188 = load i64, i64* @errno, align 8
  %189 = call i8* @strerror(i64 %188)
  %190 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %17, i32 %185, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* %186, i8* %187, i8* %189)
  %191 = load i32, i32* @stderr, align 4
  %192 = call i32 @fprintf(i32 %191, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %17)
  %193 = load i32, i32* @DITEM_FAILURE, align 4
  %194 = load i32, i32* @DITEM_RECREATE, align 4
  %195 = or i32 %193, %194
  store i32 %195, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %200

196:                                              ; preds = %177
  br label %197

197:                                              ; preds = %196, %135
  br label %198

198:                                              ; preds = %197, %30
  %199 = load i32, i32* @DITEM_LEAVE_MENU, align 4
  store i32 %199, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %200

200:                                              ; preds = %198, %182, %166, %145, %119, %89, %63, %42
  %201 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %201)
  %202 = load i32, i32* %2, align 4
  ret i32 %202
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @lstat(i8*, %struct.stat*) #2

declare dso_local i64 @S_ISLNK(i32) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i8* @strerror(i64) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i64 @unlink(i8*) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @write(i32, i8*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i64 @access(i8*, i32) #2

declare dso_local i64 @symlink(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
