; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/wall/extr_wall.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/wall/extr_wall.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wallgroup = type { i8*, i32, %struct.wallgroup* }
%struct.iovec = type { i32, i32 }
%struct.utmpx = type { i64, i32, i32 }
%struct.group = type { i32, i8** }
%struct.passwd = type { i64 }

@LC_CTYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"g:n\00", align 1
@nobanner = common dso_local global i32 0, align 4
@grouplist = common dso_local global %struct.wallgroup* null, align 8
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"%s: no such group\00", align 1
@mbuf = common dso_local global i32 0, align 4
@mbufsize = common dso_local global i32 0, align 4
@USER_PROCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.iovec, align 4
  %7 = alloca %struct.utmpx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wallgroup*, align 8
  %11 = alloca %struct.group*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.passwd*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = load i32, i32* @LC_CTYPE, align 4
  %16 = call i32 @setlocale(i32 %15, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %44, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = call i32 @getopt(i32 %18, i8** %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 %20, i32* %8, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %45

22:                                               ; preds = %17
  %23 = load i32, i32* %8, align 4
  switch i32 %23, label %42 [
    i32 110, label %24
    i32 103, label %29
    i32 63, label %41
  ]

24:                                               ; preds = %22
  %25 = call i32 (...) @geteuid()
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 1, i32* @nobanner, align 4
  br label %28

28:                                               ; preds = %27, %24
  br label %44

29:                                               ; preds = %22
  %30 = call i64 @malloc(i32 24)
  %31 = inttoptr i64 %30 to %struct.wallgroup*
  store %struct.wallgroup* %31, %struct.wallgroup** %10, align 8
  %32 = load %struct.wallgroup*, %struct.wallgroup** @grouplist, align 8
  %33 = load %struct.wallgroup*, %struct.wallgroup** %10, align 8
  %34 = getelementptr inbounds %struct.wallgroup, %struct.wallgroup* %33, i32 0, i32 2
  store %struct.wallgroup* %32, %struct.wallgroup** %34, align 8
  %35 = load i8*, i8** @optarg, align 8
  %36 = load %struct.wallgroup*, %struct.wallgroup** %10, align 8
  %37 = getelementptr inbounds %struct.wallgroup, %struct.wallgroup* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load %struct.wallgroup*, %struct.wallgroup** %10, align 8
  %39 = getelementptr inbounds %struct.wallgroup, %struct.wallgroup* %38, i32 0, i32 1
  store i32 -1, i32* %39, align 8
  %40 = load %struct.wallgroup*, %struct.wallgroup** %10, align 8
  store %struct.wallgroup* %40, %struct.wallgroup** @grouplist, align 8
  br label %44

41:                                               ; preds = %22
  br label %42

42:                                               ; preds = %22, %41
  %43 = call i32 (...) @usage()
  br label %44

44:                                               ; preds = %42, %29, %28
  br label %17

45:                                               ; preds = %17
  %46 = load i64, i64* @optind, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = sub nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %4, align 4
  %51 = load i64, i64* @optind, align 8
  %52 = load i8**, i8*** %5, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 %51
  store i8** %53, i8*** %5, align 8
  %54 = load i32, i32* %4, align 4
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %58

56:                                               ; preds = %45
  %57 = call i32 (...) @usage()
  br label %58

58:                                               ; preds = %56, %45
  %59 = load %struct.wallgroup*, %struct.wallgroup** @grouplist, align 8
  store %struct.wallgroup* %59, %struct.wallgroup** %10, align 8
  br label %60

60:                                               ; preds = %82, %58
  %61 = load %struct.wallgroup*, %struct.wallgroup** %10, align 8
  %62 = icmp ne %struct.wallgroup* %61, null
  br i1 %62, label %63, label %86

63:                                               ; preds = %60
  %64 = load %struct.wallgroup*, %struct.wallgroup** %10, align 8
  %65 = getelementptr inbounds %struct.wallgroup, %struct.wallgroup* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call %struct.group* @getgrnam(i8* %66)
  store %struct.group* %67, %struct.group** %11, align 8
  %68 = load %struct.group*, %struct.group** %11, align 8
  %69 = icmp ne %struct.group* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load %struct.group*, %struct.group** %11, align 8
  %72 = getelementptr inbounds %struct.group, %struct.group* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.wallgroup*, %struct.wallgroup** %10, align 8
  %75 = getelementptr inbounds %struct.wallgroup, %struct.wallgroup* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  br label %81

76:                                               ; preds = %63
  %77 = load %struct.wallgroup*, %struct.wallgroup** %10, align 8
  %78 = getelementptr inbounds %struct.wallgroup, %struct.wallgroup* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @warnx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %79)
  br label %81

81:                                               ; preds = %76, %70
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.wallgroup*, %struct.wallgroup** %10, align 8
  %84 = getelementptr inbounds %struct.wallgroup, %struct.wallgroup* %83, i32 0, i32 2
  %85 = load %struct.wallgroup*, %struct.wallgroup** %84, align 8
  store %struct.wallgroup* %85, %struct.wallgroup** %10, align 8
  br label %60

86:                                               ; preds = %60
  %87 = load i8**, i8*** %5, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @makemsg(i8* %88)
  %90 = load i32, i32* @mbuf, align 4
  %91 = getelementptr inbounds %struct.iovec, %struct.iovec* %6, i32 0, i32 1
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* @mbufsize, align 4
  %93 = getelementptr inbounds %struct.iovec, %struct.iovec* %6, i32 0, i32 0
  store i32 %92, i32* %93, align 4
  br label %94

94:                                               ; preds = %198, %187, %121, %110, %103, %86
  %95 = call %struct.utmpx* (...) @getutxent()
  store %struct.utmpx* %95, %struct.utmpx** %7, align 8
  %96 = icmp ne %struct.utmpx* %95, null
  br i1 %96, label %97, label %199

97:                                               ; preds = %94
  %98 = load %struct.utmpx*, %struct.utmpx** %7, align 8
  %99 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @USER_PROCESS, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %94

104:                                              ; preds = %97
  %105 = load %struct.utmpx*, %struct.utmpx** %7, align 8
  %106 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @ttystat(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  br label %94

111:                                              ; preds = %104
  %112 = load %struct.wallgroup*, %struct.wallgroup** @grouplist, align 8
  %113 = icmp ne %struct.wallgroup* %112, null
  br i1 %113, label %114, label %189

114:                                              ; preds = %111
  store i32 0, i32* %9, align 4
  %115 = load %struct.utmpx*, %struct.utmpx** %7, align 8
  %116 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call %struct.passwd* @getpwnam(i32 %117)
  store %struct.passwd* %118, %struct.passwd** %14, align 8
  %119 = load %struct.passwd*, %struct.passwd** %14, align 8
  %120 = icmp ne %struct.passwd* %119, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %114
  br label %94

122:                                              ; preds = %114
  %123 = load %struct.wallgroup*, %struct.wallgroup** @grouplist, align 8
  store %struct.wallgroup* %123, %struct.wallgroup** %10, align 8
  br label %124

124:                                              ; preds = %180, %122
  %125 = load %struct.wallgroup*, %struct.wallgroup** %10, align 8
  %126 = icmp ne %struct.wallgroup* %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load i32, i32* %9, align 4
  %129 = icmp eq i32 %128, 0
  br label %130

130:                                              ; preds = %127, %124
  %131 = phi i1 [ false, %124 ], [ %129, %127 ]
  br i1 %131, label %132, label %184

132:                                              ; preds = %130
  %133 = load %struct.wallgroup*, %struct.wallgroup** %10, align 8
  %134 = getelementptr inbounds %struct.wallgroup, %struct.wallgroup* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = icmp eq i64 %136, -1
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  br label %180

139:                                              ; preds = %132
  %140 = load %struct.wallgroup*, %struct.wallgroup** %10, align 8
  %141 = getelementptr inbounds %struct.wallgroup, %struct.wallgroup* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = load %struct.passwd*, %struct.passwd** %14, align 8
  %145 = getelementptr inbounds %struct.passwd, %struct.passwd* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp eq i64 %143, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %139
  store i32 1, i32* %9, align 4
  br label %179

149:                                              ; preds = %139
  %150 = load %struct.wallgroup*, %struct.wallgroup** %10, align 8
  %151 = getelementptr inbounds %struct.wallgroup, %struct.wallgroup* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = sext i32 %152 to i64
  %154 = call %struct.group* @getgrgid(i64 %153)
  store %struct.group* %154, %struct.group** %11, align 8
  %155 = icmp ne %struct.group* %154, null
  br i1 %155, label %156, label %178

156:                                              ; preds = %149
  %157 = load %struct.group*, %struct.group** %11, align 8
  %158 = getelementptr inbounds %struct.group, %struct.group* %157, i32 0, i32 1
  %159 = load i8**, i8*** %158, align 8
  store i8** %159, i8*** %12, align 8
  br label %160

160:                                              ; preds = %174, %156
  %161 = load i8**, i8*** %12, align 8
  %162 = load i8*, i8** %161, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %177

164:                                              ; preds = %160
  %165 = load i8**, i8*** %12, align 8
  %166 = load i8*, i8** %165, align 8
  %167 = load %struct.utmpx*, %struct.utmpx** %7, align 8
  %168 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = call i64 @strcmp(i8* %166, i32 %169)
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %164
  store i32 1, i32* %9, align 4
  br label %177

173:                                              ; preds = %164
  br label %174

174:                                              ; preds = %173
  %175 = load i8**, i8*** %12, align 8
  %176 = getelementptr inbounds i8*, i8** %175, i32 1
  store i8** %176, i8*** %12, align 8
  br label %160

177:                                              ; preds = %172, %160
  br label %178

178:                                              ; preds = %177, %149
  br label %179

179:                                              ; preds = %178, %148
  br label %180

180:                                              ; preds = %179, %138
  %181 = load %struct.wallgroup*, %struct.wallgroup** %10, align 8
  %182 = getelementptr inbounds %struct.wallgroup, %struct.wallgroup* %181, i32 0, i32 2
  %183 = load %struct.wallgroup*, %struct.wallgroup** %182, align 8
  store %struct.wallgroup* %183, %struct.wallgroup** %10, align 8
  br label %124

184:                                              ; preds = %130
  %185 = load i32, i32* %9, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  br label %94

188:                                              ; preds = %184
  br label %189

189:                                              ; preds = %188, %111
  %190 = load %struct.utmpx*, %struct.utmpx** %7, align 8
  %191 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = call i8* @ttymsg(%struct.iovec* %6, i32 1, i32 %192, i32 300)
  store i8* %193, i8** %13, align 8
  %194 = icmp ne i8* %193, null
  br i1 %194, label %195, label %198

195:                                              ; preds = %189
  %196 = load i8*, i8** %13, align 8
  %197 = call i32 @warnx(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %196)
  br label %198

198:                                              ; preds = %195, %189
  br label %94

199:                                              ; preds = %94
  %200 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @geteuid(...) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local %struct.group* @getgrnam(i8*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @makemsg(i8*) #1

declare dso_local %struct.utmpx* @getutxent(...) #1

declare dso_local i64 @ttystat(i32) #1

declare dso_local %struct.passwd* @getpwnam(i32) #1

declare dso_local %struct.group* @getgrgid(i64) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i8* @ttymsg(%struct.iovec*, i32, i32, i32) #1

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
