; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/tzsetup/extr_tzsetup.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/tzsetup/extr_tzsetup.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"kern.vm_guest\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"C:nrs\00", align 1
@optarg = common dso_local global i8* null, align 8
@chrootenv = common dso_local global i8* null, align 8
@reallydoit = common dso_local global i64 0, align 8
@reinstall = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@path_zonetab = common dso_local global i32 0, align 4
@_PATH_ZONETAB = common dso_local global i8* null, align 8
@path_iso3166 = common dso_local global i32 0, align 4
@_PATH_ISO3166 = common dso_local global i8* null, align 8
@path_zoneinfo = common dso_local global i32 0, align 4
@_PATH_ZONEINFO = common dso_local global i8* null, align 8
@path_localtime = common dso_local global i32 0, align 4
@_PATH_LOCALTIME = common dso_local global i8* null, align 8
@path_db = common dso_local global i32 0, align 4
@_PATH_DB = common dso_local global i8* null, align 8
@path_wall_cmos_clock = common dso_local global i32 0, align 4
@_PATH_WALL_CMOS_CLOCK = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@S_IWGRP = common dso_local global i32 0, align 4
@S_IWOTH = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@DITEM_LEAVE_MENU = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"Error reading %s.\0A\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"Unable to determine earlier installed zoneinfo name. Check %s\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Cannot open %s for reading. Does it exist?\00", align 1
@NCONTINENTS = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@continents = common dso_local global i32 0, align 4
@dialog_vars = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@stdin = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@usedialog = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [16 x i8], align 16
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.stat, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = bitcast [16 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 16, i1 false)
  store i64 16, i64* %10, align 8
  store i32 0, i32* %8, align 4
  %16 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %17 = call i64 @sysctlbyname(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %16, i64* %10, i32* null, i32 0)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 1, i32* %8, align 4
  br label %24

24:                                               ; preds = %23, %19, %2
  br label %25

25:                                               ; preds = %39, %24
  %26 = load i32, i32* %4, align 4
  %27 = load i8**, i8*** %5, align 8
  %28 = call i32 @getopt(i32 %26, i8** %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 %28, i32* %6, align 4
  %29 = icmp ne i32 %28, -1
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  switch i32 %31, label %37 [
    i32 67, label %32
    i32 110, label %34
    i32 114, label %35
    i32 115, label %36
  ]

32:                                               ; preds = %30
  %33 = load i8*, i8** @optarg, align 8
  store i8* %33, i8** @chrootenv, align 8
  br label %39

34:                                               ; preds = %30
  store i64 0, i64* @reallydoit, align 8
  br label %39

35:                                               ; preds = %30
  store i32 1, i32* @reinstall, align 4
  br label %39

36:                                               ; preds = %30
  store i32 1, i32* %8, align 4
  br label %39

37:                                               ; preds = %30
  %38 = call i32 (...) @usage()
  br label %39

39:                                               ; preds = %37, %36, %35, %34, %32
  br label %25

40:                                               ; preds = %25
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @optind, align 4
  %43 = sub nsw i32 %41, %42
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = call i32 (...) @usage()
  br label %47

47:                                               ; preds = %45, %40
  %48 = load i8*, i8** @chrootenv, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %69

50:                                               ; preds = %47
  %51 = load i32, i32* @path_zonetab, align 4
  %52 = load i8*, i8** @_PATH_ZONETAB, align 8
  %53 = call i32 @strcpy(i32 %51, i8* %52)
  %54 = load i32, i32* @path_iso3166, align 4
  %55 = load i8*, i8** @_PATH_ISO3166, align 8
  %56 = call i32 @strcpy(i32 %54, i8* %55)
  %57 = load i32, i32* @path_zoneinfo, align 4
  %58 = load i8*, i8** @_PATH_ZONEINFO, align 8
  %59 = call i32 @strcpy(i32 %57, i8* %58)
  %60 = load i32, i32* @path_localtime, align 4
  %61 = load i8*, i8** @_PATH_LOCALTIME, align 8
  %62 = call i32 @strcpy(i32 %60, i8* %61)
  %63 = load i32, i32* @path_db, align 4
  %64 = load i8*, i8** @_PATH_DB, align 8
  %65 = call i32 @strcpy(i32 %63, i8* %64)
  %66 = load i32, i32* @path_wall_cmos_clock, align 4
  %67 = load i8*, i8** @_PATH_WALL_CMOS_CLOCK, align 8
  %68 = call i32 @strcpy(i32 %66, i8* %67)
  br label %94

69:                                               ; preds = %47
  %70 = load i32, i32* @path_zonetab, align 4
  %71 = load i8*, i8** @chrootenv, align 8
  %72 = load i8*, i8** @_PATH_ZONETAB, align 8
  %73 = call i32 @sprintf(i32 %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %71, i8* %72)
  %74 = load i32, i32* @path_iso3166, align 4
  %75 = load i8*, i8** @chrootenv, align 8
  %76 = load i8*, i8** @_PATH_ISO3166, align 8
  %77 = call i32 @sprintf(i32 %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %75, i8* %76)
  %78 = load i32, i32* @path_zoneinfo, align 4
  %79 = load i8*, i8** @chrootenv, align 8
  %80 = load i8*, i8** @_PATH_ZONEINFO, align 8
  %81 = call i32 @sprintf(i32 %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %79, i8* %80)
  %82 = load i32, i32* @path_localtime, align 4
  %83 = load i8*, i8** @chrootenv, align 8
  %84 = load i8*, i8** @_PATH_LOCALTIME, align 8
  %85 = call i32 @sprintf(i32 %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %83, i8* %84)
  %86 = load i32, i32* @path_db, align 4
  %87 = load i8*, i8** @chrootenv, align 8
  %88 = load i8*, i8** @_PATH_DB, align 8
  %89 = call i32 @sprintf(i32 %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %87, i8* %88)
  %90 = load i32, i32* @path_wall_cmos_clock, align 4
  %91 = load i8*, i8** @chrootenv, align 8
  %92 = load i8*, i8** @_PATH_WALL_CMOS_CLOCK, align 8
  %93 = call i32 @sprintf(i32 %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %91, i8* %92)
  br label %94

94:                                               ; preds = %69, %50
  %95 = load i32, i32* @S_IWGRP, align 4
  %96 = load i32, i32* @S_IWOTH, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @umask(i32 %97)
  %99 = load i32, i32* @reinstall, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %142

101:                                              ; preds = %94
  %102 = load i32, i32* @MAXPATHLEN, align 4
  %103 = zext i32 %102 to i64
  %104 = call i8* @llvm.stacksave()
  store i8* %104, i8** %12, align 8
  %105 = alloca i8, i64 %103, align 16
  store i64 %103, i64* %13, align 8
  %106 = load i32, i32* @path_db, align 4
  %107 = call i32* @fopen(i32 %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %107, i32** %11, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %138

109:                                              ; preds = %101
  %110 = trunc i64 %103 to i32
  %111 = load i32*, i32** %11, align 8
  %112 = call i32* @fgets(i8* %105, i32 %110, i32* %111)
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %133

114:                                              ; preds = %109
  %115 = sub i64 %103, 1
  %116 = getelementptr inbounds i8, i8* %105, i64 %115
  store i8 0, i8* %116, align 1
  %117 = call i32 @strlen(i8* %105)
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %114
  %120 = call i32 @strlen(i8* %105)
  %121 = sub nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %105, i64 %122
  store i8 0, i8* %123, align 1
  %124 = call i32 @install_zoneinfo(i8* %105)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @DITEM_LEAVE_MENU, align 4
  %127 = xor i32 %126, -1
  %128 = and i32 %125, %127
  %129 = call i32 @exit(i32 %128) #5
  unreachable

130:                                              ; preds = %114
  %131 = load i32, i32* @path_db, align 4
  %132 = call i32 @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %130, %109
  %134 = load i32*, i32** %11, align 8
  %135 = call i32 @fclose(i32* %134)
  %136 = load i32, i32* @path_db, align 4
  %137 = call i32 @errx(i32 1, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %133, %101
  %139 = load i32, i32* @path_db, align 4
  %140 = call i32 @errx(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %139)
  %141 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %141)
  br label %142

142:                                              ; preds = %138, %94
  %143 = load i32, i32* @optind, align 4
  %144 = load i32, i32* %4, align 4
  %145 = sub nsw i32 %144, 1
  %146 = icmp eq i32 %143, %145
  br i1 %146, label %147, label %168

147:                                              ; preds = %142
  %148 = load i8**, i8*** %5, align 8
  %149 = load i32, i32* @optind, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8*, i8** %148, i64 %150
  %152 = load i8*, i8** %151, align 8
  %153 = call i64 @stat(i8* %152, %struct.stat* %14)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %167

155:                                              ; preds = %147
  %156 = load i8**, i8*** %5, align 8
  %157 = load i32, i32* @optind, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %156, i64 %158
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @install_zoneinfo(i8* %160)
  store i32 %161, i32* %7, align 4
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* @DITEM_LEAVE_MENU, align 4
  %164 = xor i32 %163, -1
  %165 = and i32 %162, %164
  %166 = call i32 @exit(i32 %165) #5
  unreachable

167:                                              ; preds = %147
  br label %168

168:                                              ; preds = %167, %142
  %169 = call i32 (...) @usage()
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @sysctlbyname(i8*, i8*, i64*, i32*, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @usage(...) #2

declare dso_local i32 @strcpy(i32, i8*) #2

declare dso_local i32 @sprintf(i32, i8*, i8*, i8*) #2

declare dso_local i32 @umask(i32) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32* @fopen(i32, i8*) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @install_zoneinfo(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #4

declare dso_local i32 @errx(i32, i8*, i32) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i64 @stat(i8*, %struct.stat*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
