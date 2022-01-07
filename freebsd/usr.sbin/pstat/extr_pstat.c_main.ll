; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pstat/extr_pstat.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pstat/extr_pstat.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i8*, i64 }

@_POSIX2_LINE_MAX = common dso_local global i32 0, align 4
@swapflag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"swapinfo\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ghkmM:N:\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"swapinfo [-ghkm] [-M core [-N system]]\00", align 1
@usagestr = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"TM:N:fghkmnst\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"pstat [-Tfghkmnst] [-M core [-N system]]\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"BLOCKSIZE\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"1G\00", align 1
@humanflag = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"1K\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"1M\00", align 1
@optarg = common dso_local global i8* null, align 8
@memf = common dso_local global i32* null, align 8
@nlistf = common dso_local global i8* null, align 8
@usenumflag = common dso_local global i32 0, align 4
@totalflag = common dso_local global i32 0, align 4
@NNAMES = common dso_local global i32 0, align 4
@namelist = common dso_local global %struct.TYPE_5__* null, align 8
@nl = common dso_local global %struct.TYPE_4__* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@kd = common dso_local global i32* null, align 8
@.str.9 = private unnamed_addr constant [18 x i8] c"kvm_openfiles: %s\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"kvm_nlist: %s\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"undefined symbol: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = load i32, i32* @_POSIX2_LINE_MAX, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %12, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %13, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* @swapflag, align 4
  store i32 0, i32* %9, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i8* @strrchr(i8* %21, i8 signext 47)
  store i8* %22, i8** %14, align 8
  %23 = load i8*, i8** %14, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i8*, i8** %14, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %14, align 8
  br label %32

28:                                               ; preds = %2
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %14, align 8
  br label %32

32:                                               ; preds = %28, %25
  %33 = load i8*, i8** %14, align 8
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  store i32 1, i32* @swapflag, align 4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8** @usagestr, align 8
  br label %38

37:                                               ; preds = %32
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %14, align 8
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8** @usagestr, align 8
  br label %38

38:                                               ; preds = %37, %36
  br label %39

39:                                               ; preds = %68, %38
  %40 = load i32, i32* %4, align 4
  %41 = load i8**, i8*** %5, align 8
  %42 = load i8*, i8** %14, align 8
  %43 = call i32 @getopt(i32 %40, i8** %41, i8* %42)
  store i32 %43, i32* %6, align 4
  %44 = icmp ne i32 %43, -1
  br i1 %44, label %45, label %69

45:                                               ; preds = %39
  %46 = load i32, i32* %6, align 4
  switch i32 %46, label %66 [
    i32 102, label %47
    i32 103, label %48
    i32 104, label %50
    i32 107, label %51
    i32 109, label %53
    i32 77, label %55
    i32 78, label %58
    i32 110, label %60
    i32 115, label %61
    i32 84, label %64
    i32 116, label %65
  ]

47:                                               ; preds = %45
  store i32 1, i32* %9, align 4
  br label %68

48:                                               ; preds = %45
  %49 = call i32 @setenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 1)
  br label %68

50:                                               ; preds = %45
  store i32 1, i32* @humanflag, align 4
  br label %68

51:                                               ; preds = %45
  %52 = call i32 @setenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 1)
  br label %68

53:                                               ; preds = %45
  %54 = call i32 @setenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 1)
  br label %68

55:                                               ; preds = %45
  %56 = load i8*, i8** @optarg, align 8
  %57 = bitcast i8* %56 to i32*
  store i32* %57, i32** @memf, align 8
  br label %68

58:                                               ; preds = %45
  %59 = load i8*, i8** @optarg, align 8
  store i8* %59, i8** @nlistf, align 8
  br label %68

60:                                               ; preds = %45
  store i32 1, i32* @usenumflag, align 4
  br label %68

61:                                               ; preds = %45
  %62 = load i32, i32* @swapflag, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* @swapflag, align 4
  br label %68

64:                                               ; preds = %45
  store i32 1, i32* @totalflag, align 4
  br label %68

65:                                               ; preds = %45
  store i32 1, i32* %10, align 4
  br label %68

66:                                               ; preds = %45
  %67 = call i32 (...) @usage()
  br label %68

68:                                               ; preds = %66, %65, %64, %61, %60, %58, %55, %53, %51, %50, %48, %47
  br label %39

69:                                               ; preds = %39
  store i32 0, i32* %11, align 4
  br label %70

70:                                               ; preds = %91, %69
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @NNAMES, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %74, label %94

74:                                               ; preds = %70
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** @namelist, align 8
  %76 = load i32, i32* %11, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i8* @strdup(i32 %80)
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @nl, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** @namelist, align 8
  %84 = load i32, i32* %11, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i8* %81, i8** %90, align 8
  br label %91

91:                                               ; preds = %74
  %92 = load i32, i32* %11, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %11, align 4
  br label %70

94:                                               ; preds = %70
  %95 = load i32*, i32** @memf, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %157

97:                                               ; preds = %94
  %98 = load i8*, i8** @nlistf, align 8
  %99 = load i32*, i32** @memf, align 8
  %100 = load i32, i32* @O_RDONLY, align 4
  %101 = call i32* @kvm_openfiles(i8* %98, i32* %99, i32* null, i32 %100, i8* %18)
  store i32* %101, i32** @kd, align 8
  %102 = load i32*, i32** @kd, align 8
  %103 = icmp eq i32* %102, null
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = call i32 @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* %18)
  br label %106

106:                                              ; preds = %104, %97
  %107 = load i32*, i32** @kd, align 8
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** @nl, align 8
  %109 = call i32 @kvm_nlist(i32* %107, %struct.TYPE_4__* %108)
  store i32 %109, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %156

111:                                              ; preds = %106
  %112 = load i32, i32* %8, align 4
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load i32*, i32** @kd, align 8
  %116 = call i8* @kvm_geterr(i32* %115)
  %117 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* %116)
  br label %118

118:                                              ; preds = %114, %111
  store i32 0, i32* %7, align 4
  store i32 0, i32* %11, align 4
  br label %119

119:                                              ; preds = %147, %118
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** @nl, align 8
  %121 = load i32, i32* %11, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 0
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %150

130:                                              ; preds = %119
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** @nl, align 8
  %132 = load i32, i32* %11, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %130
  store i32 1, i32* %7, align 4
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** @nl, align 8
  %140 = load i32, i32* %11, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i8* %144)
  br label %146

146:                                              ; preds = %138, %130
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %11, align 4
  %149 = add i32 %148, 1
  store i32 %149, i32* %11, align 4
  br label %119

150:                                              ; preds = %119
  %151 = load i32, i32* %7, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %150
  %154 = call i32 @exit(i32 1) #4
  unreachable

155:                                              ; preds = %150
  br label %156

156:                                              ; preds = %155, %106
  br label %157

157:                                              ; preds = %156, %94
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* %10, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @swapflag, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @totalflag, align 4
  %164 = or i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %157
  %167 = call i32 (...) @usage()
  br label %168

168:                                              ; preds = %166, %157
  %169 = load i32, i32* %9, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %168
  %172 = load i32, i32* @totalflag, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %171, %168
  %175 = call i32 (...) @filemode()
  br label %176

176:                                              ; preds = %174, %171
  %177 = load i32, i32* %10, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %176
  %180 = call i32 (...) @ttymode()
  br label %181

181:                                              ; preds = %179, %176
  %182 = load i32, i32* @swapflag, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %181
  %185 = load i32, i32* @totalflag, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %184, %181
  %188 = call i32 (...) @swapmode()
  br label %189

189:                                              ; preds = %187, %184
  %190 = call i32 @exit(i32 0) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @setenv(i8*, i8*, i32) #2

declare dso_local i32 @usage(...) #2

declare dso_local i8* @strdup(i32) #2

declare dso_local i32* @kvm_openfiles(i8*, i32*, i32*, i32, i8*) #2

declare dso_local i32 @errx(i32, i8*, i8*) #2

declare dso_local i32 @kvm_nlist(i32*, %struct.TYPE_4__*) #2

declare dso_local i8* @kvm_geterr(i32*) #2

declare dso_local i32 @warnx(i8*, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @filemode(...) #2

declare dso_local i32 @ttymode(...) #2

declare dso_local i32 @swapmode(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
