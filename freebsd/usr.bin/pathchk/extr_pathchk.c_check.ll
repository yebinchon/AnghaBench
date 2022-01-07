; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/pathchk/extr_pathchk.c_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/pathchk/extr_pathchk.c_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"strdup\00", align 1
@Pflag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"%s: empty pathname\00", align 1
@pflag = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"/-\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"%s: contains a component starting with '-'\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1
@_PC_NAME_MAX = common dso_local global i32 0, align 4
@NAME_MAX = common dso_local global i64 0, align 8
@_POSIX_NAME_MAX = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [39 x i8] c"%s: %s: component too long (limit %ld)\00", align 1
@ENOENT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"%s: %.*s\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"%s: %s: component contains non-portable character\00", align 1
@_PC_PATH_MAX = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i64 0, align 8
@_POSIX_PATH_MAX = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [30 x i8] c"%s: path too long (limit %ld)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i8* @strdup(i8* %13)
  store i8* %14, i8** %12, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %1
  %19 = load i8*, i8** %12, align 8
  store i8* %19, i8** %11, align 8
  %20 = load i64, i64* @Pflag, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load i8*, i8** %11, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  br label %188

30:                                               ; preds = %22, %18
  %31 = load i64, i64* @Pflag, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i64, i64* @pflag, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %33, %30
  %37 = load i8*, i8** %11, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 45
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = load i8*, i8** %11, align 8
  %43 = call i32* @strstr(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %41, %36
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %46)
  br label %188

48:                                               ; preds = %41, %33
  %49 = load i64, i64* @pflag, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %68, label %51

51:                                               ; preds = %48
  store i64 0, i64* @errno, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 47
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)
  %58 = load i32, i32* @_PC_NAME_MAX, align 4
  %59 = call i64 @pathconf(i8* %57, i32 %58)
  store i64 %59, i64* %6, align 8
  %60 = load i64, i64* %6, align 8
  %61 = icmp eq i64 %60, -1
  br i1 %61, label %62, label %67

62:                                               ; preds = %51
  %63 = load i64, i64* @errno, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i64, i64* @NAME_MAX, align 8
  store i64 %66, i64* %6, align 8
  br label %67

67:                                               ; preds = %65, %62, %51
  br label %70

68:                                               ; preds = %48
  %69 = load i64, i64* @_POSIX_NAME_MAX, align 8
  store i64 %69, i64* %6, align 8
  br label %70

70:                                               ; preds = %68, %67
  br label %71

71:                                               ; preds = %151, %70
  %72 = load i8*, i8** %11, align 8
  %73 = call i32 @strspn(i8* %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %74 = load i8*, i8** %11, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %11, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = call i64 @strcspn(i8* %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i64 %78, i64* %5, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = load i64, i64* %5, align 8
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8* %81, i8** %10, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 0
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %9, align 4
  %87 = load i8*, i8** %10, align 8
  store i8 0, i8* %87, align 1
  %88 = load i64, i64* %6, align 8
  %89 = icmp ne i64 %88, -1
  br i1 %89, label %90, label %99

90:                                               ; preds = %71
  %91 = load i64, i64* %5, align 8
  %92 = load i64, i64* %6, align 8
  %93 = icmp sgt i64 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load i8*, i8** %3, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = load i64, i64* %6, align 8
  %98 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* %95, i8* %96, i64 %97)
  br label %188

99:                                               ; preds = %90, %71
  %100 = load i64, i64* @pflag, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %120, label %102

102:                                              ; preds = %99
  %103 = load i8*, i8** %12, align 8
  %104 = call i32 @stat(i8* %103, %struct.stat* %4)
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %106, label %120

106:                                              ; preds = %102
  %107 = load i64, i64* @errno, align 8
  %108 = load i64, i64* @ENOENT, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %106
  %111 = load i8*, i8** %3, align 8
  %112 = load i8*, i8** %12, align 8
  %113 = call i64 @strlen(i8* %112)
  %114 = load i64, i64* %5, align 8
  %115 = sub i64 %113, %114
  %116 = sub i64 %115, 1
  %117 = trunc i64 %116 to i32
  %118 = load i8*, i8** %12, align 8
  %119 = call i32 @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* %111, i32 %117, i8* %118)
  br label %188

120:                                              ; preds = %106, %102, %99
  %121 = load i64, i64* @pflag, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %120
  %124 = load i8*, i8** %11, align 8
  %125 = call i32 @portable(i8* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = load i8*, i8** %3, align 8
  %129 = load i8*, i8** %11, align 8
  %130 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i8* %128, i8* %129)
  br label %188

131:                                              ; preds = %123, %120
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  br label %155

135:                                              ; preds = %131
  %136 = load i64, i64* @pflag, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %151, label %138

138:                                              ; preds = %135
  store i64 0, i64* @errno, align 8
  %139 = load i64, i64* %6, align 8
  store i64 %139, i64* %8, align 8
  %140 = load i8*, i8** %12, align 8
  %141 = load i32, i32* @_PC_NAME_MAX, align 4
  %142 = call i64 @pathconf(i8* %140, i32 %141)
  store i64 %142, i64* %6, align 8
  %143 = load i64, i64* %6, align 8
  %144 = icmp eq i64 %143, -1
  br i1 %144, label %145, label %150

145:                                              ; preds = %138
  %146 = load i64, i64* @errno, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = load i64, i64* %8, align 8
  store i64 %149, i64* %6, align 8
  br label %150

150:                                              ; preds = %148, %145, %138
  br label %151

151:                                              ; preds = %150, %135
  %152 = load i8*, i8** %10, align 8
  store i8 47, i8* %152, align 1
  %153 = load i8*, i8** %10, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 1
  store i8* %154, i8** %11, align 8
  br label %71

155:                                              ; preds = %134
  %156 = load i64, i64* @pflag, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %170, label %158

158:                                              ; preds = %155
  store i64 0, i64* @errno, align 8
  %159 = load i8*, i8** %3, align 8
  %160 = load i32, i32* @_PC_PATH_MAX, align 4
  %161 = call i64 @pathconf(i8* %159, i32 %160)
  store i64 %161, i64* %7, align 8
  %162 = load i64, i64* %7, align 8
  %163 = icmp eq i64 %162, -1
  br i1 %163, label %164, label %169

164:                                              ; preds = %158
  %165 = load i64, i64* @errno, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %164
  %168 = load i64, i64* @PATH_MAX, align 8
  store i64 %168, i64* %7, align 8
  br label %169

169:                                              ; preds = %167, %164, %158
  br label %172

170:                                              ; preds = %155
  %171 = load i64, i64* @_POSIX_PATH_MAX, align 8
  store i64 %171, i64* %7, align 8
  br label %172

172:                                              ; preds = %170, %169
  %173 = load i64, i64* %7, align 8
  %174 = icmp ne i64 %173, -1
  br i1 %174, label %175, label %185

175:                                              ; preds = %172
  %176 = load i8*, i8** %3, align 8
  %177 = call i64 @strlen(i8* %176)
  %178 = load i64, i64* %7, align 8
  %179 = icmp uge i64 %177, %178
  br i1 %179, label %180, label %185

180:                                              ; preds = %175
  %181 = load i8*, i8** %3, align 8
  %182 = load i64, i64* %7, align 8
  %183 = sub nsw i64 %182, 1
  %184 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i8* %181, i64 %183)
  br label %188

185:                                              ; preds = %175, %172
  %186 = load i8*, i8** %12, align 8
  %187 = call i32 @free(i8* %186)
  store i32 0, i32* %2, align 4
  br label %191

188:                                              ; preds = %180, %127, %110, %94, %45, %27
  %189 = load i8*, i8** %12, align 8
  %190 = call i32 @free(i8* %189)
  store i32 1, i32* %2, align 4
  br label %191

191:                                              ; preds = %188, %185
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @warnx(i8*, i8*, ...) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i64 @pathconf(i8*, i32) #1

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @warn(i8*, i8*, i32, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @portable(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
