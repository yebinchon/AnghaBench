; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/posixshmcontrol/extr_posixshmcontrol.c_list_shm.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/posixshmcontrol/extr_posixshmcontrol.c_list_shm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kinfo_file = type { i64, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.stat = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"hn\00", align 1
@optind = common dso_local global i32 0, align 4
@listmib = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"cannot translate %s\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"cannot get %s length\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"reading %s\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"MODE    \09OWNER\09GROUP\09SIZE\09PATH\0A\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"open %s\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"stat %s\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\09\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%s\09%s\09\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%d\09%d\09\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HN_AUTOSCALE = common dso_local global i32 0, align 4
@HN_NOSPACE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"%jd\09\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @list_shm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_shm(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [8 x i8], align 1
  %9 = alloca [10 x i8], align 1
  %10 = alloca %struct.kinfo_file*, align 8
  %11 = alloca %struct.stat, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [3 x i32], align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %19, align 4
  store i32 1, i32* %20, align 4
  br label %21

21:                                               ; preds = %32, %2
  %22 = load i32, i32* %4, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = call i32 @getopt(i32 %22, i8** %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %12, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load i32, i32* %12, align 4
  switch i32 %27, label %30 [
    i32 104, label %28
    i32 110, label %29
  ]

28:                                               ; preds = %26
  store i32 1, i32* %19, align 4
  br label %32

29:                                               ; preds = %26
  store i32 0, i32* %20, align 4
  br label %32

30:                                               ; preds = %26
  %31 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %186

32:                                               ; preds = %29, %28
  br label %21

33:                                               ; preds = %21
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @optind, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %186

39:                                               ; preds = %33
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  %41 = call i64 @nitems(i32* %40)
  store i64 %41, i64* %18, align 8
  %42 = load i8*, i8** @listmib, align 8
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  %44 = call i32 @sysctlnametomib(i8* %42, i32* %43, i64* %18)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i8*, i8** @listmib, align 8
  %49 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  store i32 1, i32* %3, align 4
  br label %186

50:                                               ; preds = %39
  store i64 0, i64* %17, align 8
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  %52 = load i64, i64* %18, align 8
  %53 = call i32 @sysctl(i32* %51, i64 %52, i8* null, i64* %17, i32* null, i32 0)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i8*, i8** @listmib, align 8
  %58 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  store i32 1, i32* %3, align 4
  br label %186

59:                                               ; preds = %50
  %60 = load i64, i64* %17, align 8
  %61 = mul i64 %60, 4
  %62 = udiv i64 %61, 3
  store i64 %62, i64* %17, align 8
  %63 = load i64, i64* %17, align 8
  %64 = call i8* @malloc(i64 %63)
  store i8* %64, i8** %6, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %186

69:                                               ; preds = %59
  %70 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  %71 = load i64, i64* %18, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 @sysctl(i32* %70, i64 %71, i8* %72, i64* %17, i32* null, i32 0)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i8*, i8** @listmib, align 8
  %78 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %77)
  store i32 1, i32* %16, align 4
  br label %182

79:                                               ; preds = %69
  store i32 0, i32* %16, align 4
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %81 = load i8*, i8** %6, align 8
  store i8* %81, i8** %7, align 8
  br label %82

82:                                               ; preds = %175, %79
  %83 = load i8*, i8** %7, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = load i64, i64* %17, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  %87 = icmp ult i8* %83, %86
  br i1 %87, label %88, label %181

88:                                               ; preds = %82
  %89 = load i8*, i8** %7, align 8
  %90 = bitcast i8* %89 to %struct.kinfo_file*
  store %struct.kinfo_file* %90, %struct.kinfo_file** %10, align 8
  %91 = load %struct.kinfo_file*, %struct.kinfo_file** %10, align 8
  %92 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %181

96:                                               ; preds = %88
  %97 = load %struct.kinfo_file*, %struct.kinfo_file** %10, align 8
  %98 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = load i32, i32* @O_RDONLY, align 4
  %101 = call i32 @shm_open(i8* %99, i32 %100, i32 0)
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %104, label %109

104:                                              ; preds = %96
  %105 = load %struct.kinfo_file*, %struct.kinfo_file** %10, align 8
  %106 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %107)
  store i32 1, i32* %16, align 4
  br label %175

109:                                              ; preds = %96
  %110 = load i32, i32* %14, align 4
  %111 = call i32 @fstat(i32 %110, %struct.stat* %11)
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @close(i32 %112)
  %114 = load i32, i32* %13, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %109
  %117 = load %struct.kinfo_file*, %struct.kinfo_file** %10, align 8
  %118 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %119)
  store i32 1, i32* %16, align 4
  br label %175

121:                                              ; preds = %109
  %122 = load %struct.kinfo_file*, %struct.kinfo_file** %10, align 8
  %123 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %128 = call i32 @shm_decode_mode(i32 %126, i8* %127)
  %129 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %129)
  %131 = load i32, i32* %20, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %121
  %134 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i8* @user_from_uid(i32 %135, i32 0)
  %137 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i8* @group_from_gid(i32 %138, i32 0)
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %136, i8* %139)
  br label %147

141:                                              ; preds = %121
  %142 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %143, i32 %145)
  br label %147

147:                                              ; preds = %141, %133
  %148 = load i32, i32* %19, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %162

150:                                              ; preds = %147
  %151 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %152 = load %struct.kinfo_file*, %struct.kinfo_file** %10, align 8
  %153 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i32, i32* @HN_AUTOSCALE, align 4
  %158 = load i32, i32* @HN_NOSPACE, align 4
  %159 = call i32 @humanize_number(i8* %151, i32 8, i64 %156, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i32 %157, i32 %158)
  %160 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %160)
  br label %170

162:                                              ; preds = %147
  %163 = load %struct.kinfo_file*, %struct.kinfo_file** %10, align 8
  %164 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = inttoptr i64 %167 to i8*
  %169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* %168)
  br label %170

170:                                              ; preds = %162, %150
  %171 = load %struct.kinfo_file*, %struct.kinfo_file** %10, align 8
  %172 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %171, i32 0, i32 1
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* %173)
  br label %175

175:                                              ; preds = %170, %116, %104
  %176 = load %struct.kinfo_file*, %struct.kinfo_file** %10, align 8
  %177 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i8*, i8** %7, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 %178
  store i8* %180, i8** %7, align 8
  br label %82

181:                                              ; preds = %95, %82
  br label %182

182:                                              ; preds = %181, %76
  %183 = load i8*, i8** %6, align 8
  %184 = call i32 @free(i8* %183)
  %185 = load i32, i32* %16, align 4
  store i32 %185, i32* %3, align 4
  br label %186

186:                                              ; preds = %182, %67, %56, %47, %37, %30
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @nitems(i32*) #1

declare dso_local i32 @sysctlnametomib(i8*, i32*, i64*) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i32 @sysctl(i32*, i64, i8*, i64*, i32*, i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @shm_open(i8*, i32, i32) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @shm_decode_mode(i32, i8*) #1

declare dso_local i8* @user_from_uid(i32, i32) #1

declare dso_local i8* @group_from_gid(i32, i32) #1

declare dso_local i32 @humanize_number(i8*, i32, i64, i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
