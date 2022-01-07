; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/fmtree/extr_specspec.c_shownode.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/fmtree/extr_specspec.c_shownode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i64, i64, i32, i32 }
%struct.group = type { i8* }
%struct.passwd = type { i8* }

@.str = private unnamed_addr constant [8 x i8] c"%s%s %s\00", align 1
@F_CKSUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c" cksum=%lu\00", align 1
@F_GID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c" gid=%d\00", align 1
@F_GNAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c" gname=%s\00", align 1
@F_MODE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c" mode=%o\00", align 1
@F_NLINK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c" nlink=%ju\00", align 1
@F_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c" size=%jd\00", align 1
@F_UID = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c" uid=%d\00", align 1
@F_UNAME = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c" uname=%s\00", align 1
@F_MD5 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c" md5digest=%s\00", align 1
@F_SHA1 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c" sha1digest=%s\00", align 1
@F_RMD160 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c" rmd160digest=%s\00", align 1
@F_SHA256 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [17 x i8] c" sha256digest=%s\00", align 1
@F_FLAGS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [10 x i8] c" flags=%s\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i8*)* @shownode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shownode(%struct.TYPE_3__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.group*, align 8
  %8 = alloca %struct.passwd*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 12
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ftype(i32 %15)
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %9, i8* %12, i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @F_CKSUM, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 11
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %22, %3
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @F_GID, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %32, %27
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @F_GNAME, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %37
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call %struct.group* @getgrgid(i32 %45)
  store %struct.group* %46, %struct.group** %7, align 8
  %47 = load %struct.group*, %struct.group** %7, align 8
  %48 = icmp eq %struct.group* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %59

54:                                               ; preds = %42
  %55 = load %struct.group*, %struct.group** %7, align 8
  %56 = getelementptr inbounds %struct.group, %struct.group* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %54, %49
  br label %60

60:                                               ; preds = %59, %37
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @F_MODE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %65, %60
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @F_NLINK, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 10
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %75, %70
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @F_SIZE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 9
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %86, %81
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @F_UID, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %97, %92
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @F_UNAME, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %125

107:                                              ; preds = %102
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = call %struct.passwd* @getpwuid(i32 %110)
  store %struct.passwd* %111, %struct.passwd** %8, align 8
  %112 = load %struct.passwd*, %struct.passwd** %8, align 8
  %113 = icmp eq %struct.passwd* %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %107
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %117)
  br label %124

119:                                              ; preds = %107
  %120 = load %struct.passwd*, %struct.passwd** %8, align 8
  %121 = getelementptr inbounds %struct.passwd, %struct.passwd* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %122)
  br label %124

124:                                              ; preds = %119, %114
  br label %125

125:                                              ; preds = %124, %102
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* @F_MD5, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 4
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %133)
  br label %135

135:                                              ; preds = %130, %125
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* @F_SHA1, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 5
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* %143)
  br label %145

145:                                              ; preds = %140, %135
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* @F_RMD160, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 6
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* %153)
  br label %155

155:                                              ; preds = %150, %145
  %156 = load i32, i32* %5, align 4
  %157 = load i32, i32* @F_SHA256, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %155
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 7
  %163 = load i8*, i8** %162, align 8
  %164 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* %163)
  br label %165

165:                                              ; preds = %160, %155
  %166 = load i32, i32* %5, align 4
  %167 = load i32, i32* @F_FLAGS, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %165
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 8
  %173 = load i32, i32* %172, align 8
  %174 = call i8* @flags_to_string(i32 %173)
  %175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* %174)
  br label %176

176:                                              ; preds = %170, %165
  %177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ftype(i32) #1

declare dso_local %struct.group* @getgrgid(i32) #1

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i8* @flags_to_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
