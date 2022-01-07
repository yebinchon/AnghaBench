; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncp.c_ncp_Show.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncp.c_ncp_Show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.ncp }
%struct.ncp = type { i64, %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i8*, i8*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i8** }
%struct.TYPE_7__ = type { i32, i8** }

@.str = private unnamed_addr constant [20 x i8] c"Next queued AF: %s\0A\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"inet6\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"inet\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Sticky routes\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"\0ADefaults:\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"  sendpipe:      \00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%-20ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"unspecified\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"  recvpipe:      \00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"\0A  Urgent ports\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"         TCP:    \00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"\0A         UDP:    \00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"\0A         TOS:    %s\0A\0A\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"no\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncp_Show(%struct.cmdargs* %0) #0 {
  %2 = alloca %struct.cmdargs*, align 8
  %3 = alloca %struct.ncp*, align 8
  %4 = alloca i32, align 4
  store %struct.cmdargs* %0, %struct.cmdargs** %2, align 8
  %5 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %6 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %5, i32 0, i32 1
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store %struct.ncp* %8, %struct.ncp** %3, align 8
  %9 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %10 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.ncp*, %struct.ncp** %3, align 8
  %13 = getelementptr inbounds %struct.ncp, %struct.ncp* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AF_INET6, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %19 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load %struct.ncp*, %struct.ncp** %3, align 8
  %21 = getelementptr inbounds %struct.ncp, %struct.ncp* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %1
  %25 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %26 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %29 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %30 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ncp*, %struct.ncp** %3, align 8
  %33 = getelementptr inbounds %struct.ncp, %struct.ncp* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @route_ShowSticky(i32 %31, i64 %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 1)
  br label %36

36:                                               ; preds = %24, %1
  %37 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %38 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %41 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %42 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %45 = load %struct.ncp*, %struct.ncp** %3, align 8
  %46 = getelementptr inbounds %struct.ncp, %struct.ncp* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ugt i8* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %36
  %51 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %52 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.ncp*, %struct.ncp** %3, align 8
  %55 = getelementptr inbounds %struct.ncp, %struct.ncp* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %57)
  br label %64

59:                                               ; preds = %36
  %60 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %61 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %62, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  br label %64

64:                                               ; preds = %59, %50
  %65 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %66 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %67, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %69 = load %struct.ncp*, %struct.ncp** %3, align 8
  %70 = getelementptr inbounds %struct.ncp, %struct.ncp* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ugt i8* %72, null
  br i1 %73, label %74, label %83

74:                                               ; preds = %64
  %75 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %76 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.ncp*, %struct.ncp** %3, align 8
  %79 = getelementptr inbounds %struct.ncp, %struct.ncp* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* %81)
  br label %88

83:                                               ; preds = %64
  %84 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %85 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %86, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  br label %88

88:                                               ; preds = %83, %74
  %89 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %90 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %91, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %93 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %94 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %95, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  %97 = load %struct.ncp*, %struct.ncp** %3, align 8
  %98 = getelementptr inbounds %struct.ncp, %struct.ncp* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %88
  %105 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %106 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  br label %146

109:                                              ; preds = %88
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %142, %109
  %111 = load i32, i32* %4, align 4
  %112 = load %struct.ncp*, %struct.ncp** %3, align 8
  %113 = getelementptr inbounds %struct.ncp, %struct.ncp* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp ult i32 %111, %117
  br i1 %118, label %119, label %145

119:                                              ; preds = %110
  %120 = load i32, i32* %4, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %124 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  br label %127

127:                                              ; preds = %122, %119
  %128 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %129 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.ncp*, %struct.ncp** %3, align 8
  %132 = getelementptr inbounds %struct.ncp, %struct.ncp* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  %136 = load i8**, i8*** %135, align 8
  %137 = load i32, i32* %4, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i8*, i8** %136, i64 %138
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %140)
  br label %142

142:                                              ; preds = %127
  %143 = load i32, i32* %4, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %4, align 4
  br label %110

145:                                              ; preds = %110
  br label %146

146:                                              ; preds = %145, %104
  %147 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %148 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %149, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0))
  %151 = load %struct.ncp*, %struct.ncp** %3, align 8
  %152 = getelementptr inbounds %struct.ncp, %struct.ncp* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %146
  %159 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %160 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %161, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  br label %200

163:                                              ; preds = %146
  store i32 0, i32* %4, align 4
  br label %164

164:                                              ; preds = %196, %163
  %165 = load i32, i32* %4, align 4
  %166 = load %struct.ncp*, %struct.ncp** %3, align 8
  %167 = getelementptr inbounds %struct.ncp, %struct.ncp* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp ult i32 %165, %171
  br i1 %172, label %173, label %199

173:                                              ; preds = %164
  %174 = load i32, i32* %4, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %173
  %177 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %178 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %179, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  br label %181

181:                                              ; preds = %176, %173
  %182 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %183 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.ncp*, %struct.ncp** %3, align 8
  %186 = getelementptr inbounds %struct.ncp, %struct.ncp* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 1
  %190 = load i8**, i8*** %189, align 8
  %191 = load i32, i32* %4, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds i8*, i8** %190, i64 %192
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %184, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %194)
  br label %196

196:                                              ; preds = %181
  %197 = load i32, i32* %4, align 4
  %198 = add i32 %197, 1
  store i32 %198, i32* %4, align 4
  br label %164

199:                                              ; preds = %164
  br label %200

200:                                              ; preds = %199, %158
  %201 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %202 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.ncp*, %struct.ncp** %3, align 8
  %205 = getelementptr inbounds %struct.ncp, %struct.ncp* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  %210 = zext i1 %209 to i64
  %211 = select i1 %209, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0)
  %212 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %203, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), i8* %211)
  ret i32 0
}

declare dso_local i32 @prompt_Printf(i32, i8*, ...) #1

declare dso_local i32 @route_ShowSticky(i32, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
