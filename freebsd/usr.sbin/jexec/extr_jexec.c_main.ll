; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/jexec/extr_jexec.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/jexec/extr_jexec.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"lnu:U:\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@jail_errmsg = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"jail_attach(%d)\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"chdir(): /\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@environ = common dso_local global i8** null, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"/bin:/usr/bin\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"setgid\00", align 1
@LOGIN_SETALL = common dso_local global i32 0, align 4
@LOGIN_SETGROUP = common dso_local global i32 0, align 4
@LOGIN_SETLOGIN = common dso_local global i32 0, align 4
@LOGIN_SETPATH = common dso_local global i32 0, align 4
@LOGIN_SETENV = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"setusercontext\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"USER\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@_PATH_BSHELL = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [10 x i8] c"chdir: %s\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"execvp: %s\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"execlp: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.passwd*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** %7, align 8
  store %struct.passwd* null, %struct.passwd** %13, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i8* null, i8** %14, align 8
  br label %17

17:                                               ; preds = %32, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = call i32 @getopt(i32 %18, i8** %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %8, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load i32, i32* %8, align 4
  switch i32 %23, label %30 [
    i32 108, label %24
    i32 110, label %25
    i32 117, label %26
    i32 85, label %28
  ]

24:                                               ; preds = %22
  store i32 1, i32* %9, align 4
  br label %32

25:                                               ; preds = %22
  br label %32

26:                                               ; preds = %22
  %27 = load i8*, i8** @optarg, align 8
  store i8* %27, i8** %14, align 8
  store i32 1, i32* %10, align 4
  br label %32

28:                                               ; preds = %22
  %29 = load i8*, i8** @optarg, align 8
  store i8* %29, i8** %14, align 8
  store i32 1, i32* %11, align 4
  br label %32

30:                                               ; preds = %22
  %31 = call i32 (...) @usage()
  br label %32

32:                                               ; preds = %30, %28, %26, %25, %24
  br label %17

33:                                               ; preds = %17
  %34 = load i64, i64* @optind, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = sub nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %4, align 4
  %39 = load i64, i64* @optind, align 8
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 %39
  store i8** %41, i8*** %5, align 8
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %42, 1
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = call i32 (...) @usage()
  br label %46

46:                                               ; preds = %44, %33
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = call i32 (...) @usage()
  br label %54

54:                                               ; preds = %52, %49, %46
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60, %54
  %64 = load i8*, i8** %14, align 8
  %65 = call i32 @get_user_info(i8* %64, %struct.passwd** %13, i32** %7)
  br label %66

66:                                               ; preds = %63, %60, %57
  %67 = load i8**, i8*** %5, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @jail_getid(i8* %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i32, i32* @jail_errmsg, align 4
  %75 = call i32 @errx(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %73, %66
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @jail_attach(i32 %77)
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32, i32* %6, align 4
  %82 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %80, %76
  %84 = call i64 @chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %85 = icmp eq i64 %84, -1
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %83
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load i8*, i8** %14, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %187

94:                                               ; preds = %91, %88
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i8*, i8** %14, align 8
  %99 = call i32 @get_user_info(i8* %98, %struct.passwd** %13, i32** %7)
  br label %100

100:                                              ; preds = %97, %94
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %100
  %104 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i8* %104, i8** %16, align 8
  store i8* null, i8** %12, align 8
  store i8** %12, i8*** @environ, align 8
  %105 = call i32 @setenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 1)
  %106 = load i8*, i8** %16, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i8*, i8** %16, align 8
  %110 = call i32 @setenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %109, i32 1)
  br label %111

111:                                              ; preds = %108, %103
  br label %112

112:                                              ; preds = %111, %100
  %113 = load %struct.passwd*, %struct.passwd** %13, align 8
  %114 = getelementptr inbounds %struct.passwd, %struct.passwd* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @setgid(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %120

120:                                              ; preds = %118, %112
  %121 = load i32*, i32** %7, align 8
  %122 = load %struct.passwd*, %struct.passwd** %13, align 8
  %123 = load %struct.passwd*, %struct.passwd** %13, align 8
  %124 = getelementptr inbounds %struct.passwd, %struct.passwd* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = load i8*, i8** %14, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %136

128:                                              ; preds = %120
  %129 = load i32, i32* @LOGIN_SETALL, align 4
  %130 = load i32, i32* @LOGIN_SETGROUP, align 4
  %131 = xor i32 %130, -1
  %132 = and i32 %129, %131
  %133 = load i32, i32* @LOGIN_SETLOGIN, align 4
  %134 = xor i32 %133, -1
  %135 = and i32 %132, %134
  br label %140

136:                                              ; preds = %120
  %137 = load i32, i32* @LOGIN_SETPATH, align 4
  %138 = load i32, i32* @LOGIN_SETENV, align 4
  %139 = or i32 %137, %138
  br label %140

140:                                              ; preds = %136, %128
  %141 = phi i32 [ %135, %128 ], [ %139, %136 ]
  %142 = call i64 @setusercontext(i32* %121, %struct.passwd* %122, i32 %125, i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  br label %146

146:                                              ; preds = %144, %140
  %147 = load i32*, i32** %7, align 8
  %148 = call i32 @login_close(i32* %147)
  %149 = load %struct.passwd*, %struct.passwd** %13, align 8
  %150 = getelementptr inbounds %struct.passwd, %struct.passwd* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @setenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* %151, i32 1)
  %153 = load %struct.passwd*, %struct.passwd** %13, align 8
  %154 = getelementptr inbounds %struct.passwd, %struct.passwd* %153, i32 0, i32 1
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @setenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* %155, i32 1)
  %157 = load %struct.passwd*, %struct.passwd** %13, align 8
  %158 = getelementptr inbounds %struct.passwd, %struct.passwd* %157, i32 0, i32 2
  %159 = load i8*, i8** %158, align 8
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %146
  %164 = load %struct.passwd*, %struct.passwd** %13, align 8
  %165 = getelementptr inbounds %struct.passwd, %struct.passwd* %164, i32 0, i32 2
  %166 = load i8*, i8** %165, align 8
  br label %169

167:                                              ; preds = %146
  %168 = load i8*, i8** @_PATH_BSHELL, align 8
  br label %169

169:                                              ; preds = %167, %163
  %170 = phi i8* [ %166, %163 ], [ %168, %167 ]
  %171 = call i32 @setenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* %170, i32 1)
  %172 = load i32, i32* %9, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %185

174:                                              ; preds = %169
  %175 = load %struct.passwd*, %struct.passwd** %13, align 8
  %176 = getelementptr inbounds %struct.passwd, %struct.passwd* %175, i32 0, i32 1
  %177 = load i8*, i8** %176, align 8
  %178 = call i64 @chdir(i8* %177)
  %179 = icmp slt i64 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %174
  %181 = load %struct.passwd*, %struct.passwd** %13, align 8
  %182 = getelementptr inbounds %struct.passwd, %struct.passwd* %181, i32 0, i32 1
  %183 = load i8*, i8** %182, align 8
  %184 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* %183)
  br label %185

185:                                              ; preds = %180, %174, %169
  %186 = call i32 (...) @endpwent()
  br label %187

187:                                              ; preds = %185, %91
  %188 = load i32, i32* %4, align 4
  %189 = icmp sgt i32 %188, 1
  br i1 %189, label %190, label %204

190:                                              ; preds = %187
  %191 = load i8**, i8*** %5, align 8
  %192 = getelementptr inbounds i8*, i8** %191, i64 1
  %193 = load i8*, i8** %192, align 8
  %194 = load i8**, i8*** %5, align 8
  %195 = getelementptr inbounds i8*, i8** %194, i64 1
  %196 = call i64 @execvp(i8* %193, i8** %195)
  %197 = icmp slt i64 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %190
  %199 = load i8**, i8*** %5, align 8
  %200 = getelementptr inbounds i8*, i8** %199, i64 1
  %201 = load i8*, i8** %200, align 8
  %202 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8* %201)
  br label %203

203:                                              ; preds = %198, %190
  br label %218

204:                                              ; preds = %187
  %205 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  store i8* %205, i8** %15, align 8
  %206 = icmp ne i8* %205, null
  br i1 %206, label %209, label %207

207:                                              ; preds = %204
  %208 = load i8*, i8** @_PATH_BSHELL, align 8
  store i8* %208, i8** %15, align 8
  br label %209

209:                                              ; preds = %207, %204
  %210 = load i8*, i8** %15, align 8
  %211 = load i8*, i8** %15, align 8
  %212 = call i64 @execlp(i8* %210, i8* %211, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32* null)
  %213 = icmp slt i64 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %209
  %215 = load i8*, i8** %15, align 8
  %216 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i8* %215)
  br label %217

217:                                              ; preds = %214, %209
  br label %218

218:                                              ; preds = %217, %203
  %219 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @get_user_info(i8*, %struct.passwd**, i32**) #1

declare dso_local i32 @jail_getid(i8*) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @jail_attach(i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i64 @chdir(i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

declare dso_local i64 @setgid(i32) #1

declare dso_local i64 @setusercontext(i32*, %struct.passwd*, i32, i32) #1

declare dso_local i32 @login_close(i32*) #1

declare dso_local i32 @endpwent(...) #1

declare dso_local i64 @execvp(i8*, i8**) #1

declare dso_local i64 @execlp(i8*, i8*, i8*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
